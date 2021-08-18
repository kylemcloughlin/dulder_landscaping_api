class Cat < ApplicationRecord
  has_many :sub_cats  
  has_many :items

end
