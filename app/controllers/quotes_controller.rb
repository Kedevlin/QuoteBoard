class QuotesController < ApplicationController
  before_action :get_quote

  def get_quote
    @quote = Quote.find(params[:id])
  end

  def show
  end



  private

  def quote_params
    params.permit(quote:[:body, :speaker_id, :poster_id])
  end

end
