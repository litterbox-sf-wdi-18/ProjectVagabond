class Log < ActiveRecord::Base

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  belongs_to :city

end
