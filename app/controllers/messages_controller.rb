class MessagesController < ApplicationController
  before_action :require_user
  
  def create
    # @message = Message.new(message_params)
    message = current_user.messages.build(message_params)
    if message.save
      redirect_to root_path
    end
  end #create
  

  private
  
    def message_params
        params.require(:message).permit(:body) #category_ids are taken from _form.html.erb and checkboxes field  
    end
  
end