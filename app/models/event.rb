class Event < ActiveRecord::Base

  belongs_to  :album

  has_attached_file :image,
                    styles: {
                        thumb: "70x70"
                    },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image,
                                    content_type: /\Aimage\/.*\Z/
  validates :title, :description, :album, :date_init, :date_end, :image,  presence: true
  validates_datetime :date_init, :date_end

  def date_init_value
    date_init.strftime('%d/%m/%Y a las %H:%M')
  end

  def date_end_value
    date_end.strftime('%d/%m/%Y a las %H:%M')
  end

end