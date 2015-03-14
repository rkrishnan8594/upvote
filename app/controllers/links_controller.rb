class LinksController < ApplicationController
  respond_to :html, :json

  def index
    @links = Link.all.order(votes: :desc)
    @link = Link.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.votes = 0
    if @link.save
      redirect_to root_url
    end
  end

  def upvote
    @link = Link.find params[:id]
    @link.upvote
    @link.save

    respond_to do |format|
      format.js
    end
  end

  def downvote
    @link = Link.find params[:id]
    @link.downvote
    @link.save

    respond_to do |format|
      format.js
    end
  end

  private

    def link_params
      params.require(:link).permit(:name, :url)
    end
end
