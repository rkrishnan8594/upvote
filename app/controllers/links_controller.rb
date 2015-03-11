class LinksController < ApplicationController
  respond_to :html, :json

  def index
    @links = Link.all
  end

  def upvote
    @link = Link.find params[:id]
    @link.upvote
    @link.save

    respond_to do |format|
      format.js
    end
  end
end
