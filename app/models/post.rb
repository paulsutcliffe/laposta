class Post < ActiveRecord::Base

  TIPOS = ['Realización', 'Animación y Post', 'Diseño y Web']

  validates :tipo, :inclusion => { :in => TIPOS }, :presence => true

  validates :foto, :presence => true
  validates_attachment_content_type :foto, :content_type =>  ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :foto, :less_than => 4.megabytes

  has_attached_file :foto, :styles => {
                                         :thumb => {
                                         :geometry => '190#',
                                         :quality => 80,
                                         :format => 'jpg'
                                       },
                                         :preview => {
                                         :geometry => '229#x88#',
                                         :quality => 80,
                                         :format => 'jpg'
                                       }
                                      }
end
