class MypouchController < ApplicationController

  def index
    # 현재 사용자의 피부스펙
    if current_user.userspec != nil
      @userspec = Userspec.where(user: current_user)
      @userspec = @userspec[0]
    end

    @manuals = Manual.all
    @manuals = @manuals[0..4]

  end

  def update
  end

end
