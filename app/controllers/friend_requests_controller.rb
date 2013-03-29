class FriendRequestsController < ApplicationController
  # GET /friend_requests
  # GET /friend_requests.json
  def index
    @friend_requests = FriendRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @friend_requests }
    end
  end

  # POST /friend_requests
  # POST /friend_requests.json
  def create
    @friend_request = FriendRequest.new(params[:friend_request])

    respond_to do |format|
      if @friend_request.save
        format.html { redirect_to @friend_request, notice: 'Friend request was successfully created.' }
        format.json { render json: @friend_request, status: :created, location: @friend_request }
      else
        format.html { render action: "new" }
        format.json { render json: @friend_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_requests/1
  # DELETE /friend_requests/1.json
  def destroy
    @friend_request = FriendRequest.find(params[:id])
    @friend_request.destroy

    respond_to do |format|
      format.html { redirect_to friend_requests_url }
      format.json { head :no_content }
    end
  end
end