class SearchController < ApplicationController
  def search_post
    @post = Post.where("title LIKE ?", "#{params[:title]}%")
  end
end
