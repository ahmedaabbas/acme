# Adding products, delivery rules and offers data
require_relative "offer_types"

PRODUCTS = [
  { code: "R01", name: "Red Widget",   price: 3295 },
  { code: "G01", name: "Green Widget", price: 2495 },
  { code: "B01", name: "Blue Widget",  price: 795 }
]

DELIVERY_RULES = [
  { threshold: 5000, cost: 495 },   # under $50
  { threshold: 9000, cost: 295 },   # under $90
  { threshold: Float::INFINITY, cost: 0 }
]


OFFERS = [
  { code: "R01", type: ::OfferTypes::BUY_ONE_GET_HALF }
]
