class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many(
    :comments,
    class_name:  'Comment',
    foreign_key: 'user_id',
    inverse_of:  :user,
    dependent:   :destroy
  )
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true

end
