class RedirectController < ApplicationController
  def index
  shorten=params[:id]
  link=Links.find_by_shorten(shorten).last
  url=link.url
  unless  url[0..3]=="http"
  	url= "http://"+url
  end
  redirect_to url
  puts url
  end

end
