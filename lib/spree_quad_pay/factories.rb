FactoryBot.define do
  factory :quad_pay_checkout, class: Spree::NewBillingIntegration::QuadPayCheckout do
    name 'QuadPayCheckout'
    type 'Spree::NewBillingIntegration::QuadPayCheckout'
    description 'QuadPayCheckout'
    active true
    display_on 'both'
    preferences Hash.new(
      client_id: 'client_id',
      client_secret: 'client_secret',
      server: 'test',
      test_mode: 'true'
    )
  end
end
