class PeopleController < ApplicationController
  before_action :get_people
  before_action :get_quotes

  def create
    Person.create(person_params[:person])
    redirect_to :controller => 'home', :action => 'index'
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
    @editing = false
  end

  def person_home
    @new_quote = Quote.new
    @person = Person.find(params[:id])
    @faux_logged_in = request.path_info.include?('people')
    render "home/index"
  end

  def select
    redirect_to person_home_path(params[:person][:id])
  end




  private

  def person_params
    params.permit(person:[:name, :bio, :birthday])
  end

end
