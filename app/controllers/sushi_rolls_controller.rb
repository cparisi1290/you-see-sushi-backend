class SushiRollsController < ApplicationController
  before_action :set_sushi_roll, only: [:show, :update, :destroy]

  # GET /sushi_rolls
  def index
    @sushi_rolls = SushiRoll.all

    render json: @sushi_rolls
  end

  # GET /sushi_rolls/1
  def show
    render json: @sushi_roll
  end

  # POST /sushi_rolls
  def create
    @sushi_roll = SushiRoll.new(sushi_roll_params)

    if @sushi_roll.save
      render json: @sushi_roll, status: :created, location: @sushi_roll
    else
      render json: @sushi_roll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sushi_rolls/1
  def update
    if @sushi_roll.update(sushi_roll_params)
      render json: @sushi_roll
    else
      render json: @sushi_roll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sushi_rolls/1
  def destroy
    @sushi_roll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sushi_roll
      @sushi_roll = SushiRoll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sushi_roll_params
      params.require(:sushi_roll).permit(:name, :image, :description, :price, :order_id)
    end
end
