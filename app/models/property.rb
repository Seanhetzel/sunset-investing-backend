class Property < ApplicationRecord
    has_many :holdings
    has_many :investors, through: :holdings
end
