class RemoveOauthFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :oauth_token
    remove_column :users, :oauth_token_secret
  end

  def down
    add_column :users, :oauth_token_secret, :string
    add_column :users, :oauth_token, :string
  end
end
