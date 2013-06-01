class Api::UnitTypesController < ApplicationController

  respond_to :json, :xml

  # GET api/unit_types
  # GET api/unit_types.json
  # GET api/unit_types.xml
  def index
    @unit_type = UnitType.all

    respond_to do |format|
      format.json { render json: @unit_type }
      format.xml { render xml: @unit_type }
    end
  end

  # GET api/unit_types/1
  # GET api/unit_types/1.json
  # GET api/unit_types/1.xml
  def show
    @unit_type = UnitType.find(params[:id])
    respond_to do |format|
      format.json { render json: @unit_type }
      format.xml { render xml: @unit_type }
    end
  end

  #GET api/unit_types/new
  #GET api/unit_types/new.json
  #GET api/unit_types/new.xml
  def new
    @unit_type = UnitType.new
    respond_to do |format|
      format.json { render json: @unit_type }
      format.xml { render xml: @unit_type }
    end
  end

  # GET /api/unit_types/1/edit
  # GET /api/unit_types/1/edit.json
  # GET /api/unit_types/1/edit.xml
  def edit
    @unit_type = UnitType.find(params[:id])
  end

  def create
    @unit_type = UnitType.new(params[:provider])

    respond_to do |format|
      if @provider.save
        format.json { render json: @unit_type, status: :created }
        format.xml { render xml: @unit_type, status: :created }
      else
        format.json { render json: @unit_type.errors, status: :unprocessable_entity }
        format.xml { render xml: @unit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @unit_type = UnitType.find(params[:id])

    respond_to do |format|
      if @unit_type.update_attributes(params[:user])
        format.json { head :no_content }
        format.xml { head :no_content }
      else
        format.json { render json: @unit_type.errors, status: :unprocessable_entity }
        format.xml { render xml: @unit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @unit_type = UnitType.find(params[:id])
    @unit_type.destroy

    respond_to do |format|
      format.json { head :no_content }
      format.xml { head :no_content }
    end
  end
end
