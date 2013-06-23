class AddInformationResponses < ActiveRecord::Migration
  def change
    add_column :spree_atos_sips_accounts, :response_code, :string
    add_column :spree_atos_sips_accounts, :avs_response, :string
    add_column :spree_atos_sips_accounts, :transaction_id, :string
    add_column :spree_atos_sips_accounts, :authorisation_id, :string
  end
end
