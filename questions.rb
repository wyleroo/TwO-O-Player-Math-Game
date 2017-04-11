class Question
  attr_reader :question
  attr_reader :answer

  def initialize
    operator_list = [:+, :-, :*]
    operator = operator_list.sample
    num_1 = rand(20)
    num_2 = rand(20)
    @answer = num_1.public_send(operator, num_2)
    @question = "What is #{num_1} #{operator} #{num_2}?"
  end
end