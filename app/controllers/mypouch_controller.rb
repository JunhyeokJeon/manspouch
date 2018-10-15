class MypouchController < ApplicationController
  def index
    @w = params[:wrinkle]
    @ut = params[:usertype]
  end

  def survey
  end
end
