class CreateChargebacks < ActiveRecord::Migration
  def change
    create_table :chargebacks do |t|
      t.date :date_received
      t.date :date_transacted
      t.string :contact_name
      t.string :account_name
      t.integer :salesperson_id
      t.integer :credit_card_id
      t.integer :amount
      t.integer :io
      t.string :case_number
      t.integer :reason_id
      t.date :date_due
      t.date :date_responded
      t.integer :status_id
      t.text :notes
      t.integer :user_id

      t.timestamps

    end
  end
end
