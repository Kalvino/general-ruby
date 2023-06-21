# # ARGV.replace ["file1"]
# File.rename('renameable.txt','nameable.rb')
# File.delete('nameable.rb')

class Vino
  attr_accessor :first_name, :last_name
  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
  end

  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end
end

b = Vino.new('Calvin', 'Odira')

puts b.first_name
b.first_name=("Blo")
b.last_name=("Vino")
puts b.first_name
puts b.last_name

