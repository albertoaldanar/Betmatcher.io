class Rbfriend < ApplicationRecord
  belongs_to :user
   belongs_to :send, class_name: 'User'
end
