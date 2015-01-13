# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.delete_all
Question.create!(  id: 1,
  question: "q1",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 1,
  stopiccode: 1
)
Question.create!(  id: 2,
  question: "q2",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 1,
  stopiccode: 2
)
Question.create!(  id: 3,
  question: "q3",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 1,
  stopiccode: 3
)
Question.create!(  id: 4,
  question: "q4",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 2,
  stopiccode: 1
)
Question.create!(  id: 5,
  question: "q5",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 3,
  stopiccode: 1
)
Question.create!(  id: 6,
  question: "q6",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 2,
  topiccode: 1,
  stopiccode: 1
)
Question.create!(  id: 7,
  question: "q7",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 2,
  topiccode: 1,
  stopiccode: 2
)
Question.create!(  id: 8,
  question: "q8",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 2,
  topiccode: 1,
  stopiccode: 3
)
Question.create!(  id: 9,
  question: "q9",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 2,
  topiccode: 2,
  stopiccode: 1
)
Question.create!(  id: 10,
  question: "q10",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 2,
  topiccode: 3,
  stopiccode: 1
)
Question.create!(  id: 11,
  question: "q11",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 3,
  topiccode: 1,
  stopiccode: 1
)
Question.create!(  id: 12,
  question: "q12",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 3,
  topiccode: 1,
  stopiccode: 2
)
Question.create!(  id: 13,
  question: "q13",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 3,
  topiccode: 1,
  stopiccode: 3
)
Question.create!(  id: 14,
  question: "q14",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 3,
  topiccode: 2,
  stopiccode: 1
)
Question.create!(  id: 15,
  question: "q15",
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 3,
  topiccode: 3,
  stopiccode: 1
)
Scode.delete_all
Scode.create!( scode: 1,
  sname: "Physics"
)
Scode.create!( scode: 2,
  sname: "Chemistry"
)
Scode.create!( scode: 3,
  sname: "Maths"
)
Topiccode.delete_all
Topiccode.create!( tcode: 1,
  tname: "Dynamics",
  scode: 1,
  active: 'Y'
)
Topiccode.create!( tcode: 2,
  tname: "Mechanics",
  scode: 1,
  active: 'Y'
)
Topiccode.create!( tcode: 3,
  tname: "Electrostatics",
  scode: 1,
  active: 'Y'
)
Topiccode.create!( tcode: 4,
  tname: "Organic",
  scode: 2,
  active: 'Y'
)
Topiccode.create!( tcode: 5,
  tname: "Inorganic",
  scode: 2,
  active: 'Y'
)
Topiccode.create!( tcode: 6,
  tname: "Phyical",
  scode: 2,
  active: 'Y'
)
Topiccode.create!( tcode: 7,
  tname: "Topology",
  scode: 3,
  active: 'Y'
)
Topiccode.create!( tcode: 8,
  tname: "Coordinate",
  scode: 3,
  active: 'Y'
)
Topiccode.create!( tcode: 9,
  tname: "Calculus",
  scode: 3,
  active: 'Y'
)
Subtopiccode.delete_all
Subtopiccode.create!( stcode: 1,
  stname: "Supto1",
  tcode: 1,
  active: 'Y'
)
Subtopiccode.create!( stcode: 2,
  stname: "Supto2",
  tcode: 1,
  active: 'Y'
)
Subtopiccode.create!( stcode: 3,
  stname: "Supto3",
  tcode: 2,
  active: 'Y'
)
Subtopiccode.create!( stcode: 4,
  stname: "Supto4",
  tcode: 2,
  active: 'Y'
)