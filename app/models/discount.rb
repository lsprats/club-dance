class Discount < ActiveRecord::Base

  has_many  :coupons

  has_attached_file :image, 
                    styles: {
                        thumb: "70x70"
                    },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, 
                                    content_type: /\Aimage\/.*\Z/
  
  validates :title, :description, :count, :date_ini, :date_end, :percent, :image,  presence: true
  validates_datetime :date_ini, :date_end

  scope :actives, -> { where("date_end > '#{Time.now - 2.days}'").order(date_end: :desc) }

  def date_ini_value
    date_ini.strftime('%d/%m/%Y %H:%M')
  end

  def date_end_value
    date_end.strftime('%d/%m/%Y %H:%M')
  end

  def expired?
    date_end < Time.now
  end
    
end
