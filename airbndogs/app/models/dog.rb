class Dog < ApplicationRecord
    has_many :stalls
    has_many :dogsitters, through: :stralls
    belongs_to :city, optional: true
end
