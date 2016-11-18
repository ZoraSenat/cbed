class Chargeback < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :date_transacted, :presence => true

  validates :io, :presence => true

  validates :reason_id, :presence => true

  validates :salesperson_id, :presence => true

  validates :status_id, :presence => true

  validates :user_id, :presence => true

end
