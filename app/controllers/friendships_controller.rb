class FriendshipsController < ApplicationController
  # GET /friendships
  # GET /friendships.json
  def index
    # Check if user is not authenticated
    if current_user.nil?
      redirect_to :controller => 'users', :action => "new"
      return
    end
    
    @friends = current_user.get_friends

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friends }
    end
  end

  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy

    respond_to do |format|
      format.html { redirect_to friendships_url }
      format.json { head :no_content }
    end
  end
end
