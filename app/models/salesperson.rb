class Salesperson < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :last_name, :uniqueness => { :scope => [:first_name] }

  validates :last_name, :presence => true

  validates :sugar_user_id, :uniqueness => true

end
