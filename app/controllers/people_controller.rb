class PeopleController < ApplicationController
  before_action :get_people
  before_action :get_quotes
  before_action :require_login, only: [:edit, :update, :destroy]
  before_action :correct_person, only: [:edit, :update, :destroy]


  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to :controller => 'home', :action => 'index'
    else
      render :new
    end
  end

  def destroy
    p = Person.find(params[:id])
    p.destroy
    redirect_to home_path
  end

  def get_people
    @people = Person.all
  end

  def get_quotes
    @quotes = Quote.all
  end

  def home_person
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def detail
    @person = Person.find(params[:id])
    @on_detail = true
    @faux_logged_in = true
  end

  def person_home
    @new_quote = Quote.new
    @person = Person.find(params[:id])
    @faux_logged_in = true
  end

  def select
    redirect_to person_home_path(params[:person][:id])
  end

  private

  def person_params
    params.require(:person).permit(:name, :bio, :username, :password, :password_confirmation)
  end
end
