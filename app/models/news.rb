class News < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :image_url,allow_blank: true,format: {
      with:  %r{\.(gif|jpg|png)\Z}i,
      message: '只接受GIF，JPG或PNG图像'
  }
end
