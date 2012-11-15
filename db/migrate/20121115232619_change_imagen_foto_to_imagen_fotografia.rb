class ChangeImagenFotoToImagenFotografia < ActiveRecord::Migration
  def self.up
    rename_column :imagenes, :foto_file_name, :fotografia_file_name
    rename_column :imagenes, :foto_content_type, :fotografia_content_type
    rename_column :imagenes, :foto_file_size, :fotografia_file_size
    rename_column :imagenes, :foto_updated_at, :fotografia_updated_at
  end

  def self.down
    rename_column :imagenes, :fotografia_file_name, :foto_file_name
    rename_column :imagenes, :fotografia_content_type, :foto_content_type
    rename_column :imagenes, :fotografia_file_size, :foto_file_size
    rename_column :imagenes, :fotografia_updated_at, :foto_updated_at
  end
end
