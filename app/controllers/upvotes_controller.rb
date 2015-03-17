class UpvotesController < ApplicationController
  def new
    @upvote = Upvote.new
  end

  def create
    @upvote = Upvote.create(upvote_params)

    respond_to do |format|
      format.html {  redirect_to :back  }
      format.js
    end
    # Could also be written as:
    # redirect_to "upvotes/#{ u.id }"
  end

  def show
    @upvote = Upvote.find(params[:id])
  end

  def destroy
    @upvote = Upvote.find(params[:id])
    @user_id = @upvote.user_id
    @item_id = @upvote.item_id
    @upvote.destroy

    respond_to do |format|
      format.html {  redirect_to :back  }
      format.js
    end
  end




  def upvote_params
    params.require(:upvote).permit(:item_id, :user_id)
  end

end
