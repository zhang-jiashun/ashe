module Admin
  class SessionsController < BaseController
    skip_before_action :authenticate_author!, only: [:new, :create]

    def new
    end

    def create
      author = Author.find_by(email: params[:email])
      if author&.authenticate(params[:password])
        session[:author_id] = author.id
        flash[:success] = 'Successfully logged in !'
        redirect_to admin_notes_url
      else
        flash[:notice] = 'Invalid email or password'
        redirect_to [:admin, :login]
      end
    end

    def destroy
      reset_session
      flash[:notice] = 'Successfully logged out !'
      redirect_to [:admin, :login]
    end
  end
end
