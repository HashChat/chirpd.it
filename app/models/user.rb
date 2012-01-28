class User < ActiveRecord::Base
  has_many :messages
  %w{twitter_id oauth_token oauth_token_secret}.each do |x|
    validates x, :presence => true
  end

end
