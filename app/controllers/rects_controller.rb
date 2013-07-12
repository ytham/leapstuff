class RectsController < ApplicationController
  # GET /rects
  # GET /rects.json
  def index
    @rects = Rect.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rects }
    end
  end

  # GET /rects/1
  # GET /rects/1.json
  def show
    @rect = Rect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rect }
    end
  end

  # GET /rects/new
  # GET /rects/new.json
  def new
    @rect = Rect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rect }
    end
  end

  # GET /rects/1/edit
  def edit
    @rect = Rect.find(params[:id])
  end

  # POST /rects
  # POST /rects.json
  def create
    @rect = Rect.new(params[:rect])

    respond_to do |format|
      if @rect.save
        format.html { redirect_to @rect, notice: 'Rect was successfully created.' }
        format.json { render json: @rect, status: :created, location: @rect }
      else
        format.html { render action: "new" }
        format.json { render json: @rect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rects/1
  # PUT /rects/1.json
  def update
    @rect = Rect.find(params[:id])

    respond_to do |format|
      if @rect.update_attributes(params[:rect])
        format.html { redirect_to @rect, notice: 'Rect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rects/1
  # DELETE /rects/1.json
  def destroy
    @rect = Rect.find(params[:id])
    @rect.destroy

    respond_to do |format|
      format.html { redirect_to rects_url }
      format.json { head :no_content }
    end
  end
end
