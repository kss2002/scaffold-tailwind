class PostMailer < ApplicationMailer
  def new_post_notification(subscriber, post)
    @subscriber = subscriber
    @post = post
    mail(to: @subscriber.email, subject: "새로운 글이 등록되었습니다: #{@post.title}")
  end
end
