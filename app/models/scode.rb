class Scode < ActiveRecord::Base
  validates :scode, :sname, presence: true
  validates :scode, :sname, uniquesness: true
end
