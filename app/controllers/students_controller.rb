class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]

  def index
    @students = Student.all
    render json: @students
  end

  def show
    render json: @student.bookings
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student, status: :created, notice: "Student created successfully!"
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def update
    if @student.update(student_params)
      render json: @student, notice: "Student updated successfully!"
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy
    render json: { message: "Student deleted successfully!" }, status: :ok
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :email, :phone_no)
  end
end
