class CouponsController < ApplicationController

    def new
        @coupon=Coupon.new
    end
    
    def index
        @coupons=Coupon.all
    end

    def show
       
        @coupon=Coupon.find(params[:id])
    end

    def create
        
        @coupon=Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        # @coupon[:coupon_code] = params[:coupon][:coupon_code]
        # @coupon=Coupon.create(store:params[:coupon][:store])
        # @coupon[:store] = params[:coupon][:store]
        #byebug
        redirect_to coupon_path(@coupon)
    
    end


end
