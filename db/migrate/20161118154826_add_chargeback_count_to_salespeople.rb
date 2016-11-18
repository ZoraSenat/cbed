class AddChargebackCountToSalespeople < ActiveRecord::Migration[5.0]
  def change
    add_column :salespeople, :chargebacks_count, :integer
  end
end
