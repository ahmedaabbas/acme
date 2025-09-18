require_relative "basket"

# Example baskets from the task

basket = Basket.new(PRODUCTS, DELIVERY_RULES, OFFERS)
basket.add("B01")
basket.add("G01")
puts "Basket: B01, G01 => #{basket.total} (expected 37.85)"

basket = Basket.new(PRODUCTS, DELIVERY_RULES, OFFERS)
basket.add("R01")
basket.add("R01")
puts "Basket: R01, R01 => #{basket.total} (expected 54.37)"

basket = Basket.new(PRODUCTS, DELIVERY_RULES, OFFERS)
basket.add("R01")
basket.add("G01")
puts "Basket: R01, G01 => #{basket.total} (expected 60.85)"

basket = Basket.new(PRODUCTS, DELIVERY_RULES, OFFERS)
basket.add("B01")
basket.add("B01")
basket.add("R01")
basket.add("R01")
basket.add("R01")
puts "Basket: B01, B01, R01, R01, R01 => #{basket.total} (expected 98.27)"
