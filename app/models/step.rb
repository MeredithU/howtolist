class Step < ActiveRecord::Base
  belongs_to :listhowto
  attr_accessible :content
  validates :content, :presence => true
end
