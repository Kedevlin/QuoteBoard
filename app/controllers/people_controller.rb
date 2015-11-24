class PeopleController < ApplicationController
  before_action :get_people

  def create
    Person.create(person_params[:person])
    redirect_to :controller => 'home', :action => 'index'
  end

  def get_people
    @people = Person.all
  end

  def home_person
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def person_home
    @person = Person.find(params[:id])
  end

  def select
    redirect_to person_home_path(params[:person][:id])
  end




  private

  def person_params
    params.permit(person:[:name, :bio, :birthday])
  end

end
