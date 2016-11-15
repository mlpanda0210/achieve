class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :result do |t|
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
