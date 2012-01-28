class Hashtag < ActiveRecord::Base
  has_many :messages
  
  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false }
end
