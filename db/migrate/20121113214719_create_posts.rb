class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :titulo
      t.string :tipo
      t.text :descripcion
      t.string :url_web
      t.string :video

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
