class Parkfeature < ActiveRecord::Base
  belongs_to :park
  belongs_to :feature
end
