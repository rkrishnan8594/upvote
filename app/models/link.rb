class Link < ActiveRecord::Base
  belongs_to :category

  def upvote
    self.votes += 1
  end

  def downvote
    self.votes -= 1
  end
end
