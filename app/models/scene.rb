class Scene < ApplicationRecord
  belongs_to :site
  has_many :aliases, through: :performers
end
