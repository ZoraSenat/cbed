class Chargeback < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :status_id, :presence => true

  validates :user_id, :presence => true

end
