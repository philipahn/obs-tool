class Instructor < ApplicationRecord
  belongs_to :metro
  has_many :observations, dependent: :destroy
end
