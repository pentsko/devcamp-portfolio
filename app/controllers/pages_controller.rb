class PagesController < ApplicationController
  def home
   @posts = Blog.all
   @skills = Skill.all
  end

  def about
  end

  def contoct
  end

  def something
   @else = params[:else]
   @another = params[:another]
  end
end
