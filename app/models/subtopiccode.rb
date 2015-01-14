class Subtopiccode < ActiveRecord::Base
  validates :stcode, :stname, :tcode, :active, presence: true
  validates :stcode, :stname, uniqueness: true
	belongs_to :topiccode
end
