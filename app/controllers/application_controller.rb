class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_person, :logged_in?

  def current_person
    @current_person ||= Person.find(session[:person_id]) if session[:person_id]
  end

  def logged_in?
    !current_person.nil?
  end

  def correct_quote_person
    quote = Quote.find(params[:id])
    if quote.poster_id == current_person.id || quote.speaker_id == current_person.id
    else
      flash[:error] = "You do not have permission to access that page."
      redirect_to root_path
    end
  end

  def correct_person
    person = Person.find(params[:id]) || Person.find(params[:person_id])
    if person.id == current_person.id
    else
      flash[:error] = "You do not have permission to access that page."
      redirect_to root_path
    end
  end

  def require_login
    if current_person.nil?
      flash[:error] = "You must be logged in to complete that action."
      redirect_to login_path
    end
  end
end
