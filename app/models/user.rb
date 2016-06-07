class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :registerable,
         :rememberable, :trackable, :validatable

  has_one :conversation

  def full_name
    "#{first_name} #{last_name}"
  end

  def social_worker?
    false
  end
end
