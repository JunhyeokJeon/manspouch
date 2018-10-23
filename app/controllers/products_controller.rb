class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  # before_action :load_and_authorize_resource, only: [:new, :edit]
  before_action :authenticate_user!, only: [:new, :edit]
  load_and_authorize_resource :only => [:new, :edit, :create, :update]
  before_action :rating_avr

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = current_user.products.build
  end

  def edit
  end

  def category
    @p = params[:category]
    @products = Product.where(:category => @p)
  end

  def create
    @product = current_user.products.build(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def rating_avr
    @products = Product.all
    @products.each do |product|
      # 제품의 리뷰 배열(reviews)에 저장
      reviews = product.reviews
      rate_sum = 0

      # 리뷰 총합 구하기
      reviews.each do |review|
        if review.rating == nil
          review.rating = 0
        else
          rate_sum += review.rating
        end
      end

      # 리뷰 평점 계산하기
      if rate_sum != 0
        @rate_avr = rate_sum.to_f / product.reviews.count
      elsif
        @rate_avr = 0
      end

      product.score = @rate_avr.to_f.round(1)
      product.save
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(
        :category, :name, :brand, :price,
        :image, :contents,
        :job, :age,
        :notcare, :basecare, :hardcare, :beautyman, :idol,
        :dry, :normal, :oily, :complex, :sensitive,
        :dryb, :normalb, :oilyb, :complexb, :sensitiveb,
        :wrinkle, :sebum, :stain, :bigpore, :down, :atopy, :pimple, :skindry, :eruption, :deadcell, :freckle, :dark,
        :prul, :score
      )
    end
end
