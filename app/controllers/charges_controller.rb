class ChargesController < ApplicationController
  before_action :set_item

  def new
    @amount = @product.price
  end

  def create

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@product.price * 100).to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to product_show_path(@product)
    rescue
    flash[:error] = "An error occured"
  end

  private
  def set_item
  @product = Product.find(params[:id])
  end

end
