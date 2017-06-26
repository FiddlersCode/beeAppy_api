class BeeFactsController < ApplicationController
  before_action :set_bee_fact, only: [:show, :update, :destroy]

  # GET /bee_facts
  def index
    @bee_facts = BeeFact.all
    @bee_fact = @bee_facts.sample

    render json: @bee_fact
  end

  # GET /bee_facts/1
  def show
    render json: @bee_facts
  end

  # POST /bee_facts
  def create
    @bee_facts = BeeFact.new(bee_fact_params)

    if @bee_facts.save
      render json: @bee_facts, status: :created, fact: @bee_facts
    else
      render json: @bee_facts.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bee_facts/1
  def update
    if @bee_facts.update(bee_params)
      render json: @bee_facts
    else
      render json: @bee_facts.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bee_facts/1
  def destroy
    @bee_facts.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bee_fact
      @bee_facts = BeeFact.find(params[:id]).fact
    end

    # Only allow a trusted parameter "white list" through.
    def bee_fact_params
      params.require(:bee_fact).permit(:fact)
    end
end
