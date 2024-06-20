class Site < ApplicationRecord
  validates :name, :url, presence: true
end
