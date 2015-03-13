class Feature < ActiveRecord::Base
  has_many :parkfeatures, dependent: :destroy
  has_many :parks, through: :parkfeatures
end
