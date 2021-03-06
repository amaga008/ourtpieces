class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def create
    @art = Art.find(params[:art_id])
    @bid = Bid.new(bid_params)
    @bid.art = @art
    @bid.user = current_user
    @previous_bid = Bid.where(art_id: @art.id).last # if does not work remove id
    if @previous_bid && @bid.amount <=  @previous_bid.amount
      redirect_to art_path(@art), notice: 'Unfortunately your bid is too low'
    elsif @bid.save
      ArtChannel.broadcast_to(
        @art,
        render_to_string(partial: "bid", locals: {bid: @bid})
      )
      @art.user_id = current_user.id
      @art.save
      redirect_to art_path(@art), notice: 'Your bid has been successfully added'
    else
      render 'arts/show', notice: 'Sorry, your bid is invalid'
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:amount)
  end
end
