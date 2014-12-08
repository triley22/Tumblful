class ArticleLink < ActiveRecord::Base
  validates_presence_of :url

  scope :recent, lambda { order('created_at DESC').limit(5) }
end
