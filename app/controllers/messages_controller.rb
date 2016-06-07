class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.social_worker?
      @conversations = current_user.conversations.includes(:users, :messages)
    else
      @messages = current_user.conversation.messages
      render :show
    end
  end
end
