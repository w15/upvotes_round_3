class UpvotesController < ApplicationController
  def new
    @upvote = Upvote.new
  end

  def create
    u = Upvote.create(upvote_params)

    redirect_to :back

    # Could also be written as:
    # redirect_to "upvotes/#{ u.id }"
  end

  def show
    @upvote = Upvote.find(params[:id])
  end

  def destroy
    @upvote = Upvote.find(params[:id])
    @upvote.destroy

    redirect_to :back
  end




  def upvote_params
    params.require(:upvote).permit(:item_id, :user_id)
  end

end
