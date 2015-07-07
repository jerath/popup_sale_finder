class Sale < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord

  belongs_to :user
  has_many :items

  validates :address, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  geocoded_by :address
  after_validation :geocode
  before_save :sanitize_input
  mount_uploader :image_path, ImageUploader

  private
  def sanitize_input
    self.address = Rack::Utils.escape_html(self.address) unless self.address.nil?
    self.description = Rack::Utils.escape_html(self.description) unless self.description.nil?
  end

end
