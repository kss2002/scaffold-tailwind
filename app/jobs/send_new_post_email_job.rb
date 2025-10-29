class SendNewPostEmailJob < ApplicationJob
  queue_as :default

  def perform(post)
    Subscriber.find_each do |subscriber|
      PostMailer.new_post_notification(subscriber, post).deliver_later
    end
  end
end
