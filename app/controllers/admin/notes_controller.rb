module Admin
  class NotesController < ApplicationController
    def index
      @notes = Note.all
    end
  end
end