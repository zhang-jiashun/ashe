class NotesController < ApplicationController
  skip_before_action :authenticate_author!

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end
end