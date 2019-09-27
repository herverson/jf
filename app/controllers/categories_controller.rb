class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:titulo)
    render json: @categories
  end
end
