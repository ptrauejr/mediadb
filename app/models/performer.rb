class Performer < ApplicationRecord
  belongs_to :alias
  belongs_to :scene
end
