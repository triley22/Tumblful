<<<<<<< HEAD
class ArticleLink < ActiveRecord::Base
	scope :recent, lambda { order('created_at ASC').limit(10) }

	validates_presence_of :url

	belongs_to :user
=======
class ImageLink < ActiveRecord::Base
  scope :recent, lambda { order ('created_at DESC').limit(10) }

  validates_presence_of :url
>>>>>>> 58946611dd7eeaddbd59de2ca5764aecf02106d3
end
