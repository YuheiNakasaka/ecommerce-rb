# frozen_string_literal: true

product = Product.new(
  name: 'T-Shirts',
  description: 'This is a new brand t-shirts in this season.',
  price: 1000,
  stock: 10
)
product.image.attach(io: File.open('db/fixtures/t-shirts.png'), filename: 't-shirts.png')
product.save!
