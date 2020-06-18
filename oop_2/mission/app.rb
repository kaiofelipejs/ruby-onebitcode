require_relative 'product'
require_relative 'market'

product = Product.new
product.name = 'Arroz'
product.price = 4.29

market = Market.new(product)
market.buy