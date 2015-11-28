class HomeController < ApplicationController
  before_action :get_people
  before_action :get_quotes

  def get_people
    @people = Person.all
  end

  def get_quotes
    @quotes = Quote.all
  end

  def index
    @faux_logged_in = request.path_info.include?('people')
  end

end
