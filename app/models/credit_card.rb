class CreditCard < ApplicationRecord
  # Direct associations

  has_many   :chargebacks

  # Indirect associations

  # Validations

  validates :type, :uniqueness => true

  validates :type, :presence => true

end
