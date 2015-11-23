class PeopleController < ApplicationController
  before_action :get_people

  def get_people
    @people = Person.all
  end

  def home
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
