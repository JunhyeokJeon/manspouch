class MypouchController < ApplicationController

  def index
    # 현재 사용자의 피부스펙
    @userspec = Userspec.where(user: current_user)
    @userspec = @userspec[0]
  end

  def update
  end

end
