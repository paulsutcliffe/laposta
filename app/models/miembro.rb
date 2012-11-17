class Miembro < ActiveRecord::Base
  validates :avatar, :presence => true
  validates_attachment_content_type :avatar, :content_type =>  ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :avatar, :less_than => 4.megabytes

  has_attached_file :avatar, :styles => {
                                         :thumb => {
                                         :geometry => '70x70#',
                                         :quality => 80,
                                         :format => 'jpg'
                                       }
                                      }
end
