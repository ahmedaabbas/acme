require_relative "data"

class Basket
  attr_reader :products, :delivery_rules, :offers
  attr_accessor :items

  def initialize(products, delivery_rules, offers = [])
    @products = products
    @delivery_rules = delivery_rules
    @offers = offers
    @items = []
  end

  def add(product_code)
    raise "Unknown product: #{product_code}" unless find_product(product_code)
    items << product_code
  end

  def total
    subtotal = calculate_subtotal
    subtotal = apply_offers(subtotal)
    subtotal += delivery_charge(subtotal)
    (subtotal / 100.0).truncate(2)
  end

  private

  def find_product(code)
    products.find { |p| p[:code] == code }
  end

  def calculate_subtotal
    items.sum { |code| find_product(code)[:price] }
  end

  def apply_offers(subtotal)
    offers.each do |offer|
      case offer[:type]
      when OfferTypes::BUY_ONE_GET_HALF
        subtotal = apply_buy_one_get_half(subtotal, offer[:code]) if items.include?(offer[:code])
      end
    end
    subtotal
  end

  def apply_buy_one_get_half(subtotal, product_code)
    offer = @offers.find { |o| o[:code] == product_code && o[:type] == :buy_one_get_half }
    return subtotal unless offer

    count = items.count(product_code)
    return subtotal if count < 2

    product_price = find_product(product_code)[:price]
    discount = (count / 2) * (product_price / 2.0)
    subtotal - discount
  end

  def delivery_charge(subtotal)
    rule = delivery_rules.find { |r| subtotal < r[:threshold] }
    rule[:cost]
  end
end
