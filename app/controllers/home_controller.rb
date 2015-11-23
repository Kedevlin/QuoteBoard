class HomeController < ApplicationController
  before_action :get_people

  def get_people
    @people = Person.all
  end

  def index
  end

end
