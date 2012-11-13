class CreateMiembros < ActiveRecord::Migration
  def self.up
    create_table :miembros do |t|
      t.string :nombre
      t.string :cargo
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end

  def self.down
    drop_table :miembros
  end
end
