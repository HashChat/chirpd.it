class Message < ActiveRecord::Base
  belongs_to :hash
  belongs_to :user
  
end
