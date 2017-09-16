class ContactAddressesController < ApplicationController
  before_action :set_contact_address, only: [:show, :edit, :update, :destroy]
  before_action :set_contact , only: [:new, :create, :edit]

  # GET /contact_addresses
  # GET /contact_addresses.json
  def index
    @contact_addresses = ContactAddress.all
  end

  # GET /contact_addresses/1
  # GET /contact_addresses/1.json
  def show
  end

  # GET /contact_addresses/new
  def new
   @contact_address = @contact.contact_address.new
  end

  # GET /contact_addresses/1/edit
  def edit
    # binding.pry
  end

  # POST /contact_addresses
  # POST /contact_addresses.json
  def create
    @contact_address = ContactAddress.new(contact_address_params)

    respond_to do |format|
      if @contact_address.save
        # binding.pry
        format.html { redirect_to contact_path @contact_address.contact_id, notice: 'Contact address was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_addresses/1
  # PATCH/PUT /contact_addresses/1.json
  def update
    respond_to do |format|
      if @contact_address.update(contact_address_params)
        format.html { redirect_to @contact_address, notice: 'Contact address was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_address }
      else
        format.html { render :edit }
        format.json { render json: @contact_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_addresses/1
  # DELETE /contact_addresses/1.json
  def destroy
    @contact_address.destroy
    respond_to do |format|
      format.html { redirect_to contact_addresses_url, notice: 'Contact address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_contact
      @contact = Contact.find(params[:contact_id])

    end
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_address

      @contact_address = ContactAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_address_params
      params.require(:contact_address).permit(:contact_id, :label, :address)
    end
end
