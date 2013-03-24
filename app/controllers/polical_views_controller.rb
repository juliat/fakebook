class PolicalViewsController < ApplicationController
  # GET /polical_views
  # GET /polical_views.json
  def index
    @polical_views = PolicalView.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @polical_views }
    end
  end

  # GET /polical_views/1
  # GET /polical_views/1.json
  def show
    @polical_view = PolicalView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @polical_view }
    end
  end

  # GET /polical_views/new
  # GET /polical_views/new.json
  def new
    @polical_view = PolicalView.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @polical_view }
    end
  end

  # GET /polical_views/1/edit
  def edit
    @polical_view = PolicalView.find(params[:id])
  end

  # POST /polical_views
  # POST /polical_views.json
  def create
    @polical_view = PolicalView.new(params[:polical_view])

    respond_to do |format|
      if @polical_view.save
        format.html { redirect_to @polical_view, notice: 'Polical view was successfully created.' }
        format.json { render json: @polical_view, status: :created, location: @polical_view }
      else
        format.html { render action: "new" }
        format.json { render json: @polical_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /polical_views/1
  # PUT /polical_views/1.json
  def update
    @polical_view = PolicalView.find(params[:id])

    respond_to do |format|
      if @polical_view.update_attributes(params[:polical_view])
        format.html { redirect_to @polical_view, notice: 'Polical view was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @polical_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polical_views/1
  # DELETE /polical_views/1.json
  def destroy
    @polical_view = PolicalView.find(params[:id])
    @polical_view.destroy

    respond_to do |format|
      format.html { redirect_to polical_views_url }
      format.json { head :no_content }
    end
  end
end
