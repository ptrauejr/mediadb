class Site < ApplicationRecord
  validates :name, :url, presence: true

  has_many :aliases
end
