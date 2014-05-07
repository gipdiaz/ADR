class PersonaEstablecimientosController < ApplicationController
  # GET /persona_establecimientos
  # GET /persona_establecimientos.json
  def index
    @persona_establecimientos = PersonaEstablecimiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @persona_establecimientos }
    end
  end

  # GET /persona_establecimientos/1
  # GET /persona_establecimientos/1.json
  def show
    @persona_establecimiento = PersonaEstablecimiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @persona_establecimiento }
    end
  end

  # GET /persona_establecimientos/new
  # GET /persona_establecimientos/new.json
  def new
    @persona_establecimiento = PersonaEstablecimiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @persona_establecimiento }
    end
  end

  # GET /persona_establecimientos/1/edit
  def edit
    @persona_establecimiento = PersonaEstablecimiento.find(params[:id])
  end

  # POST /persona_establecimientos
  # POST /persona_establecimientos.json
  def create
    @persona_establecimiento = PersonaEstablecimiento.new(params[:persona_establecimiento])

    respond_to do |format|
      if @persona_establecimiento.save
        format.html { redirect_to @persona_establecimiento, notice: 'Persona establecimiento was successfully created.' }
        format.json { render json: @persona_establecimiento, status: :created, location: @persona_establecimiento }
      else
        format.html { render action: "new" }
        format.json { render json: @persona_establecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /persona_establecimientos/1
  # PUT /persona_establecimientos/1.json
  def update
    @persona_establecimiento = PersonaEstablecimiento.find(params[:id])

    respond_to do |format|
      if @persona_establecimiento.update_attributes(params[:persona_establecimiento])
        format.html { redirect_to @persona_establecimiento, notice: 'Persona establecimiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @persona_establecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persona_establecimientos/1
  # DELETE /persona_establecimientos/1.json
  def destroy
    @persona_establecimiento = PersonaEstablecimiento.find(params[:id])
    @persona_establecimiento.destroy

    respond_to do |format|
      format.html { redirect_to persona_establecimientos_url }
      format.json { head :no_content }
    end
  end
end
