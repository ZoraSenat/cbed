class Reason < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :reason, :uniqueness => true

  validates :reason, :presence => true

end
