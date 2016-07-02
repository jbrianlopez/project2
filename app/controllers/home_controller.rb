class HomeController < ApplicationController
  def index
      @posts = Post.all.order("created_at DESC")
  end

  def index
    if params[:search].present?
      search = params[:search]
      @posts = Post.where("body LIKE ?", "%#{search}%")
    else
      @posts = Post.all
    end
  end
end
