class QuotesController < ApplicationController






  private

  def quote_params
    params.permit(quote:[:body, :speaker_id, :poster_id])
  end

end
