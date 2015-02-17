class Park < ActiveRecord::Base
  belongs_to :airport
  has_many :features, through: :park_features

  validates :name, presence: true
  validates :country, presence: true
end
