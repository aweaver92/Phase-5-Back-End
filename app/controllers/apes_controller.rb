class ApesController < ApplicationController
  before_action :set_ape, only: [:show, :edit, :update, :destroy]

  # GET /apes
  def index
    @apes = Ape.all
  end

  # GET /apes/1
  def show
  end

  # GET /apes/new
  def new
    @ape = Ape.new
  end

  # GET /apes/1/edit
  def edit
  end

  # POST /apes
  def create
    @ape = Ape.new(ape_params)

    if @ape.save
      redirect_to @ape, notice: 'Ape was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /apes/1
  def update
    if @ape.update(ape_params)
      redirect_to @ape, notice: 'Ape was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /apes/1
  def destroy
    @ape.destroy
    redirect_to apes_url, notice: 'Ape was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ape
      @ape = Ape.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ape_params
      params.require(:ape).permit(:user_id, :color)
    end
end
