class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :update, :destroy]

  def index
    @coaches = Coach.all
    render json: @coaches
  end

  def show
    render json: @coach
  end

  def create
    @coach = Coach.new(coach_params)
    if @coach.save
      render json: @coach, status: :created, notice: "Coach created successfully!"
    else
      render json: @coach.errors, status: :unprocessable_entity
    end
  end

  def update
    if @coach.update(coach_params)
      render json: @coach, notice: "Coach updated successfully!"
    else
      render json: @coach.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @coach.destroy
    render json: { message: "Coach deleted successfully!" }, status: :ok
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  def coach_params
    params.require(:coach).permit(:name)
  end
end
