class Api::BreweriesController < ApplicationController
  # needs index and show... maybe a create if time
  before_action :authenticate_user, except: [:index, :show]

  def index
    @breweries = Brewery.all
    render "index.json.jb"
  end

  def show
    @brewery = Brewery.find_by(id: params[:id])
    render "show.json.jb"
  end

  # ** IF TIME, ADD CREATE FUNCTION **
  # def create
  #   @brewery = Brewery.new(
  #     name: params[:name],
  #     address: params[:address],
  #     phone: params[:phone],
  #     email: params[:email],
  #     website: params[:website],
  #     description: params[:description],
  #     user_id: current_user.id
  #   )
  #   if @brewery.save
  #     render "show.json.jb"
  #   else
  #     render json: {errors: @brewery.errors.full_messages}, status: :bad_request
  #   end
  # end
end
