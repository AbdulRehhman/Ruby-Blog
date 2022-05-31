class Element < ApplicationRecord
  belongs_to :post

  ELEMENT_TYPES = ['paragraph', 'image', 'video-embed']

  validates :element_type, inclusion: {in: ELEMENT_TYPES}

  has_rich_text :content
end
