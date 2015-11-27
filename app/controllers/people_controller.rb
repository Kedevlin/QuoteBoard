class PeopleController < ApplicationController
  before_action :get_people
  before_action :get_quotes

  def create
    Person.create(person_params[:person])
    redirect_to :controller => 'home', :action => 'index'
  end

  def destroy
    Person.find(params[:id]).destroy
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

  def person_home
    @person = Person.find(params[:id])
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
