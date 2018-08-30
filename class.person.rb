=begin

Task
Write a Person class with an instance variable, age, and a constructor that takes an integer,
InitialAge, as a parameter. The constructor must assign  to  after confirming the argument passed
as  is not negative; if a negative argument is passed as , the constructor should
set  to  and print Age is not valid, setting age to 0.. In addition, you must write the f
ollowing instance methods:
yearPasses() should increase the  instance variable by .
amIOld() should perform the following conditional actions:
If , print You are young..
If  and , print You are a teenager..
Otherwise, print You are old..
To help you learn by example and complete this challenge, much of the code is provided for you, but you'll be writing everything in the future. The code that creates each instance of your Person class is in the main method. Don't worry if you don't understand it all quite yet!

=end


class Person
  attr_accessor :age
  def initialize(initialAge)
    @age = (initialAge > 0) ? initialAge : set_to_cero
  end

  def set_to_cero
    puts "Age is not valid, setting age to 0."
    0
  end

  def showage
    p @age
  end

  def yearPasses
    @age += 1
  end

  def amIOld
    puts "You are young." if @age < 13
    puts "You are a teenager." if @age > 13 && @age < 18
    puts "You are old." if @age > 18
  end
end

for i in (1..22)do
    age=i
    p=Person.new(age)
    p.amIOld()
    for j in (1..3)do
        p.yearPasses()
    end
    p.amIOld
  	puts ""
end
