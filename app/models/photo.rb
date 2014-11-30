class Photo < ActiveRecord::Base
  self.table_name = 'pictures'
  belongs_to :user
end
