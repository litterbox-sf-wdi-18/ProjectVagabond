class User < ActiveRecord::Base
  # validations
  validates :email, presence: true, uniqueness: true, confirmation: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_secure_password

  # associations
  has_many :logs, dependent: :destroy

  #Create user avatar using Paperclip
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/, :size => { :in => 0..1.megabytes }
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  # returns @user or false
  def self.confirm(params)
    user = User.find_by(email: params[:email])
    user.try(:authenticate, params[:password])
  end
end
