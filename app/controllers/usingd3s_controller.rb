class Usingd3sController < ApplicationController
  # GET /usingd3s
  # GET /usingd3s.json
  def index
    @usingd3s = Usingd3.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usingd3s }
    end
  end

  # GET /usingd3s/1
  # GET /usingd3s/1.json
  def show
    @usingd3 = Usingd3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usingd3 }
    end
  end

  # GET /usingd3s/new
  # GET /usingd3s/new.json
  def new
    @usingd3 = Usingd3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usingd3 }
    end
  end

  # GET /usingd3s/1/edit
  def edit
    @usingd3 = Usingd3.find(params[:id])
  end

  # POST /usingd3s
  # POST /usingd3s.json
  def create
    @usingd3 = Usingd3.new(params[:usingd3])

    respond_to do |format|
      if @usingd3.save
        format.html { redirect_to @usingd3, notice: 'Usingd3 was successfully created.' }
        format.json { render json: @usingd3, status: :created, location: @usingd3 }
      else
        format.html { render action: "new" }
        format.json { render json: @usingd3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usingd3s/1
  # PUT /usingd3s/1.json
  def update
    @usingd3 = Usingd3.find(params[:id])

    respond_to do |format|
      if @usingd3.update_attributes(params[:usingd3])
        format.html { redirect_to @usingd3, notice: 'Usingd3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usingd3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usingd3s/1
  # DELETE /usingd3s/1.json
  def destroy
    @usingd3 = Usingd3.find(params[:id])
    @usingd3.destroy

    respond_to do |format|
      format.html { redirect_to usingd3s_url }
      format.json { head :no_content }
    end
  end
end
