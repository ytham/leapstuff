class CssesController < ApplicationController
  # GET /csses
  # GET /csses.json
  def index
    @csses = Css.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @csses }
    end
  end

  # GET /csses/1
  # GET /csses/1.json
  def show
    @css = Css.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @css }
    end
  end

  # GET /csses/new
  # GET /csses/new.json
  def new
    @css = Css.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @css }
    end
  end

  # GET /csses/1/edit
  def edit
    @css = Css.find(params[:id])
  end

  # POST /csses
  # POST /csses.json
  def create
    @css = Css.new(params[:css])

    respond_to do |format|
      if @css.save
        format.html { redirect_to @css, notice: 'Css was successfully created.' }
        format.json { render json: @css, status: :created, location: @css }
      else
        format.html { render action: "new" }
        format.json { render json: @css.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /csses/1
  # PUT /csses/1.json
  def update
    @css = Css.find(params[:id])

    respond_to do |format|
      if @css.update_attributes(params[:css])
        format.html { redirect_to @css, notice: 'Css was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @css.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csses/1
  # DELETE /csses/1.json
  def destroy
    @css = Css.find(params[:id])
    @css.destroy

    respond_to do |format|
      format.html { redirect_to csses_url }
      format.json { head :no_content }
    end
  end
end
