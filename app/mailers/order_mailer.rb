# frozen_string_literal: true

class OrderMailer < ApplicationMailer
  def complete(args)
    email = args[:email]
    @url  = 'http://localhost:3000/orders'
    mail(to: email, subject: 'Your order has been completed')
  end
end
