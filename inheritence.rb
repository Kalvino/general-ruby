# 2. INHERITENCE - 'is-a' relationship (moulding your objects for what they are)

class Animal
  def move
    'moving'
  end

  def sound
    'hey'
  end
end

class Mongoose < Animal
  def move
    super + ' like a mongoose'
  end
end

class Human < Animal
  def move
    super + ' like a man'
  end
end

man = Human.new
puts man.move

mong = Mongoose.new
puts mong.move
