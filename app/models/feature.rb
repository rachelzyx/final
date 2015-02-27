class Feature < ActiveRecord::Base
  has_many :park_features, dependent: :destroy
  has_many :parks, through: :park_features
end
