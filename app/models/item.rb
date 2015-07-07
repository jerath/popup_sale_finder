class Item < ActiveRecord::Base
  belongs_to :sale
  validates :item_name, presence: true

  before_save :sanitize_input

  private
  def sanitize_input
    self.item_name = Rack::Utils.escape_html(self.item_name) unless self.item_name.nil?
  end
end
