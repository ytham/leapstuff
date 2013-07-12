class D3sController < ApplicationController
  # GET /d3s
  # GET /d3s.json
  def index
    @d3s = D3.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @d3s }
    end
  end

  # GET /d3s/1
  # GET /d3s/1.json
  def show
    @d3 = D3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @d3 }
    end
  end

  # GET /d3s/new
  # GET /d3s/new.json
  def new
    @d3 = D3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @d3 }
    end
  end

  # GET /d3s/1/edit
  def edit
    @d3 = D3.find(params[:id])
  end

  # POST /d3s
  # POST /d3s.json
  def create
    @d3 = D3.new(params[:d3])

    respond_to do |format|
      if @d3.save
        format.html { redirect_to @d3, notice: 'D3 was successfully created.' }
        format.json { render json: @d3, status: :created, location: @d3 }
      else
        format.html { render action: "new" }
        format.json { render json: @d3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /d3s/1
  # PUT /d3s/1.json
  def update
    @d3 = D3.find(params[:id])

    respond_to do |format|
      if @d3.update_attributes(params[:d3])
        format.html { redirect_to @d3, notice: 'D3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @d3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d3s/1
  # DELETE /d3s/1.json
  def destroy
    @d3 = D3.find(params[:id])
    @d3.destroy

    respond_to do |format|
      format.html { redirect_to d3s_url }
      format.json { head :no_content }
    end
  end
end
