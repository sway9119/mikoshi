class HulusController < ApplicationController
  before_action :set_hulu, only: [:show, :edit, :update, :destroy]

  # GET /hulus
  # GET /hulus.json
  def index
    @hulus = Hulu.all
  end

  # GET /hulus/1
  # GET /hulus/1.json
  def show
  end

  # GET /hulus/new
  def new
    @hulu = Hulu.new
  end

  # GET /hulus/1/edit
  def edit
  end

  # POST /hulus
  # POST /hulus.json
  def create
    @hulu = Hulu.new(hulu_params)

    respond_to do |format|
      if @hulu.save
        format.html { redirect_to @hulu, notice: 'Hulu was successfully created.' }
        format.json { render :show, status: :created, location: @hulu }
      else
        format.html { render :new }
        format.json { render json: @hulu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hulus/1
  # PATCH/PUT /hulus/1.json
  def update
    respond_to do |format|
      if @hulu.update(hulu_params)
        format.html { redirect_to @hulu, notice: 'Hulu was successfully updated.' }
        format.json { render :show, status: :ok, location: @hulu }
      else
        format.html { render :edit }
        format.json { render json: @hulu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hulus/1
  # DELETE /hulus/1.json
  def destroy
    @hulu.destroy
    respond_to do |format|
      format.html { redirect_to hulus_url, notice: 'Hulu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hulu
      @hulu = Hulu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hulu_params
      params.require(:hulu).permit(:index, :show, :new, :create, :edit, :update, :destroy)
    end
end
