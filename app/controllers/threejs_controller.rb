class ThreejsController < ApplicationController
  # GET /threejs
  # GET /threejs.json
  def index
    @threejs = Threej.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @threejs }
    end
  end

  # GET /threejs/1
  # GET /threejs/1.json
  def show
    @threej = Threej.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @threej }
    end
  end

  # GET /threejs/new
  # GET /threejs/new.json
  def new
    @threej = Threej.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @threej }
    end
  end

  # GET /threejs/1/edit
  def edit
    @threej = Threej.find(params[:id])
  end

  # POST /threejs
  # POST /threejs.json
  def create
    @threej = Threej.new(params[:threej])

    respond_to do |format|
      if @threej.save
        format.html { redirect_to @threej, notice: 'Threej was successfully created.' }
        format.json { render json: @threej, status: :created, location: @threej }
      else
        format.html { render action: "new" }
        format.json { render json: @threej.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /threejs/1
  # PUT /threejs/1.json
  def update
    @threej = Threej.find(params[:id])

    respond_to do |format|
      if @threej.update_attributes(params[:threej])
        format.html { redirect_to @threej, notice: 'Threej was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @threej.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threejs/1
  # DELETE /threejs/1.json
  def destroy
    @threej = Threej.find(params[:id])
    @threej.destroy

    respond_to do |format|
      format.html { redirect_to threejs_url }
      format.json { head :no_content }
    end
  end
end
