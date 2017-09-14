class Order < ApplicationRecord

	has_many :line_items

	belongs_to :user

	#move line_item
	serialize :order_items, Hash

end
