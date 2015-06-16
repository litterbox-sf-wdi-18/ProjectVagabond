class Log < ActiveRecord::Base

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  belongs_to :city

  #Paperclip
  has_attached_file :image, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png" 
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
