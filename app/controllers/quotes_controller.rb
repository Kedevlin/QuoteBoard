class QuotesController < ApplicationController

  def create
    Quote.create(
    body: quote_params[:quote][:body],
    speaker_id: quote_params[:quote][:speaker_id],
    poster_id: params[:id])
    redirect_to person_home_path(params[:id])
  end

  def destroy
    id = params[:id]
    Quote.destroy(id)
    redirect_to person_detail_path(params[:person_id])
  end

  def edit
    @person = Person.find(params[:person_id])
    @quote = Quote.find(params[:id])
    @on_detail = true
  end

  def get_quote
    @quote = Quote.find(params[:id])
  end

  def home_quote
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def update
    @on_detail = true
    @quote.update(quote_params[:quote])
    @person = Person.find(params[:person_id])
    redirect_to person_detail_path(@person.id)
  end


  private

  def quote_params
    params.permit(quote:[:body, :speaker_id, :poster_id])
  end

end
