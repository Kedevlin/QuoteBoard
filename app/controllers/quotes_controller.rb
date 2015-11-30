class QuotesController < ApplicationController
  before_action :get_quote

  def create
    Quote.create(
    body: quote_params[:quote][:body],
    speaker_id: quote_params[:quote][:speaker_id],
    poster_id: params[:id])
    redirect_to person_home_path(params[:id])
  end

  def edit
    @person = Person.find(params[:person_id])
    @quote = Quote.find(params[:id])
    @on_detail = true
    render template: "people/detail"
    @editing = true
  end

  def get_quote
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def show
  end



  private

  def quote_params
    params.permit(quote:[:body, :speaker_id, :poster_id])
  end

end
