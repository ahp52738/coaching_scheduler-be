class BookingsController < ApplicationController
  before_action :set_slot, only: [:new, :create]
  before_action :set_booking, only: [:show, :update, :destroy]

  def new
    @booking = @slot.booking.new
    render json: @booking
  end

  def index
    @student_bookings = Student.find(params[:student_id]).bookings
    render json: @student_bookings
  end

  def create
    if @slot.booking
      render json: { message: "Already Booked" }, status: :ok
    else
      @booking = Booking.new(booking_params)
      if @booking.save
        render json: @booking, status: :created, notice: "Booking created successfully!"
        @slot.update(status:"Booked")
        @booking.update_end_time
      else
        render json: @booking.errors, status: :unprocessable_entity
      end
    end
  end

  def show
    render json: @booking
  end

  def update
    if @booking.update(booking_params)
      render json: @booking, notice: "Booking updated successfully!"
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    render json: { message: "Booking deleted successfully!" }, status: :ok
  end

  private

  def set_slot
    @slot = Slot.find(params[:slot_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:student_id, :date_of_booking).merge(slot_id: params[:slot_id])
  end
end
