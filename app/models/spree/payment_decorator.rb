module Spree
  module PaymentDecorator
    def self.prepended(base)
        base.has_many :quad_pay_orders
      end
  end
end

::Spree::Payment.prepend(Spree::OrderDecorator)
