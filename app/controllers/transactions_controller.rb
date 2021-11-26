class TransactionsController < ApplicationController
  def show
    @art = Art.find(params[:art_id])
    @transaction = Transaction.find(params[:id])
  end

  def new
    @art = Art.find(params[:art_id])
    @transaction = Transaction.new
  end

  def create
    @art = Art.find(params[:art_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.art = @art
    @transaction.user = current_user

    if @transaction.save
      redirect_to art_transaction_path(@art, @transaction)
    else
      render 'art/show'
    end
  end

  private

  def transaction_params
    params.permit(:amount)
  end
end
