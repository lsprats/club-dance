class Article < ActiveRecord::Base
  extend FriendlyId

  has_many :comments

  friendly_id :title, use: :slugged

  validates :title, :description, :content, presence: true

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end

end
