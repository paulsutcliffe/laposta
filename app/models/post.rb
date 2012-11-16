class Post < ActiveRecord::Base
  has_many :imagenes

  def self.search(search)
    if search
      where('tipo LIKE ?', "%#{search}%")
    else
      scoped
    end
  end


  TIPOS = ['Realización', 'Animación y Post', 'Diseño y Web']

  validates :tipo, :inclusion => { :in => TIPOS }, :presence => true

  validates :foto, :presence => true
  validates_attachment_content_type :foto, :content_type =>  ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :foto, :less_than => 4.megabytes

  has_attached_file :foto, :styles => {
                                         :thumb => {
                                         :geometry => '190x190#',
                                         :quality => 80,
                                         :format => 'jpg'
                                       },
                                         :preview => {
                                         :geometry => '230x90#',
                                         :quality => 80,
                                         :format => 'jpg'
                                       },
                                         :full => {
                                         :geometry => '800x600>',
                                         :quality => 80,
                                         :format => 'jpg'
                                         }
                                      }





 end
