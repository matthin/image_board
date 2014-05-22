class Comment < ActiveRecord::Base
  belongs_to(:image_owner, :class_name => 'Image')

  validates_presence_of(:body)
  validates_presence_of(:image_owner)

  # Amount of comments shown on each page
  self.per_page = Settings.comment.per_page
end
