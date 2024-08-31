class AsArtist < ApplicationRecord
  auto_strip_attributes :name, squish: true, nullify: false

  validates :name, presence: true, length: { maximum: 100 }
end
