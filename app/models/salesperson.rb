class Salesperson < ApplicationRecord
  # Direct associations

  has_many   :chargebacks

  # Indirect associations

  # Validations

  validates :first_name, :uniqueness => { :scope => [:last_name] }

  validates :first_name, :presence => true

  validates :last_name, :uniqueness => { :scope => [:first_name] }

  validates :last_name, :presence => true

  validates :sugar_user_id, :uniqueness => true

end
