class Speciality < ApplicationRecord
    has_many :doctors, through: :doctors_specialities
end
