Question.create!([
  {question: "q1", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 1},
  {question: "q2", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 2},
  {question: "q3", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 3},
  {question: "q4", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 2, stopiccode: 1},
  {question: "q5", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 1, topiccode: 3, stopiccode: 1},
  {question: "q6", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 1, stopiccode: 1},
  {question: "q7", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 1, stopiccode: 2},
  {question: "q8", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 1, stopiccode: 3},
  {question: "q9", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 2, stopiccode: 1},
  {question: "q10", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 2, topiccode: 3, stopiccode: 1},
  {question: "q11", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 1, stopiccode: 1},
  {question: "q12", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 1, stopiccode: 2},
  {question: "q13", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 1, stopiccode: 3},
  {question: "q14", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 2, stopiccode: 1},
  {question: "q15", opa: "1", opb: "1", opc: "1", opd: "1", ro: "A", year: "2014-12-12", examcode: 1, subjectcode: 3, topiccode: 3, stopiccode: 1},
  {question: "<p>Question 16</p>\r\n\r\n<p><img alt=\"\" src=\"http://www.joomlaworks.net/images/demos/galleries/abstract/7.jpg\" style=\"height:267px; width:400px\" /></p>\r\n", opa: "<p>A</p>\r\n", opb: "<p>B</p>\r\n", opc: "<p>C</p>\r\n", opd: "<p>D</p>\r\n", ro: "C", year: "2015-01-14", examcode: 1, subjectcode: 1, topiccode: 1, stopiccode: 1}
])
Scode.create!([
  {scode: 1, sname: "Physics"},
  {scode: 2, sname: "Chemistry"},
  {scode: 3, sname: "Maths"}
])
Subtopiccode.create!([
  {stcode: 1, stname: "Supto1", tcode: 1, active: "Y"},
  {stcode: 2, stname: "Supto2", tcode: 1, active: "Y"},
  {stcode: 3, stname: "Supto3", tcode: 2, active: "Y"},
  {stcode: 4, stname: "Supto4", tcode: 2, active: "Y"}
])
Topiccode.create!([
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
