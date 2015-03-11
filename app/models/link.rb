class Link < ActiveRecord::Base
  def upvote
    self.votes += 1
  end
end
