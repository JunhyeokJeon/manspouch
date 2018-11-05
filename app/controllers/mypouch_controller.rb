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
      types(@products)

    end

    @manuals = Manual.all
    @manuals = @manuals[0..4]
  end

  def types(products)
    @userspec_s = Userspec.where(user: current_user)
    cutype = ''
    i = 0
    if @userspec_s[i].usertype == '무관심형'
      cutype = 'notcare'
    elsif @userspec_s[i].usertype == '기초케어형'
      cutype = 'basecare'
    elsif @userspec_s[i].usertype == '심화케어형'
      cutype = 'hardcare'
    elsif @userspec_s[i].usertype == '적극적화장형'
      cutype = 'beautyman'
    elsif @userspec_s[i].usertype == '아이돌형'
      cutype = 'idol'
    end

    @products_s = []
    products.each do |product|
      if product[cutype] == true
        @products_s << product
      end
    end

    @products = []
    stype = ''
    if @userspec_s[i].skintype == '건성'
      stype = 'dryb'
    elsif @userspec_s[i].skintype == '일반'
      stype = 'normalb'
    elsif @userspec_s[i].skintype == '지성'
      stype = 'oilyb'
    elsif @userspec_s[i].skintype == '복합성'
      stype = 'complexb'
    elsif @userspec_s[i].skintype == '민감성'
      stype = 'sensitiveb'
    end

    @products_s.each do |product|
      if (product[stype] == true && product[cutype] ==true)
        @products << product
      end
    end

    @products = @products[0..1]
  end

  def update
  end

end
