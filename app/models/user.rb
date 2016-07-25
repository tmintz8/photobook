class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins


	validates :password, :presence => true,
     	:on => :create,
     	:format => {:with => /\A.*(?=.{8,})(?=.*\d)(?=.[a-z]).*\Z/ }

  	validates :name, presence: true

end
