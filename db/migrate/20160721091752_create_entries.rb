class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :content
      t.text :url
      t.string :guid
      t.string :author
      t.integer :feed_id
      t.datetime :published      
      t.timestamps
    end
  end
end
