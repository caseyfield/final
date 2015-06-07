class Item < ActiveRecord::Base
	belongs_to :category
	belongs_to :city
	belongs_to :condition

	validates :name, presence: true
	validates :image, presence: true
	validates :description, presence: true
	validates :price, presence: true, numericality: true
	validates :selling_url, presence: true
	validates :condition_id, presence: true
	validates :city_id, presence: true
	validates :category_id, presence: true
	
end
