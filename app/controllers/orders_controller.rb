class OrdersController < ApplicationController
  before_action :set_order, only: :show
  def create
    order = Order.new(order_params)
    if order.save
      render json: @order, status: :created
    else
      render json: order.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @order
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(
        :nome, :numero_telefone, :restaurant_id,
        order_products_attributes: %i[quantidade comentario product_id]
      )
    end
end
