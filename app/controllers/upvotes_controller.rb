class UpvotesController < ApplicationController
  def new
    @upvote = Upvote.new
  end

  def create
    u = Upvote.create(upvote_params)

    redirect_to upvote_url(u.id)

    # Could also be written as:
    # redirect_to "upvotes/#{ u.id }"
  end

  def show
    @upvote = Upvote.find(params[:id])
  end

  def upvote_params
    params.require(:upvote).permit(:item_id, :user_id)
  end

end
