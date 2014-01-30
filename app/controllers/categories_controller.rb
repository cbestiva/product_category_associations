class CategoriesController < ApplicationController

 	def index
        @categories = Category.all
	end

	def new
	    @category = Category.new
	end

	def show
        id = params.require(:id)
        @category = Category.find(id)
        @products = @category.products
	end

	def create
        parameters = params.require(:category).permit(:name)
        category = Category.create(parameters)
        redirect_to category
	end

	def edit
        id = params[:id]
        @category = Category.find(id)
	end

	def update
        id = params[:id]
        change = params.require(:category).permit(:name)
        category = Category.find(id)
        category.update(change)
        redirect_to category
	end

	def destroy
        id = params[:id]
        Category.destroy(id)
        redirect_to :categories
	end


end
