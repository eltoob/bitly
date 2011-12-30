class LinksController < ApplicationController
  def new
  @link=Links.new()
  end

  def create
  l=Links.create(params[:links])
  shorten=l.shorten
  @result="localhost:3000"+"/"+shorten
  
  
  end

end
