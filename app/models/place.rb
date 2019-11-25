class Place < ApplicationRecord
belongs_to :user
has_many :comments :dependent :delete
has_many :photos  :dependent :delete
geocoded_by :address :dependent :delete
after_validation :geocode :dependent :delete

validates :name, presence: true, length: {minimum: 3 }
validates :address, presence: true
validates :description, presence: true, length: { maximum: 750, minimum: 3 }
end
