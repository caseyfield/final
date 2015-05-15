class Zip_code < ActiveRecord::Base
	belongs_to :location
	has_many :users
end
