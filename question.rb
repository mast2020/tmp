class Question
  attr_reader :sol
  def initialize(attr = {})
    @id = attr[:id]
    @q = attr[:q]
    @a = attr[:a]
    @b = attr[:b]
    @c = attr[:c]
    @d = attr[:d]
    @sol = attr[:sol]
  end

  def display
    print `clear`
    puts "Question #{@id}/10: #{@q}"
    puts ""
    puts "Answer options (choose only 1):"
    puts "A: #{@a}"
    puts "B: #{@b}"
    puts "C: #{@c}"
    puts "D: #{@d}"
  end
end
