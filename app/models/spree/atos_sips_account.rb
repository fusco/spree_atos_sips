class Spree::AtosSipsAccount < ActiveRecord::Base
  attr_accessible :payment_means,
                  :card_number,
                  :customer_id,
                  :response_code,
                  :avs_response,
                  :transaction_id,
                  :authorisation_id


  has_many :payments, :as => :source


end
