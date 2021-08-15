class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :trackable
         # :recoverable, :confirmable, :lockable, :omniauthable, :timeoutable
end
