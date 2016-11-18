class Status < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :status, :uniqueness => true

  validates :status, :presence => true

end
