class Api::ProvidersController < ApplicationController

  respond_to :json, :xml

  # GET api/providers
  # GET api/providers.json
  # GET api/providers.xml
  def index
    @providers = Provider.all

    respond_to do |format|
      format.json {render json: @providers}
      format.xml {render xml: @providers}
    end
  end

  # GET api/providers/1
  # GET api/providers/1.json
  # GET api/providers/1.xml
  def show
    @provider = Provider.find(params[:id])
    respond_to do |format|
      format.json {render json: @provider}
      format.xml {render xml: @provider}
    end
  end

  #GET api/providers/new
  #GET api/providers/new.json
  #GET api/providers/new.xml
  def new
    @provider = Provider.new
    respond_to do |format|
      format.json {render json: @provider}
      format.xml {render xml: @provider}
    end
  end

  # GET /api/providers/1/edit
  # GET /api/providers/1/edit.json
  # GET /api/providers/1/edit.xml
  def edit
    @provider = Provider.find(params[:id])
  end

  def create
    @provider = Provider.new(params[:provider])

    respond_to do |format|
      if @provider.save
        format.json { render json: @provider, status: :created}
        format.xml { render xml: @provider, status: :created}
      else
        format.json { render json: @provider.errors, status: :unprocessable_entity }
        format.xml { render xml: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @provider = Provider.find(params[:id])

    respond_to do |format|
      if @provider.update_attributes(params[:user])
        format.json { head :no_content }
        format.xml { head :no_content }
      else
        format.json { render json: @provider.errors, status: :unprocessable_entity }
        format.xml { render xml: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @provider = Provider.find(params[:id])
    @provider.destroy

    respond_to do |format|
      format.json { head :no_content }
      format.xml { head :no_content }
    end
  end
end
