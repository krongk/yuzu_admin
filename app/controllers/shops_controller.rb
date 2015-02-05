class ShopsController < ApplicationController
  before_action :set_shop, only: [:process_update, :show, :edit, :update, :destroy]

  # GET /shops
  # GET /shops.json
  def index
    if params[:q] == 'y'
      @shops = Shop.where(is_processed: 'y').page(params[:page])
    elsif params[:q] == 'n'
      @shops = Shop.where(is_processed: 'n').where('mobile_phone_url is not null').page(params[:page])
    else
      @shops = Shop.page(params[:page])
    end
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
  end

  # GET /shops/new
  def new
    @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
  end

  # POST /shops
  # POST /shops.json
  def create
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop, notice: 'Shop was successfully created.' }
        format.json { render action: '详细', status: :created, location: @shop }
      else
        format.html { render action: 'new' }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        if @shop.mobile_phone =~ /\d{11}/
          @shop.user.mobile_phone = @shop.mobile_phone
          @shop.user.save
        end
        format.html { redirect_to @shop, notice: 'Shop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: '编辑' }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    ActiveRecord::Base.transaction do
      @shop.user.jobs.destroy_all
      @shop.user.products.destroy_all
      @shop.user.photos.destroy_all
      @shop.user.destroy
      @shop.destroy
    end

    respond_to do |format|
      format.html { redirect_to shops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:user_id, :region_id, :city_id, :district, :title, :detail_address, :content, :contact_name, :mobile_phone, :mobile_phone_url, :email, :email_url, :website, :pv, :source, :source_url, :is_processed)
    end
end
