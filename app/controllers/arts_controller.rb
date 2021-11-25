class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end

  def create
    @art = Art.new(art_params)
    @art.user = current_user
    if @art.save
      redirect_to arts_path
    else
      render :new
    end
  end

  def new
    @art = Art.new
  end

  def edit
    @art = Art.find(params[:id])
  end

  def update
    @art = Art.find(params[:id])
    @art.update(art_params)

    redirect_to art_path(@art)
  end

  def show
    @art = Art.find(params[:id])
  end

  private

  def art_params
    params.require(:art).permit(:title, :description, :starting_price, :measurements, :category)
  end
end
