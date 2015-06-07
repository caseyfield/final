class CategoriesController < ApplicationController

skip_before_action :auth, only: [:index, :show]

	def index
		@categories = Category.all 
	end

	def show
		@items = Item.all
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

end