class BeesController < ApplicationController
  before_action :set_bee, only: [:show, :update, :destroy]

  # GET /bees
  def index
    @bees = Bee.all

    render json: @bees
  end

  # GET /bees/1
  def show
    render json: @bee
  end

  # POST /bees
  def create
    @bee = Bee.new(bee_params)

    if @bee.save
      render json: @bee, status: :created, location: @bee
    else
      render json: @bee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bees/1
  def update
    if @bee.update(bee_params)
      render json: @bee
    else
      render json: @bee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bees/1
  def destroy
    @bee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bee
      @bee = Bee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bee_params
      params.require(:bee).permit(:latitude, :longitude)
    end
end
