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
  end

end
