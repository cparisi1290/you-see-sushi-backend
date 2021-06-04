class Api::V1::SashimisController < ApplicationController
  before_action :set_sashimi, only: [:show, :update, :destroy]

  # GET /sashimis
  def index
    @sashimis = Sashimi.all

    render json: @sashimis
  end

  # GET /sashimis/1
  def show
    render json: @sashimi
  end

  # POST /sashimis
  def create
    @sashimi = Sashimi.new(sashimi_params)

    if @sashimi.save
      render json: @sashimi, status: :created, location: @sashimi
    else
      render json: @sashimi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sashimis/1
  def update
    if @sashimi.update(sashimi_params)
      render json: @sashimi
    else
      render json: @sashimi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sashimis/1
  def destroy
    @sashimi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sashimi
      @sashimi = Sashimi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sashimi_params
      params.require(:sashimi).permit(:name, :image, :description, :price, :order_id)
    end
end
