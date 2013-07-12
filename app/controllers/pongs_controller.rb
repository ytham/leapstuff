class PongsController < ApplicationController
  # GET /pongs
  # GET /pongs.json
  def index
    @pongs = Pong.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pongs }
    end
  end

  # GET /pongs/1
  # GET /pongs/1.json
  def show
    @pong = Pong.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pong }
    end
  end

  # GET /pongs/new
  # GET /pongs/new.json
  def new
    @pong = Pong.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pong }
    end
  end

  # GET /pongs/1/edit
  def edit
    @pong = Pong.find(params[:id])
  end

  # POST /pongs
  # POST /pongs.json
  def create
    @pong = Pong.new(params[:pong])

    respond_to do |format|
      if @pong.save
        format.html { redirect_to @pong, notice: 'Pong was successfully created.' }
        format.json { render json: @pong, status: :created, location: @pong }
      else
        format.html { render action: "new" }
        format.json { render json: @pong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pongs/1
  # PUT /pongs/1.json
  def update
    @pong = Pong.find(params[:id])

    respond_to do |format|
      if @pong.update_attributes(params[:pong])
        format.html { redirect_to @pong, notice: 'Pong was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pongs/1
  # DELETE /pongs/1.json
  def destroy
    @pong = Pong.find(params[:id])
    @pong.destroy

    respond_to do |format|
      format.html { redirect_to pongs_url }
      format.json { head :no_content }
    end
  end
end
