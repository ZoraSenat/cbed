class Reason < ApplicationRecord
  # Direct associations

  has_many   :chargebacks

  # Indirect associations

  # Validations

  validates :reason, :uniqueness => true

  validates :reason, :presence => true

end
