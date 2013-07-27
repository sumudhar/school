class Articles < ActiveRecord::Migration
  def up
   create_table :articles do |t|
      t.string :name
      t.date :published_on
      t.text :content

      t.timestamps
    end
  end

  def down
	  drop_table :articles
  end
end
