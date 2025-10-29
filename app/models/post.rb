class Post < ApplicationRecord
  after_create_commit { SendNewPostEmailJob.perform_later(self) }
end
