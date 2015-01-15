Question.delete_all
Question.create!([
  {question: "q1", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 1},
  {question: "q2", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 2},
  {question: "q3", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 3},
  {question: "q4", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 2, stopiccode: 1},
  {question: "q5", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 3, stopiccode: 1},
  {question: "q6", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 4, stopiccode: 1},
  {question: "q7", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 4, stopiccode: 2},
  {question: "q8", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 4, stopiccode: 3},
  {question: "q9", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 5, stopiccode: 1},
  {question: "q10", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 6, stopiccode: 1},
  {question: "q11", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 7, stopiccode: 1},
  {question: "q12", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 7, stopiccode: 2},
  {question: "q13", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 7, stopiccode: 3},
  {question: "q14", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 8, stopiccode: 1},
  {question: "q15", opa: "A", opb: "B", opc: "C", opd: "D", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 9, stopiccode: 1},
  {question: "<p>Question 16</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.joomlaworks.net/images/demos/galleries/abstract/7.jpg\" style=\"height:267px; width:400px\" /></p>\r\n", opa: "<p>A</p>\r\n", opb: "<p>B</p>\r\n", opc: "<p>C</p>\r\n", opd: "<p>D</p>\r\n", ro: "C", year: "2015-01-14", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 1}
])
Scode.delete_all
Scode.create!([
  {scode: 0, sname: "All"},
  {scode: 1, sname: "Physics"},
  {scode: 2, sname: "Chemistry"},
  {scode: 3, sname: "Maths"}
])
Subtopiccode.delete_all
Subtopiccode.create!([
  {stcode: 0, stname: "All subtopics", tcode: 0, active: "Y"},
  {stcode: 1, stname: "Supto1", tcode: 1, active: "Y"},
  {stcode: 2, stname: "Supto2", tcode: 1, active: "Y"},
  {stcode: 3, stname: "Supto3", tcode: 2, active: "Y"},
  {stcode: 4, stname: "Supto4", tcode: 2, active: "Y"}
])
Topiccode.delete_all
Topiccode.create!([
  {tcode: 0, tname: "All topics", scode: 0, active: "Y"},
  {tcode: 1, tname: "Dynamics", scode: 1, active: "Y"},
  {tcode: 2, tname: "Mechanics", scode: 1, active: "Y"},
  {tcode: 3, tname: "Electrostatics", scode: 1, active: "Y"},
  {tcode: 4, tname: "Organic", scode: 2, active: "Y"},
  {tcode: 5, tname: "Inorganic", scode: 2, active: "Y"},
  {tcode: 6, tname: "Phyical", scode: 2, active: "Y"},
  {tcode: 7, tname: "Topology", scode: 3, active: "Y"},
  {tcode: 8, tname: "Coordinate", scode: 3, active: "Y"},
  {tcode: 9, tname: "Calculus", scode: 3, active: "Y"}
])
