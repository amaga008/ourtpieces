class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end

  def create
    @art = Art.new(art_params)
    @art.user = current_user
    if @art.save
      redirect_to art_path
    else
      render :new
    end
  end

  def new
    @art = Art.new
  end

  def edit
  end

  def update
    if @art.update(art_params)
      redirect_to @art, notice: 'Art listing was successfully updated.'
    else
      render :edit
    end
  end

  def show
    @art = Art.find(params[:id])
  end

  private

  def art_params
    params.require(:arts).permit(:title, :description, :starting_price, :creator, :measurements, :is_for_auction,
                                 :is_for_sale, :category, :auction_end_time, :created_at, :updated_at, :user_id)
  end
end
