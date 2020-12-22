require_relative "question"

questions = []
questions << Question.new(id: "1", q: "People thought an owl could change into which of the folowing?", a: "Witch", b: "Ghost", c: "Vampire", d: "Wolf", sol: "A")
questions << Question.new(id: "2", q: "Which of the following are considered candy in American English?", a: "Chocolate", b: "Gummy Bears", c: "Gum", d: "M&Ms", sol: "D")
questions << Question.new(id: "3", q: "The colors of Halloween are orange and black. What does black represent??", a: "Night", b: "Black Cats", c: "Death", d: "Witches", sol: "C")
questions << Question.new(id: "4", q: "Le Wagon students dress up in frightening costumes and sit at home doing which scary task?", a: "Trick or Treat", b: "Apple Bobbing", c: "Strolling the dark streets of munich", d: "Code until the ruby ghost haunts them", sol: "D")
questions << Question.new(id: "5", q: "In the zombie apocalypse, what would be your weapon of choice?", a: "Poison", b: "nuclear bomb", c: "Fork", d: "chili power", sol: "B")
questions << Question.new(id: "6", q: "What food should you eat to avoid Dracula on Halloween?", a: "Sushi", b: "Tomato Juice", c: "Carrots", d: "Garlic", sol: "D")
questions << Question.new(id: "7", q: "People thought an owl could change into which of the following?", a: "Witch", b: "Ghost", c: "Vampire", d: "Wolf", sol: "A")
questions << Question.new(id: "8", q: "A Large round metal container used for megical things.?", a: "Pan", b: "Personal Computer", c: "Pot", d: "Cauldron", sol: "B")
questions << Question.new(id: "9", q: "A spirit of a dead person represented as a pale, transparent image?", a: "Skeleton", b: "Mummy", c: "A ghost, comes alive", d: "Me friday night at a hackathon", sol: "C")
questions << Question.new(id: "10", q: "Nocturnal small animals that look like mice with wings?", a: "Bats", b: "Rats", c: "Owls", d: "Le Wagon Students", sol: "A")

puts "-----------------------------------------------------------------------------------------------------------"
puts "HOOO HOOOO Hello! Welcome to the Haaaawwwllloooweeeen quiz!"
puts "If you think you are scary enough you can try answer the next 10 questions."
puts "You got 4 possible answers to choose from - one of them is correct."
puts "If you answer all 10 questions correctly, you win."
puts "If you answer ONE question wrong you will DIIIIIEEEEEE painfully and will be thrown in the whiches pot!!!"
puts "-----------------------------------------------------------------------------------------------------------"
puts "Are you ready to play?"
puts "1. Start the game"
puts "2. Exit the game"
print "> "

action = gets.chomp.to_i

alive = true
counter = 0

case action
when 1
  while alive && counter < 10
    questions[counter].display
    answer = gets.chomp.upcase
    if answer == questions[counter].sol
      puts "Right answer!"
      puts "Congrats, you won the game!" if counter == 9
      counter += 1
    else
      puts "You loose!"
      alive = false
    end
  end
when 2
  exit
end

exit
# Test