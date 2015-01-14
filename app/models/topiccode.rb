class Topiccode < ActiveRecord::Base
  validates :tcode, :tname, :scode, :active, presence: true
  validates :tcode, :tname, uniqueness: true
end
