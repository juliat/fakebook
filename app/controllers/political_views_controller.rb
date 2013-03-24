class PoliticalViewsController < ApplicationController
  # GET /political_views
  # GET /political_views.json
  def index
    @political_views = PoliticalView.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @political_views }
    end
  end

  # GET /political_views/1
  # GET /political_views/1.json
  def show
    @political_view = PoliticalView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @political_view }
    end
  end

  # GET /political_views/new
  # GET /political_views/new.json
  def new
    @political_view = PoliticalView.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @political_view }
    end
  end

  # GET /political_views/1/edit
  def edit
    @political_view = PoliticalView.find(params[:id])
  end

  # POST /political_views
  # POST /political_views.json
  def create
    @political_view = PoliticalView.new(params[:political_view])

    respond_to do |format|
      if @political_view.save
        format.html { redirect_to @political_view, notice: 'Political view was successfully created.' }
        format.json { render json: @political_view, status: :created, location: @political_view }
      else
        format.html { render action: "new" }
        format.json { render json: @political_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /political_views/1
  # PUT /political_views/1.json
  def update
    @political_view = PoliticalView.find(params[:id])

    respond_to do |format|
      if @political_view.update_attributes(params[:political_view])
        format.html { redirect_to @political_view, notice: 'Political view was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @political_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /political_views/1
  # DELETE /political_views/1.json
  def destroy
    @political_view = PoliticalView.find(params[:id])
    @political_view.destroy

    respond_to do |format|
      format.html { redirect_to political_views_url }
      format.json { head :no_content }
    end
  end
end
