class Question < ActiveRecord::Base
  validates :question, :opa, :opb, :opc, :opd, :ro, :year, :examcode, :subjectcode, :topiccode, :stopiccode, presence: true
  validates :question, uniqueness: true
end
