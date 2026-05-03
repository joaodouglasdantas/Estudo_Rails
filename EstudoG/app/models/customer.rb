class Customer < ApplicationRecord
  has_many :addresses, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :addresses, allow_destroy: true
end
