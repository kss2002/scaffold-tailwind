class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      redirect_to root_path, notice: "구독해주셔서 감사합니다!"
    else
      redirect_to root_path, alert: "구독에 실패했습니다. 다시 시도해주세요."
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
