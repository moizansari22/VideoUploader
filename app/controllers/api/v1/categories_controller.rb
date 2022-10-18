class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.pluck(:id, :name)
    render json: @categories
  end
end
