class SlotsController < ApplicationController
  before_action :set_coach

  def index
    @slots = @coach.slots
    render json: @slots
  end

  def create
    if @coach.slots.count >= 5
      render json: { errors: "Cannot create more than 5 slots per coach." }, status: :unprocessable_entity
    else
      @slot = @coach.slots.new(slot_params.merge(status: "UnBooked"))
      if @slot.save
        render json: @slot, status: :created, notice: "Slot created successfully!"
      else
        render json: @slot.errors, status: :unprocessable_entity
      end
    end
  end

  def show
    @slot = @coach.slots.find(params[:id])
    render json: @slot
  end

  def update
    @slot = @coach.slots.find(params[:id])
    if @slot.update(slot_params)
      render json: @slot, notice: "Slot updated successfully!"
    else
      render json: @slot.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @slot = @coach.slots.find(params[:id])
    @slot.destroy
    render json: { message: "Slot deleted successfully!" }, status: :ok
  end

  private

  def set_coach
    @coach = Coach.find(params[:coach_id])
  end

  def slot_params
    params.require(:slot).permit(:start_time, :status)
  end
end
