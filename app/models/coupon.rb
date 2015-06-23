class Coupon < ActiveRecord::Base

  belongs_to  :discount
  belongs_to  :user

  before_create :generate_code
  after_save :subtracting_stock

  validates :discount, :user, presence: true

  def subtracting_stock
    discount.update_attribute(:count, discount.count - 1)
  end

  def generate_code(size = 6)
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    #Loop for create code random unique, if code exists in DB, regenerate code in loop
    begin
      codecoupon = (0...size).map{ charset.to_a[rand(charset.size)] }.join
    end while(Coupon.where(code: codecoupon).count > 0)

    self.code = codecoupon
  end
  
end
