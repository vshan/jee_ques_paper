require 'securerandom'

class RandomController < ApplicationController
  def enable
    @no_of_questions = 2
    @questions = Question.all
  end

  def index
    enable
    @scodes = Scode.all
    @scode=[]
    @scodes.each do |s|
       @scode.push([s.sname, s.scode])
    end
     @tcodes = Topiccode.all
     @tcode=[]
     @tcodes.each do |t|
       @tcode.push([t.tname, t.tcode])
    end
     @stcodes = Subtopiccode.all
     @stcode=[]
     @stcodes.each do |st|
       @stcode.push([st.stname, st.stcode])
    end
  end
#  def delemelater
#    Parameters: {"utf8"=>"✓", "authenticity_token"=>"ck3MO8XXUTJ498SqkomkQZQ9gtjxGwDAjwgtv2/+irU=", "question"=>{"subject"=>"2", "physics_topic"=>"2", "chemistry_subject"=>"2", "maths_subject"=>"2"}, "commit"=>"Generate Single Question"}
#{"utf8"=>"✓", "authenticity_token"=>"ck3MO8XXUTJ498SqkomkQZQ9gtjxGwDAjwgtv2/+irU=", "question"=>{"subject"=>"2", "physics_topic"=>"2", "chemistry_subject"=>"2", "maths_subject"=>"2"}, "commit"=>"Generate Single Question", "action"=>"create", "controller"=>"random"}
#  end

  def generate_question(subject)
  #  subq = enable.find(scode: subject)
    subq = []
    enable.each do |question|
      if question.subjectcode == subject
        subq << question
      end 
    end
    a = [SecureRandom.random_number(subq.size)]
    while(a.size != @no_of_questions) do
      b = SecureRandom.random_number(subq.size)
      a.each do |e|
        if e == b
          a.delete(e)
        end
      end
      a.push(b)
    end
    rques = []
    a.each do |n|
      subq.each_with_index do |question, index|
        if n == index
          rques << question
        end
      end
    end
    rques
  end

  def oqvalidate(params)
    index
    answer = params[:question]
    answer.each do |id, choice|
      if Question.find(id.to_i).ro == choice
        @op = true
      else
        @op = false
      end
    end
  end

#{"utf8"=>"✓", "authenticity_token"=>"jRTS5UbMpYRjNHlSbj6i5wfOVtoP6YhoKFN9kw5Nm1k=", "question"=>{"66"=>"B", "65"=>"C", "74"=>"D", "70"=>"B", "75"=>"D", "76"=>"B"}, "commit"=>"Submit Paper", "action"=>"create", "controller"=>"random"}


  def qpvalidate(params)
    index
    @score = 0
    answers = params[:question]
    answers.each do |id, choice| 
      if Question.find(id.to_i).ro == choice
        @score += 1
      end
    end
  end

  def quespaper
    #@phyq = generate_question(1)
    #@chemq = generate_question(2)
    #@matq = generate_question(3)
    @sub = []
    @scodes = Scode.all
    @scodes.each do |s|
      unless s.scode == 0
        @sub[s.scode]=(generate_question(s.scode))
      end
    end
  end
  
  def create 
    respond_to do |format|
      if params[:commit] == "Generate Question Paper"
        format.html do
          quespaper
          render action: 'quespaper'
        end
      elsif params[:commit] == "Generate Single Question"
        format.html do
          oneques(params)
          render action: 'oneques'
        end
      elsif params[:commit] == "Go!"
        format.html do 
          oqvalidate(params)
          render action: 'oqvalidate'
        end
      elsif params[:commit] == "Submit Paper"
        format.html  do
          qpvalidate(params)
          render action: 'qpvalidate'
        end
      end
    end
  end

  def oneques(params)
   ques_codes = params[:question]
    @rand = random(ques_codes)
  end

  def random(ques_codes)
    subq = []
    question_code = ques_codes[:subject].to_i
    topic_code = ques_codes[:topic].to_i
    subtopic_code = ques_codes[:stopic].to_i
    enable.each do |question|
      aqcode = question.subjectcode
      atcode = question.topiccode
      astcode = question.stopiccode 
      if (aqcode == question_code) && (atcode == topic_code) && (astcode == subtopic_code)
        subq << question
      elsif question_code == 0
       subq = Question.all
      elsif (aqcode == question_code) && (topic_code == 0)
       subq << question 
      elsif (aqcode == question_code) && (atcode == topic_code) && (subtopic_code == 0)
        subq << question
      end
    end
    if subq.empty?
      subq << Question.new(question: "No question found with specified conditions", opa: 1, opb: 1, opc: 1, opd: 1, ro: 'A', year: Date.parse("12-12-2014"), examcode: 1, subjectcode: 0, topiccode: 0, stopiccode: 0)
    end
    subq[SecureRandom.random_number(subq.size)]
  end
end
