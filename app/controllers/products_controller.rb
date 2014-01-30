class ProductsController < ApplicationController

	def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def show
        id = params.require(:id)
        @product = Product.find(id)
        @categories = @product.categories
    end

    def create
        parameters = params.require(:product).permit(:name, :description)
        product = Product.create(parameters)
        redirect_to product
    end

    def edit
        id = params[:id]
        @product = Product.find(id)
    end

	def update
		id = params[:id]
		change = params.require(:product).permit(:name, :price, :description)
		product = Product.find(id)
		product.update(change)
		redirect_to product
	end

	def destroy
		id = params[:id]
		Product.destroy(id)
		redirect_to :products
	end

	def display_products
		@products = Product.all
	end

end
