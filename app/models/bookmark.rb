class Bookmark < ApplicationRecord
  validates :user_id, :presence =>true
  validates :movie_id, :presence =>true, :uniqueness => {:scope => "user_id"}

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :movie
end
