class Api::ReviewsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  # needs index, create, update, and destroy
  def index
    @reviews = Review.all
    render "index.json.jb"
  end

  def create
    @review = Review.new(
      # user_id: params[:user_id],
      brewery_id: params[:brewery_id],
      review: params[:review],
      rating: params[:rating],
      user_id: current_user.id
    )
    if @review.save
      render "show.json.jb"
    else
      render json: {errors: @review.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @review = Review.find_by(id: params[:id])
    render "show.json.jbuilder"
  end


  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    render json: {message: "Review successfully deleted!"}
  end
end
