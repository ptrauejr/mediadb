class Alias < ApplicationRecord
  validates :name, presence: true

  belongs_to :person
  belongs_to :site
end
