class AddAttachmentAvatarToMiembros < ActiveRecord::Migration
  def self.up
    add_column :miembros, :avatar_file_name, :string
    add_column :miembros, :avatar_content_type, :string
    add_column :miembros, :avatar_file_size, :integer
    add_column :miembros, :avatar_updated_at, :datetime
  end

  def self.down
    remove_column :miembros, :avatar_file_name
    remove_column :miembros, :avatar_content_type
    remove_column :miembros, :avatar_file_size
    remove_column :miembros, :avatar_updated_at
  end
end
