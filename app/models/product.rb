class Product < ActiveRecord::Base
  validates :title, :description, :image_url,:type, presence: true
  validates :title, uniqueness: true
  validates :type, :inclusion => { :in => ["票夹/银包", "手包", "背包","公文包","拉杆箱","皮带/配饰"] }
  validates :image_url,allow_blank: true,format: {
      with:  %r{\.(gif|jpg|png)\Z}i,
      message: '只接受GIF，JPG或PNG图像'
  }
end
