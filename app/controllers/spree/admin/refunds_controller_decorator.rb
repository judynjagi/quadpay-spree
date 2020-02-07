module Spree
  module Admin
    module RefundsControllerDecorator
      def self.prepended(base)
        base.after_action :check_error_flashes, only: :create
      end
      private
        def check_error_flashes
          error_msg = @object.errors.full_messages.join('. ')
          flash[:error] = error_msg if error_msg.present?
        end
    end
  end
end

::Spree::Admin::RefundsController.prepend(Spree::Admin::RefundsControllerDecorator)
