class Investor < ApplicationRecord
    has_many :holdings
    has_many :properties, through: :holdings
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }

end
