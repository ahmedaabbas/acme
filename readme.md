📦 Setup

No external gems required. Just Ruby (≥ 3.0 recommended).

▶️ Running the Basket Console

From the project root, start the console with:

ruby console.rb

You’ll see:

Starting Basket console...
irb(main):001:0>

Inside this session, a basket object is already available.

🛠 Interacting with the Basket
Add items
basket.add("B01")
basket.add("R01")

Check current total
basket.total

# => 37.85 (example output)

Inspect basket items
basket.items

# => ["B01", "R01"]

📂 Directory Layout
.
├── basket.rb # Basket class (main logic)
├── data.rb # Product list + delivery rules + available offers
├── offer_types.rb # Offer types/constants
├── console.rb # Starts an interactive IRB session with `basket` initialized
└── README.md

basket.rb → main checkout logic

data.rb → product definitions, delivery charges, offers

offer_types.rb → supported offer types

console.rb → quick way to experiment in IRB with a preloaded basket

## Assumptions

1. when displaying total price, it should be truncated to 2 decimal places
