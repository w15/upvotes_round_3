class UpvotesController < ApplicationController
  def new

  end

  def create
    u = Upvote.new
    u.item_id = params[:item_id]
    u.user_id = params[:user_id]
    u.save

    redirect_to upvote_url(u.id)

    # Could also be written as:
    # redirect_to "upvotes/#{ u.id }"
  end

  def show
    @upvote = Upvote.find(params[:id])
  end
end
