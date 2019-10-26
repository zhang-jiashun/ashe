module Admin
  class NotesController < ApplicationController
    before_action :set_note, only: [:show, :edit, :update]

    def index
      @notes = Note.all
    end

    def new
      @note = Note.new
    end

    def show
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

    def edit
    end

    def update
      if @note.update(note_params)
        flash[:notice] = '更新成功！'
        redirect_to [:admin, @note]
      else
        render :edit
      end
    end

    private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :body)
    end
  end
end