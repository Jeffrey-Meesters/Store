Rails.configuration.stripe = {
  :publishable_key => ENV['sk_test_I1ouewBuDyj7YpwYxkIkLx1K'],
  :secret_key      => ENV['pk_test_Jm1P1lVhQQIqIt7G5yuPgJQX']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
