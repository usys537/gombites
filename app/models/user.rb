class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name
  # attr_accessible :title, :body

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :profile_name, presence: true,
                           uniqueness: true

  def full_name
  	first_name + " " + last_name
  end

  def to_param
    profile_name
  end

  def to_s
    profile_name
  end
end
