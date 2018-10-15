class UserspecsController < ApplicationController
  before_action :set_userspec, only: [:show, :edit, :update, :destroy]

  # GET /userspecs
  # GET /userspecs.json
  def index
    @userspecs = Userspec.all
  end

  # GET /userspecs/1
  # GET /userspecs/1.json
  def show
  end

  # GET /userspecs/new
  def new
    @userspec = Userspec.new
  end

  # GET /userspecs/1/edit
  def edit
  end

  # POST /userspecs
  # POST /userspecs.json
  def create
    @userspec = Userspec.new(userspec_params)

    @userspec.user = current_user
    @userspec.usertype = params[:usertype]
    @userspec.skintype = params[:skintype]
    @userspec.wrinkle = params[:wrinkle]
    @userspec.sebum = params[:sebum]
    @userspec.stain = params[:stain]
    @userspec.bigpore = params[:bigpore]
    @userspec.down = params[:down]
    @userspec.atopy = params[:atopy]
    @userspec.pimple = params[:pimple]
    @userspec.skindry = params[:skindry]
    @userspec.eruption = params[:eruption]
    @userspec.deadcell = params[:deadcell]
    @userspec.freckle = params[:freckle]
    @userspec.dark = params[:dark]
    @userspec.hairpimple = params[:hairpimple]
    @userspec.haircell = params[:haircell]
    @userspec.hairlose = params[:hairlose]
    @userspec.bodypimple = params[:bodypimple]
    @userspec.bodycell = params[:bodycell]
    @userspec.bodydry = params[:bodydry]

    respond_to do |format|
      if @userspec.save
        format.html { redirect_to "/mypouch", notice: 'Userspec was successfully created.' }
        format.json { render :show, status: :created, location: @userspec }
      else
        format.html { render :new }
        format.json { render json: @userspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userspecs/1
  # PATCH/PUT /userspecs/1.json
  def update
    @userspec = Userspec.find(params[:id])
    @userspec.usertype = params[:usertype]
    @userspec.skintype = params[:skintype]
    @userspec.wrinkle = params[:wrinkle]
    @userspec.sebum = params[:sebum]
    @userspec.stain = params[:stain]
    @userspec.bigpore = params[:bigpore]
    @userspec.down = params[:down]
    @userspec.atopy = params[:atopy]
    @userspec.pimple = params[:pimple]
    @userspec.skindry = params[:skindry]
    @userspec.eruption = params[:eruption]
    @userspec.deadcell = params[:deadcell]
    @userspec.freckle = params[:freckle]
    @userspec.dark = params[:dark]
    @userspec.hairpimple = params[:hairpimple]
    @userspec.haircell = params[:haircell]
    @userspec.hairlose = params[:hairlose]
    @userspec.bodypimple = params[:bodypimple]
    @userspec.bodycell = params[:bodycell]
    @userspec.bodydry = params[:bodydry]

    respond_to do |format|
      if @userspec.update(userspec_params)
        format.html { redirect_to "/mypouch", notice: 'Userspec was successfully updated.' }
        format.json { render :show, status: :ok, location: @userspec }
      else
        format.html { render :edit }
        format.json { render json: @userspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userspecs/1
  # DELETE /userspecs/1.json
  def destroy
    @userspec.destroy
    respond_to do |format|
      format.html { redirect_to userspecs_url, notice: 'Userspec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userspec
      @userspec = Userspec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userspec_params
      params.fetch(:userspec, {})
    end
end
