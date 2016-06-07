class Conversation < ActiveRecord::Base
  has_many :messages
  has_and_belongs_to_many :users

  def other_user(user)
    conversation.users.where.not(user_id: user.id).first
  end
end
