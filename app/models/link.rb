class Link < ActiveRecord::Base
  def upvote
    self.votes += 1
  end

  def downvote
    self.votes -= 1
  end
end
