class MypouchController < ApplicationController

  def index
    # 현재 사용자의 피부스펙
    if current_user.userspec != nil
      @userspec = Userspec.where(user: current_user)
      @userspec = @userspec[0]
      if @userspec.skintype == '건성'
        key = 'dryb'
      elsif @userspec.skintype == '일반'
        key = 'normalb'
      elsif @userspec.skintype == '지성'
        key = 'oilyb'
      elsif @userspec.skintype == '복합성'
        key = 'complexb'
      elsif @userspec.skintype == '민감성'
        key = 'sensitiveb'
      end

      @products = Product.all
      @products_a = []
      @products.each do |product|
        if product[key] ==  true
          @products_a << product
        end
      end

      @products = @products_a[0..1]
    elsif
      @products = Product.all
      @products = @products[0..1]
    end

    @manuals = Manual.all
    @manuals = @manuals[0..4]
  end

  def update
  end

end
