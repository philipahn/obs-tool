class Metro < ApplicationRecord
  has_many :instructors, dependent: :destroy
end
