class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :registerable,
         :rememberable, :trackable, :validatable

  has_one :conversation
  has_many :messages

  def avatar
    "#{first_name.first}#{last_name.first}".upcase
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def social_worker?
    false
  end

  def create_initial_conversation
    conversation = create_conversation
    SocialWorker.first.conversations << conversation
  end
end
