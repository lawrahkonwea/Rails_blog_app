class Post < ApplicationRecord
  belongs_to :author, class_name: 'user'
  has_many :likes
  has_many :comments

def update_posts_count
    author.increment!(:posts_counter)
end    

def recent_five_comments
    comments.order(created_at: :desc).limit(5)
end

end
