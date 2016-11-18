class Chargeback < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

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
