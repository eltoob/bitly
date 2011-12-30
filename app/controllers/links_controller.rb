class LinksController < ApplicationController
  def new
  @link=Links.new()
  end

  def create
  l=Links.create(params[:links])
  shorten=l.shorten
  @result="mysite.com"+"/"+shorten
  
  
  end

end
