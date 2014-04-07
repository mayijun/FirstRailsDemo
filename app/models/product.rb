class Product < ActiveRecord::Base
  validates :title, :description, :image_url,:type, presence: true
  validates :title, uniqueness: true
  validates :price,numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url,allow_blank: true,format: {
      with:  %r{\.(gif|jpg|png)\Z}i,
      message: '只接受GIF，JPG或PNG图像'
  }
end
