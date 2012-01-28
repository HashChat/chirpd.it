class Message < ActiveRecord::Base
  belongs_to :hashtag, :foreign_key => "hashtag_id"
  belongs_to :user, :foreign_key => "user_id"
  
  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :hashtag_id, :presence => true
  validates :user_id, :presence => true
end
