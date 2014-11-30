class User < ActiveRecord::Base
  rolify
  has_one :shop
  has_many :resumes
  has_many :products
  has_many :jobs
  has_many :photos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable, 
  
  # devise :database_authenticatable, 
  #        :recoverable, :rememberable, :trackable, :validatable

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable 

end
