class User < ActiveRecord::Base
	has_one :profile
	has_many :posts
	has_many :user_groups
	has_many :groups, through: :user_groups
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
