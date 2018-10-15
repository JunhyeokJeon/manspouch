class MypouchController < ApplicationController

  def index
  end

  def update
    @user = User.find(params[:id])

    @user.usertype = params[:usertype]
    @user.skintype = params[:skintype]

    @user.wrinkle = params[:wrinkle]
    @user.sebum = params[:sebum]
    @user.stain = params[:stain]
    @user.bigpore = params[:bigpore]
    @user.down = params[:down]
    @user.atopy = params[:atopy]
    @user.pimple = params[:pimple]
    @user.skindry = params[:skindry]
    @user.eruption = params[:eruption]
    @user.deadcell = params[:deadcell]
    @user.freckle = params[:freckle]
    @user.dark = params[:dark]
    @user.save

    # @user.update(params[:id].require(:user).permit(:usertype => params[:usertype]))
  end

  def survey
  end
end
