# frozen_string_literal: true

Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)
Stripe.api_version = '2022-11-15'
