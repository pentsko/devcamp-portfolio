class PagesController < ApplicationController
  def home
   @posts = Blog.all
  end

  def about
  end

  def contoct
  end
end
