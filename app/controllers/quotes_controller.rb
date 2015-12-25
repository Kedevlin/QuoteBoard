class QuotesController < ApplicationController
  before_action :require_login, only: [:new, :edit, :create, :update, :destroy]
  before_action :correct_quote_person, only: [:edit, :update, :destroy]

  def create
    Quote.create(
    body: quote_params[:quote][:body],
    speaker_id: quote_params[:quote][:speaker_id],
    poster_id: current_person.id)
    redirect_to person_home_path(current_person)
  end

  def destroy
    id = params[:id]
    Quote.destroy(id)
    redirect_to person_detail_path(current_person.id)
  end

  def edit
    @quote = Quote.find(params[:id])
    @person = Person.find(@quote.poster_id)
    @people_options = Person.all.map{|p| [ p.name, p.id ] }
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
    @people_options = Person.all.map{|p| [ p.name, p.id ] }
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    @on_detail = true
    @quote.update(quote_params[:quote])
    redirect_to person_detail_path(current_person.id)
  end


  private

  def quote_params
    params.permit(quote:[:body, :speaker_id, :poster_id])
  end

end
