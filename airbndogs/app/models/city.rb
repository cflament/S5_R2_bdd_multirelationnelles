class City < ApplicationRecord
    has_many :dogs
    has_many  :dogsitters
    belongs_to :strall, optional: true
end
