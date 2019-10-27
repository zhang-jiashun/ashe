class ApplicationController < ActionController::Base
  before_action :authenticate_author!

  private

  def authenticate_author!
    if signed_in?
      @author ||= Author.find(session[:author_id])
    else
      redirect_to root_path
    end
  end

  def signed_in?
    session[:author_id].present?
  end
end
