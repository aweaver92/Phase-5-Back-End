class UserRoundsController < ApplicationController
  before_action :set_user_round, only: [:show, :edit, :update, :destroy]

  # GET /user_rounds
  def index
    @user_rounds = UserRound.all
  end

  # GET /user_rounds/1
  def show
  end

  # GET /user_rounds/new
  def new
    @user_round = UserRound.new
  end

  # GET /user_rounds/1/edit
  def edit
  end

  # POST /user_rounds
  def create
    @user_round = UserRound.new(user_round_params)

    if @user_round.save
      redirect_to @user_round, notice: 'User round was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_rounds/1
  def update
    if @user_round.update(user_round_params)
      redirect_to @user_round, notice: 'User round was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_rounds/1
  def destroy
    @user_round.destroy
    redirect_to user_rounds_url, notice: 'User round was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_round
      @user_round = UserRound.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_round_params
      params.require(:user_round).permit(:user_id, :round_id, :score, :banana_count)
    end
end
