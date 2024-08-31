class NArtist < ApplicationRecord
  normalizes :name, with: -> (name) { name.strip.unicode_normalize }
end
