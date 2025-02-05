require_relative "symptom"
require "date"

class Record

  def initialize
    @symptoms = []
  end

  def start
    current_date = Date.today
    puts "Welcome. The current date is #{current_date}."
    loop do
      if
        @symptoms.empty?
        puts "Do you want to record a symptom? Say yes or no to continue"
      else
        puts "Select an action:"
        puts "add"
        puts "view"
        puts "exit"
      end

      user_input = gets.chomp

      if user_input == "yes" || user_input == "add"
        input()
        include()
      elsif user_input == "no" || user_input == "exit"
        end_tracker
        break
      elsif user_input == "view"
        show
      else 
        puts "Please double-check your answer"
      end

    end
  end

  private

  def input()
    puts "Tell me the date this happened (please include day and month): "
    said_date = gets.chomp
    @date = Date.parse(said_date)
    puts "Describe the symptoms: "
    @what = gets.chomp
    puts "What bodily system did this affect? "
    @where = gets.chomp
    puts "How long did these symptoms last? "
    @how_long = gets.chomp
  end

  def show
    if @symptoms.empty?
      puts "No records available"
    else
      @symptoms.each do |symptom|
        puts symptom.to_s
      end
    end
  end

  def include
    record = Symptom.new(@date, @what, @where, @how_long)
    @symptoms.push(record)
    puts "The symptoms are now recorded"
  end

  def end_tracker
    puts "You have closed the Symptom Tracker successfully"
  end

end
