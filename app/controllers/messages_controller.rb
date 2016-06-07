class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.social_worker?
      @conversations = current_user.conversations.includes(:messages)
    else
      @messages = current_user.conversation.messages
      render :show
    end
  end

  def create
    message = current_user.messages.create(message_params)

    if !current_user.social_worker?
      current_user.conversation.messages << message
    end

    if current_user.social_worker?
      redirect_to message_path(message.conversation)
    else
      redirect_to messages_path
    end
  end

  def show
    @messages = Conversation.includes(:messages).find(params[:id]).messages
  end

  private

  def message_params
    params.require(:message).permit(:body, :conversation_id)
  end
end
