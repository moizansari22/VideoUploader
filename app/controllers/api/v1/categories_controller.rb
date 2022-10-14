class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories.map { |user| user.as_json only: :name }
  end
end
