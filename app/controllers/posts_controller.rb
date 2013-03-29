class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    # Check if user is not authenticated
    if current_user.nil?
      redirect_to :controller => 'users', :action => "new"
      return
    end

    # Fetch user's newsfeed
    @posts = Post.all

    # Create an empty post
    @newPost = Post.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @newPost = Post.new(params[:post])
    @newPost.user = current_user
    @newPost.timestamp = Time.now

    # Fetch the user's newsfeed again
    @posts = current_user.newsfeed

    respond_to do |format|
      if @newPost.save
        format.html { redirect_to :controller => 'posts' }
        format.json { render json: @newPost, status: :created, location: @newPost }
      else
        format.html { render action: "index" }
        format.json { render json: @newPost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
