class Listing < ActiveRecord::Base
  attr_accessible :item, :location, :price
end
