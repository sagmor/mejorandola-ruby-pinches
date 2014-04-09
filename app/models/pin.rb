class Pin < ActiveRecord::Base
  validates :title, presence: true
  validates :image, presence: true
end
