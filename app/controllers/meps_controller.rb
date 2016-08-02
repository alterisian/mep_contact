class MepsController < ApplicationController
  before_action :set_mep, only: [:show, :edit, :update, :destroy]

  # GET /meps
  # GET /meps.json
  def index
    @meps = Mep.all
  end

  # GET /meps/1
  # GET /meps/1.json
  def show
  end

  # GET /meps/new
  def new
    @mep = Mep.new
  end

  # GET /meps/1/edit
  def edit
  end

  # POST /meps
  # POST /meps.json
  def create
    @mep = Mep.new(mep_params)

    respond_to do |format|
      if @mep.save
        format.html { redirect_to @mep, notice: 'Mep was successfully created.' }
        format.json { render :show, status: :created, location: @mep }
      else
        format.html { render :new }
        format.json { render json: @mep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meps/1
  # PATCH/PUT /meps/1.json
  def update
    respond_to do |format|
      if @mep.update(mep_params)
        format.html { redirect_to @mep, notice: 'Mep was successfully updated.' }
        format.json { render :show, status: :ok, location: @mep }
      else
        format.html { render :edit }
        format.json { render json: @mep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meps/1
  # DELETE /meps/1.json
  def destroy
    @mep.destroy
    respond_to do |format|
      format.html { redirect_to meps_url, notice: 'Mep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mep
      @mep = Mep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mep_params
      params.require(:mep).permit(:name, :country, :group, :email)
    end
end
