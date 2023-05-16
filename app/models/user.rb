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

  has_one_attached :profile_picture
  
  validates :role, presence: true, inclusion: { in: %w[admin regular] }

  # this chunk solves the "empty role" issue.
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= 'regular' # users will have 'user' role by default
  end

  # this very simplistically checks for the admin role
  def admin?
    role == 'admin'
  end

end
