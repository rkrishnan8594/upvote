class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def upvote
    @link = Link.find params[:id]
    @link.upvote
    @link.save
  end
end
