class Person < ApplicationRecord
  validates :name, presence: true

  has_many :aliases
end
