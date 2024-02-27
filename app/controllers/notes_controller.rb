class NoteController < ApplicationController
  before_action :set_noteable, only: [:show, :update, :destroy]

  def create
    @note = @noteable.notes.build(note_params)
    if @note.save
      render json: @note, status: :created, notice: "Note created successfully!"
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @note
  end

  def update
    if @note.update(note_params)
      render json: @note, notice: "Note updated successfully!"
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @note.destroy
    head :no_content
  end

  private

  def set_noteable
    @noteable = Coach.find(params[:coach_id])
  end

  def note_params
    params.require(:note).permit(:content)
  end
end
