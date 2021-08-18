class SubCat < ApplicationRecord
  belongs_to :cat
  has_many :items
end
