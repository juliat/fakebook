class FriendRequestsController < ApplicationController
  # GET /friend_requests
  # GET /friend_requests.json
  def index
    @friend_requests = current_user.friend_requests

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friend_requests }
    end
  end

  # POST /friend_requests
  # POST /friend_requests.json
  def create
    @friend_request = FriendRequest.new()
    @friend_request.to_id = params[:friend_request]['to']
    @friend_request.from = current_user

    respond_to do |format|
      if @friend_request.save
        format.html { redirect_to :back, notice: 'Friend request was successfully created.' }
        format.json { render json: @friend_request, status: :created, location: @friend_request }
      else
        format.html { render action: "new" }
        format.json { render json: @friend_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    @friend_request = FriendRequest.find(params[:id])

    # Create a new friendship
    @friendship = Friendship.new()
    @friendship.user = current_user
    @friendship.friend = @friend_request.from
    @friendship.save

    # Delete friend request
    @friend_request.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  # DELETE /friend_requests/1
  # DELETE /friend_requests/1.json
  def reject
    @friend_request = FriendRequest.find(params[:id])
    @friend_request.destroy

    respond_to do |format|
      format.html { redirect_to friend_requests_url }
      format.json { head :no_content }
    end
  end
end