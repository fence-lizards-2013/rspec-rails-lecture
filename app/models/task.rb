class Task < ActiveRecord::Base
  belongs_to :todo
  validates :title, :presence => true

end
