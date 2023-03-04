# frozen_string_literal: true

module Customer::CartItemsHelper
  def total_quantity(cart_items)
    cart_items.sum(:quantity)
  end
end
