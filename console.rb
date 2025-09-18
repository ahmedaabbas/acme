require "irb"
require_relative "./basket"
require_relative "./data"
require_relative "./offer_types"

basket = Basket.new(PRODUCTS, DELIVERY_RULES, OFFERS)

puts "Starting Basket console..."
binding.irb
