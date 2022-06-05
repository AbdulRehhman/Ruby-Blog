class Element < ApplicationRecord
  belongs_to :post

  ELEMENT_TYPES = ['paragraph', 'image', 'video-embed']

  validates :element_type, inclusion: {in: ELEMENT_TYPES}

  has_rich_text :content
  has_one_attached :image

  def paragraph?
    element_type == 'paragraph'
  end

  def image?
    element_type == 'image' 
  end
end
