class CreateImagenes < ActiveRecord::Migration
  def self.up
    create_table :imagenes do |t|
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :imagenes
  end
end
