class ItemsController < ApplicationController

skip_before_action :auth, only: [:index, :show]
	
	def index
		if params["category_id"] && params["city_id"]
			@cities = City.all
			@items = Item.where(category_id: params["category_id"], city_id: params["city_id"])
		else
			if params["category_id"]
				@cities = City.all
				@items = Item.where(category_id: params["category_id"])
			else
				if params["city_id"]
					@cities = City.all
					@items = Item.where(city_id: params["city_id"])
				else
					@cities = City.all
					@items=Item.all
				end
			end
		end
	end

	def show
		@item = Item.find_by(id: params["id"])
		@condition = Condition.find_by(id: @item.condition_id)
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.create(params["item"])
    		if @item.valid?
      			redirect_to items_url, notice: "Item created!"
    		else
      			render "new"
    		end
	end

	def edit
		@item = Item.find_by(id: params["id"])
	end

	def update
		@item = Item.find_by(id: params["id"])
    	@item.update(params["item"])
   		redirect_to items_url
	end

	def destroy
		@item = Item.find_by(id: params["id"])
    	@item.delete
    	redirect_to items_url
	end

end