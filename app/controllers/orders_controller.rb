class OrdersController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:create]

  http_basic_authenticate_with name: "air", password: "12345", only: :index

  def create
    @order = Order.new(params.require(:order).permit!)
    @order.save

    redirect_to '/redirect'
  end

  def index
    @orders = Order.all
  end
end
