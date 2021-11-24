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
    params.require(:art).permit(:title, :description, :starting_price, :measurements, :category)
  end
end
