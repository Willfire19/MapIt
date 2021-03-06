class Map < ActiveRecord::Base
  attr_accessible :name

  belongs_to :user
  has_many :nodes

  validates :user_id, :presence => true
  validates :name, :presence => true
end
