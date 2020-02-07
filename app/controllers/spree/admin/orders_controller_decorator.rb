module Spree
  module Admin
    module OrdersControllerDecorator
      def cancel
        begin
          @order.canceled_by(try_spree_current_user)
          flash[:success] = Spree.t(:order_canceled)
        rescue Exception => e
          flash[:error] = e.to_s
        end
        redirect_back fallback_location: spree.edit_admin_order_url(@order)
      end   
    end
  end
end

::Spree::Admin::OrdersController.prepend(Spree::Admin::OrderDecorator)
