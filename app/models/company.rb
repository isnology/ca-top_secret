class Company < ApplicationRecord
  validates :name, presence: true
  validates :domain, presence: true
  
  has_many :documents
end
