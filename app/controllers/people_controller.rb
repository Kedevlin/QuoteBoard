class PeopleController < ApplicationController
  before_action :get_people, :get_person

  def home
  end

  def select
    redirect_to person_home_path(params[:person][:id])
  end

  def person_home
    @person = Person.find(params[:id])
  end

  def get_people
    @people = Person.all
  end

  def get_person
    @person = Person.find(params[:id])
  end

  def redirect_to_person
    render :show
  end

  private

  def person_params
    params.permit(person:[:name, :bio, :birthday])
  end

end
