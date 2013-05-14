class Api::ContactInfosController < ApplicationController

  respond_to :xml, :json, :html

  # GET /contact_infos
  # GET /contact_infos.json
  def index
    @contact_infos = ContactInfo.all

    respond_to do |format|
      format.json { render json: @contact_infos }
    end
  end

  # GET /contact_infos/1
  # GET /contact_infos/1.json
  def show
    @contact_infos = ContactInfo.find(params[:id])

    respond_to do |format|
      format.json { render json: @contact_infos }
    end
  end

  # GET /contact_infos/new
  # GET /contact_infos/new.json
  def new
    @contact_infos = ContactInfo.new

    respond_to do |format|
      format.json { render json: @contact_infos }
    end
  end

  # GET /contact_infos/1/edit
  def edit
    @contact_infos = ContactInfo.find(params[:id])
  end

  # POST /contact_infos
  # POST /contact_infos.json
  def create
    logger.debug("creating a new contact info")
    @contact_info = ContactInfo.new(params[:contact_info])
    respond_to do |format|
      if @contact_info.save
        #format.html { redirect_to @contact_info, notice: 'ContactInfo was successfully created.' }
        #format.json { render json: @contact_info, status: :created, location: @contact_info }
        format.json { render json: @contact_info, status: :created }
      else
        #format.html { render action: "new" }
        format.json { render json: @contact_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_infos/1
  # PUT /contact_infos/1.json
  def update
    @contact_infos = ContactInfo.find(params[:id])

    respond_to do |format|
      if @contact_infos.update_attributes(params[:contact_infos])
        format.json { head :no_content }
      else
        format.json { render json: @contact_infos.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_infos/1
  # DELETE /contact_infos/1.json
  def destroy
    @contact_infos = ContactInfo.find(params[:id])
    @contact_infos.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
