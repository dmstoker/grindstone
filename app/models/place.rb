class Place < ApplicationRecord
belongs_to :user
has_many :comments :dependent => :delete_all
has_many :photos  :dependent => :delete_all
geocoded_by :address :dependent => :delete_all
after_validation :geocode :dependent => :delete_all

validates :name, presence: true, length: {minimum: 3 }
validates :address, presence: true
validates :description, presence: true, length: { maximum: 750, minimum: 3 }
end
