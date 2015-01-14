require 'securerandom'

class RandomController < ApplicationController
  def enable
    @no_of_questions = 3
    @questions = Question.all
  end

  def index
    enable
    @scodes = Scode.all
    @scode=[]
    @scodes.each do |s|
      @scode.push([s.sname, s.id])
    end
     @tcodes = Topiccode.all
     @tcode=[]
     @tcodes.each do |t|
     @tcode.push([t.tname, t.id])
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

  def quespaper
    #@phyq = generate_question(1)
    #@chemq = generate_question(2)
    #@matq = generate_question(3)
    @sub = []
    @scodes = Scode.all
    @scodes.each do |s|
      @sub[s.scode]=(generate_question(s.scode))
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
      end
    end
  end

  def oneques(params)
   scode = params[:question][:subject]
    @rand = random(scode)
  end

  def random(scode)
    subq = []
    enable.each do |question|
      if question.subjectcode == scode.to_i
        subq << question
      end 
    end
    subq[SecureRandom.random_number(subq.size)]
  end
end
