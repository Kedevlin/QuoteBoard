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
#
#   def show
#   @products = @vendor.products
#   end
#
#   if request.path_info.include?('home')
#     render :home_vendor
#   elsif request.path_info.include?('markets')
#     render :market_vendor
#   else
#     render :show
#   end
# end

end
