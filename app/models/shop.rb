class Shop < ActiveRecord::Base
  belongs_to :user
  belongs_to :region
  belongs_to :city
end
