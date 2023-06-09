class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :content, length: { maximum: 100 }

  private

  def send_notification(message)
    message.notifications.create(user: message.recipient)
  end

end
