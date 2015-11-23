class WelcomeController < ApplicationController
  before_action :get_quotes

  def get_quotes
    @quotes = Quote.all
  end

  def index
    @random_quote = @quotes[rand(@quotes.count)].body
  end
end
