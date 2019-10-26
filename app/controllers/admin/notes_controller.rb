module Admin
  class NotesController < ApplicationController
    before_action :set_note, only: [:show, :edit, :update, :destroy]

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
        redirect_to [:admin, @note], notice: '新建成功！'
      else
        flash[:notice] = @note.errors.full_messages[0]
        render :new
      end
    end

    def edit
    end

    def update
      if @note.update(note_params)
        redirect_to [:admin, @note], notice: '更新成功！'
      else
        render :edit
      end
    end

    def destroy
      @note.destroy
      redirect_to admin_notes_url, notice: '删除成功！'
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