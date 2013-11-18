class Node < ActiveRecord::Base
  attr_accessible :title

  belongs_to :map

  validates :map_id, :presence => true
  validates :title, :presence => true
end
