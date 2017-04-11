class Question

  def question_maker
    operators = [:+, :-, :*, :/]
    num_1 = rand(100)
    num_2 = rand(100)
    question = num_1.send(operators.sample, num_2)
    puts question
  end
end

