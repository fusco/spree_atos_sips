#encoding:utf-8
module Spree
  CheckoutController.class_eval do
    attr_accessor :root_path, :request_path, :response_path, :pathfile_path


    private

      def atos_request
        gateway = Spree::PaymentMethod.where(:type => "Spree::BillingIntegration::Atos::Sips", :active => true).first
        # facebook_app_url = Preference.where(:key => "spree/billing_integration/atos/sips/facebook_application_url/#{gateway.id}").first.value
        base_url = "http://#{Config.site_url}"
        @atos_request = AtosPayment.new(
          :banque => gateway.preferred_banque.to_s
        )
        .request(
          :merchant_id            => gateway.preferred_merchant_id,
          :amount                 => (@order.total.to_f*100).to_i,
          :customer_id            => (spree_current_user ? spree_current_user.id : 0),
          :order_id               => @order.id,
          :automatic_response_url => "#{base_url}/atos/atos_auto_response",
          :normal_return_url      => "#{base_url}/atos/atos_confirm",
          :cancel_return_url      => "#{base_url}/atos/atos_cancel",
          :language               => I18n.locale.to_s[0..1]
          # on facebook
          # :automatic_response_url => "{facebook_app_url}/atos/atos_auto_response",
          # :normal_return_url      => "{facebook_app_url}/atos/atos_confirm",
          # :cancel_return_url      => "{facebook_app_url}/atos/atos_cancel"
        )
      end

      def save_cart
        @order.line_items.each do |line|
          line.save
        end
        @order.save
      end


      def before_payment
        current_order.payments.destroy_all if request.put?
        save_cart
        atos_request
      end
  end
end
