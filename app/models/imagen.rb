class Imagen < ActiveRecord::Base
  belongs_to :post

  attr_accessible :post_id

  validates :foto, :presence => true
  validates_attachment_content_type :foto, :content_type =>  ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :foto, :less_than => 4.megabytes

  has_attached_file :foto, :styles => {
                                         :thumb => {
                                         :geometry => '190#',
                                         :quality => 80,
                                         :format => 'jpg'
                                       }
                                      }

  include Rails.application.routes.url_helpers

  #one convenient method to pass jq_upload the necessary information
  def to_jq_upload
    {
      "name" => read_attribute(:foto),
      "size" => foto.size,
      "url" => foto.url,
      "thumbnail_url" => foto(:thumb),
      "delete_url" => imagen_path(:id => id),
      "delete_type" => "DELETE"
    }
  end
end
