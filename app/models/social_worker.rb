class SocialWorker < User
  has_many :conversations, foreign_key: :user_id

  def social_worker?
    true
  end
end
