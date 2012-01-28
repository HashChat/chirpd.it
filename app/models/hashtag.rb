class Hashtag < ActiveRecord::Base
  has_many :messages
end
