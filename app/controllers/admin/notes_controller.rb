module Admin
  class NotesController < ApplicationController
    def index
      @notes = Note.all
    end

    def new
      @note = Note.new
    end

    def create
      @note = Note.new(note_params)
      if @note.save
        flash[:notice] = '新建成功！'
        redirect_to admin_notes_path
      else
        flash[:notice] = @note.errors.full_messages[0]
        render :new
      end
    end

    private

    def note_params
      params.require(:note).permit(:title, :body)
    end
  end
end