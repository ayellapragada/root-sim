class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :trackable, :timeoutable
         # :recoverable, :confirmable, :lockable, :omniauthable
end
