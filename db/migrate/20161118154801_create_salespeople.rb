class CreateSalespeople < ActiveRecord::Migration
  def change
    create_table :salespeople do |t|
      t.string :first_name
      t.string :last_name
      t.string :sugar_user_id

      t.timestamps

    end
  end
end
