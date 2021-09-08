class Item < ApplicationRecord
  belongs_to :cat
  belongs_to :sub_cat, optional: true
end
