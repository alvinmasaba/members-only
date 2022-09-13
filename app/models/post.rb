class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  
  def self.search(search)
    if search
      post_id = Post.where("title like ?", "%#{search}%")
        if post_id
          self.where(id: post_id)
        else
          @posts = Post.all
        end
    else
      @posts = Post.all
    end
  end
end
