class Question
  attr_accessor :question
  attr_accessor :answer

  def initialize
    operator_list = [:+, :-, :*]
    operator = operator_list.sample
    num_1 = rand(100)
    num_2 = rand(100)
    @answer = num_1.public_send(operator, num_2)
    @question = "What is " + num_1 + " " + operator + " " + num_2 + "?"
  end
end