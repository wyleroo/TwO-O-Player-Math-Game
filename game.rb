require_relative 'players'
require_relative 'questions'


class Game
  attr_accessor :turn
  def initialize
    puts "BEGIN THE GAME AT ONCE!"
    player_1 = gets.chomp
    player_2 = gets.chomp
  end

  def current_player

  def coin_flip
    winner = 1 + rand(2)
    puts "Player " + winner + " goes first!"
    if winner > 1
      current_player = player_2
    else
      current_player = player_1
    end
  end

  def question
  question = Question.new
  @question = question.question
  @answer = question.answer
  if @player1.turn
    puts @player1.name + ": " + @question
  else
    puts @player2.name + ": " + @question
  end


  def check_answer
    if gets.chomp.to_i == @answer
      if player_1.turn
        @player_1.score -=1



  def current_score
    puts "Currently " + player_1.name + " has " + player_1.points + " points, and " +
      player_2.name + " has " + player_2.points + " points."
  end


  def winner?
  if player_1.points == 0
    puts player_1.name + " DIED."
  elsif player_2.score == 0
    puts player_1.name + " DIED."
  else
    turn
  end


  def turn
    question
    score

  end



end