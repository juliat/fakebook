class FriendshipsController < ApplicationController
  # GET /friendships
  # GET /friendships.json
  def index
    # Check if user is not authenticated
    if current_user.nil?
      redirect_to :controller => 'users', :action => "new"
      return
    end
    
    @friendships = current_user.friendships.where(:accepted == true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friendships }
    end
  end

  # POST /friendships
  # POST /friendships.json
  def create
    @friendship = Friendship.new(params[:friendship])

    respond_to do |format|
      if @friendship.save
        format.html { redirect_to @friendship, notice: 'Friendship was successfully created.' }
        format.json { render json: @friendship, status: :created, location: @friendship }
      else
        format.html { render action: "new" }
        format.json { render json: @friendship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /friendships/1
  # PUT /friendships/1.json
  def update
    @friendship = Friendship.find(params[:id])

    respond_to do |format|
      if @friendship.update_attributes(params[:friendship])
        format.html { redirect_to @friendship, notice: 'Friendship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @friendship.errors, status: :unprocessable_entity }
      end
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
