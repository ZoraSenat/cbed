class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :type
      t.text :description

      t.timestamps

    end
  end
end
