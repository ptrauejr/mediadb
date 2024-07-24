class Scene < ApplicationRecord
  validates :name, presence: true

  belongs_to :site
  has_many :aliases, through: :performers
end
