class Investor < ApplicationRecord
    has_many :holdings
    has_many :properties, through: :holdings
end
