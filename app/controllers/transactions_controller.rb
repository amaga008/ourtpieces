class TransactionsController < ApplicationController
  def show
  end

  def create
    @art = Art.find(params[:art_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.art = @art
    @transaction.user = current_user

    if @transaction.save
      redirect_to transaction_path(@transaction)
    else
      render 'art/show'
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount)
  end
end
