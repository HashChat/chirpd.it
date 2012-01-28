class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :hash
      t.references :user
      t.text       :content

      t.timestamps
    end
    add_index :messages, :hash_id
    add_index :messages, :user_id
  end
end
