class Park < ActiveRecord::Base
  belongs_to :airport
  has_many :parkfeatures
  has_many :reviews
  has_many :features, through: :parkfeatures
  
  validates :name, presence: true
  validates :country, presence: true
end

