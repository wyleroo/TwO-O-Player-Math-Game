require_relative 'players'
require_relative 'questions'

class Game
  attr_accessor :turn

  def initialize
    puts "BEGIN THE GAME AT ONCE!"
    puts "   --- --- ---"
    puts "YA ONLY GET 3 LIVES!"
    puts "Player 1 enter name"
    name1 = gets.chomp
    @player_1 = Player.new(name1)
    puts "Player 2 enter name"
    name2 = gets.chomp
    @player_2 = Player.new(name2)
    current_turn(@player_1.name)
  end

  def current_turn(player)
    @current_player = player
  end

  def question
    quest = Question.new
    @current_question = quest.question
    @current_answer = quest.answer
    if @current_player == @player_1.name
      puts "#{@player_1.name}  #{@current_question}"
    else
      puts "#{@player_2.name}  #{@current_question}"
    end
  end

  def check_answer
    response = gets.chomp.to_i
    puts "response was #{response}"
    if response != @current_answer
      puts "THAT'S NOT TRUE."
      if @current_player == @player_1.name
        @player_1.subtract
        player_death?
      elsif @current_player == @player_2.name
        @player_2.subtract
        player_death?
      end
    elsif response == @current_answer
      puts "TOTALLY."
    end
    current_score
    turn
    puts "here"
  end

  def current_score
    puts "Currently  #{@player_1.name} has #{@player_1.points}  points, and #{@player_2.name} has #{@player_2.points} points."
  end

  def player_death?
    if @player_1.points == 0
      puts @player_1.name + " DIED."
      exit
    elsif @player_2.points == 0
      puts @player_1.name + " DIED."
      exit
    else
      current_score
      turn
    end
  end

  def turn
    if @current_player == @player_1.name
      current_turn(@player_2.name)
    elsif @current_player == @player_2.name
      current_turn(@player_1.name)
    end
    puts "current player is #{@current_player}"
    question
    check_answer
  end
end