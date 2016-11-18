class Chargeback < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :account_name, :presence => true

  validates :amount, :presence => true

  validates :case_number, :presence => true

  validates :contact_name, :presence => true

  validates :credit_card_id, :presence => true

  validates :date_due, :presence => true

  validates :date_received, :presence => true

  validates :date_transacted, :presence => true

  validates :io, :presence => true

  validates :reason_id, :presence => true

  validates :salesperson_id, :presence => true

  validates :status_id, :presence => true

  validates :user_id, :presence => true

end
