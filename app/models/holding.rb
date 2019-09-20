class Holding < ApplicationRecord
    belongs_to :investor
    belongs_to :property
end
