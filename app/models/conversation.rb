class Conversation < ActiveRecord::Base
  has_many :messages
  belongs_to :user

  def other_user(user)
    conversation.users.where.not(user_id: user.id).first
  end
end
