# Enum so we can don't have unhandled offer rules
# We can use ruby enum gem instead of doing this but I choose to go with this approach since it is simpler
# and is enough for the purpose of this exercise

module OfferTypes
  BUY_ONE_GET_HALF = :buy_one_get_half

  ALL = [
    BUY_ONE_GET_HALF
  ].freeze
end
