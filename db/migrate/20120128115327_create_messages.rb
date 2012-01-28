class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :hashtag
      t.references :user
      t.text       :content

      t.timestamps
    end
    add_index :messages, :hashtag_id
    add_index :messages, :user_id
  end
end
