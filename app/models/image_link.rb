class ImageLink < ActiveRecord::Base
<<<<<<< HEAD
    scope :recent, lambda { order('created_at DESC').limit(5)}

    validates_presence_of :url

    belongs_to :user
    
end
=======

  scope :recent, lambda { order('created_at DESC').limit(5) }

  validates_presence_of :url

  # Add this line to create the relationship between ImageLinks and Users
  belongs_to :user
end
>>>>>>> 58946611dd7eeaddbd59de2ca5764aecf02106d3
