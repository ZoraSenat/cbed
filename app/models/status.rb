class Status < ApplicationRecord
  # Direct associations

  has_many   :chargebacks

  # Indirect associations

  # Validations

  validates :status, :uniqueness => true

  validates :status, :presence => true

end
