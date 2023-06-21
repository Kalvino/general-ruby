numbers = [1, 2, 3, 4, 5, 1, 1, 2, 2, 2]

def mode(array)
  mode_number = nil
  array.inject do |memo, num2|
    mode_number = if array.count(memo) <= array.count(num2)
                    num2
                  else
                    memo
                  end
  end
  puts mode_number
end

mode(numbers)
# # # # # #  start_ck(numbers)
# # # # arr1 = [0,1]

# # # # (1...20).inject(arr1) do |fib|
# # # #     arr1 << fib.last(2).reduce(:+)
# # # # end

# # 1...100.inject(arr) do |fib|
# #   arr1 << fib.last(2).reduce(:+)
# # end

# # # # puts arr1

# # # even_numbers = []

# # # numbers = [1,4,42,3,4,5,6]

# # # # numbers.each do |n|
# # # #     if n.even?
# # # #         even_numbers << n
# # # #     end
# # # # end

# # # # even = numbers.select(&:even?)
# # # # odd = numbers.select(&:odd?)

# # # # puts even
# # # # print odd

# class Klass
#     def hello(*args)
#         puts "Hello " + args.join(' ')
#     end
# end

# k = Klass.new
# k.send :hello, "Robert", "Kamulu"

# def partition(op, list)
#     list.select { |n|
#         n.send(op, list.first)
#     }
# end

# # less = partition(:<, numbers)
# # greater = partition(:>, numbers)

# def quick_sort(list)
#     return [] if list.empty?

#     quick_sort(partition(:<, list)) + [list.first] + quick_sort(partition(:>, list))
# end

# sorted = quick_sort(numbers)

# puts sorted

# # # def can_create_word(word, characters)
# # #     word.each_char.all? { |c| word.count(c) <= characters.count(c) }
# # # end

# def can_create_word(word, _character)
#   word.each_char.all? { |c| word.count(c) <= characters.count(c) }
# end

# # # # puts can_create_word("balaa", "bbaaaaaa")

# module Prepended
#   def sayy
#     puts 'Module hello manure man :)'
#     super
#   end
# end

# class MethodUser
#   include Prepended

#   def say
#     puts 'Hello from class'
#   end
# end

# MethodUser.new.sayy

# # # # include - adds the module’s methods as instance methods to it’s including class.
# # # # extend -  adds the module’s methods as class methods to it’s including class.
# # # # prepend - same as include but inserts the method before the including class

# # # # profilers

# # # # rack-mini-profiler,
# # # # DevTrace
# # # # Rails Panel

# # # # linting

# # # # rubocop

# # # # SELECT * FROM t_mobile_vendor vendor LEFT OUTER JOIN t_phone_model model ON model.vendor_id=vendor.vendor_id

# # # User.order(first_name: :desc).limit(5) #By default SQL String limit 255 character
# # # #Ex:- :limit => 40

# # # # N+1 problem

# # # # solution
# # # # - Solution – Eager Loading - using includes which ensures that all the associated datas specified are loaded with the minimum number of queries.
# # # #     e.g. @recent_articles = Article.order(published_at: :desc).includes(:authors).limit(5)

# # # # testing
# # # # - Bullet gem - helps you monitor the queries your application is making to the database and notifies you of any N+1 scenarios.
# # # # Interestingly, it also notifies you of any unused eager loads

# # # # class AddIsMarriedToUsers < ActiveRecord::Migrations
# # # #     def up
# # # #       create_table :users do |t|
# # # #         t.string :name
# # # #         t.string :description
# # # #         t.boolean :is_married, default: false

# # # #         t.timestamps
# # # #       end
# # # #     end

# # # #     def down
# # # #       drop_table :users
# # # #     end

# # # #   end

# # # # Metaprogramming is a programming technique in which computer programs have the ability to treat other programs as their data

# # # x = 1
# # # class MyClass
# # #   y = 2
# # #   def foo
# # #     z = 4
# # #     y ||= 0
# # #     puts z + y
# # #   end
# # #   define_method :bar do |x|
# # #     z = 5
# # #     y ||= 0
# # #     puts z + y + x
# # #   end
# # # end
# # # my_class = MyClass.new
# # # my_class.foo
# # # my_class.bar(10)
# # # my_class.bar

# # # times_2 = -> (x) { x*2} #lambda

# # def selection_sort(array)
# #   l = array.length
# #   for i in 0...l-1
# #     for j in i+1...l
# #       if array[i] > array[j]
# #         temp=array[i]
# #         array[i] = array[j]
# #         array[j] = temp
# #       end
# #     end
# #   end
# #   return array
# # end

def selection_sort(arr)
  len = arr.length

  for i in 0...len
    for j in i + 1...len
      next unless arr[i] > arr[j]

      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
    end
  end
  arr
end

# # array = [1,4,8,2,5,9,6,7,10]
# # puts selection_sort(array)

# # def linear_search(array, value)
# #   array.each do |el|
# #     if el == value
# #       puts "Found the value #{value}"
# #       return value
# #     elsif el > value
# #       break
# #     end
# #   end
# # end

# # array = (1..100).to_a
# # puts linear_search(array, 999)

# # semaphore = Mutex.new

# # a = Thread.new {
# #   semaphore.synchronize{
# #     #share resource
# #   }
# # }

# # b = Thread.new {
# # #   semaphore.synchronize{
# # #     #shared resource
# # #   }
# # # }

def fib(n)
  return 'Invalid' if n.nil?

  first_num = 0
  second_num = 1
  return first_num if n == 1
  return second_num if n == 2

  if n < 2

  end

  (n - 2).times do
    first_num, second_num = second_num, first_num + second_num
  end

  puts second_num
end

fib(20)

# # def fib(number)
# #   first_num, second_num = [0,1]

# #   (number-1).times do
# #     first_num,second_num=second_num, first_num + second_num
# #   end

# #   puts first_num

# # end

# # # 0,1,1,2,3,5,8
# # fib(0)

# # def fib(n)
# #   if n < 2
# #     n
# #   else
# #     fib(n-1) + fib(n-2)
# #   end

# # end

def fibb(n)
  if n < 2
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

# # puts fib(1)

# ### proc = Proc.new
# # large = proc {|n| n > 6}
# # medium = Proc.new {|n| n <= 6 && n >= 4}
# # small = Proc.new {|n| n < 4}

# # 0.upto 10 do |num|
# #   print "The number #{num} is "

# #   case num
# #   when large
# #     puts "a large number"
# #   when medium
# #     puts "a medium number"
# #   when small
# #     puts "a small number"
# #   else
# #     puts "the number can't be classified"
# #   end
# # end

# # ####calling a proc
# # puts large.call(10)
# # puts large.(2)
# # puts large[2]
# # puts large === 2

# # # def blocky
# # #   yield if block_given?
# # # end

# # # blocky { puts "This is a block" }

# # # class Array
# # #   def randomix(&b)
# # #     p b
# # #     shuffle.each do |el|
# # #       yield
# # #       # b.call(el)
# # #     end
# # #   end
# # # end

# # # [1,2,3,5,4,8,].randomix do |el|
# # #   puts el
# # # end

# # ## Lambda enforces arity - parameter and arguments much up

# # lam = lambda do |a|
# #   puts "I am a lambda man! #{a} was passed to me!"
# # end

# # lam.call(2)

# # def run_blocks(b)
# #   puts "Starting to run a block"
# #   b.call
# #   puts "Finished runing a block!"
# # end

# # def wrapper
# #   run_blocks lambda { puts "Lambda running!";return }
# #   run_blocks proc { puts "Proc running!"; return}
# # end

# # wrapper

# # def multiplier(m)
# #   proc  do |n|
# #     n * m
# #   end
# # end

# # doubler = multiplier(2)
# # trippler = multiplier(3)

# # puts doubler[5]
# # puts trippler[6]

# # data-structures
# # - primitive/built_in data_structures - containing pure, simple values of a kind
# #  -boolean, byte, char, short, int, long, float and double

# # - none_primitive/user_defined
# #  -arrays
# #  -lists
# #   - linear
# #    - stack
# #    - queue
# #   - non_linear
# #    - tree
# #    - graph
# #  -files

# # Data Object
# # Data Object represents an object having a data.
# # Char is a single alphabet where as String is a sequence of characters.

# # factorial

# # def fact(n)
# #   (1..n).reduce(:*) || 1
# # end

# # puts fact(4)
# # puts fact(2)

# # puts fact(7)

# # def combinations(quantity,combination)
# #   possible_combination = fact(quantity)/fact(quantity - combination)
# # end

# # puts combinations(4,2)

# # +------------------+----------------------+
# # | Name Begins With |    Variable Scope    |
# # +------------------+----------------------+
# # | $                | A global variable    |
# # | @                | An instance variable |
# # | [a-z] or _       | A local variable     |
# # | [A-Z]            | A constant           |
# # | @@               | A class variable     |
# # +------------------+----------------------+

# # puts "Type your name:"
# # name = gets #
# # puts "Your name is #{name}"

# # time = %x{time}
# # puts time

# # %i
# # Array of Symbols

# # %q
# # String

# # %r
# # Regular Expression

# # %s
# # Symbol

# # %w
# # Array of Strings

# # %x
# # # Backtick (capture subshell result)

# # class Calvin
# #   attr_accessor :name, :age
# # end

# # # class Calvin
# # #   def name
# # #     @name
# # #   end

# # #   def name=(new_name)
# # #     @name = new_name
# # #   end

# # # end

# # b = Calvin.new("VIno", 39)

# # puts b.name
# # puts b.age

# # class Spacee
# #   def initialize(name)
# #     @name = name
# #   end

# #   def ==(other)
# #     name == other.name
# #   end

# # end

# # sp1 = Spacee.new('Vino')
# # sp2 = Spacee.new('Vino')

# # puts sp1.equal?(sp2)
# # puts sp1.eql? (sp2)
# # puts sp1 ==sp2

# # def couter(head)
# #   counter
# # end

# # class MyException < StandardError
# #   def initialize (msg = "Default Message", exc_type="custom")
# #     @exception_type = exc_type
# #     super(msg)
# #   end
# # end

# # begin
# #   raise MyException.new('Wuololo ree', 'custom')

# # rescue  => e
# #   puts e.msg
# #   puts e.exc_type
# # end

# # user =  User.new
# # puts user.error

# # render json: { error: 'Not Authorized' }, status: 401

# # str = "Can't be changed"
# # str.freeze

# # begin
# #   str << "Change brooo!"
# # rescue => e
# #   puts "#{e.class} #{e}"
# # end

# # require 'thread'

# # class ThreadSafe
# #   def initialize
# #     @semaphore = Mutex.new
# #     @subscribers = []
# #   end

# #   def add_subs(subscriber)
# #     @semaphore.synchronize {
# #       @subscribers += [subscriber]
# #     }
# #   end

# # end

# RSpec.describe "User" do
#   it "has a name" do

#   end
#   it "has address" do
#     raise unless User.new(name: "calvin", address: "Rongo").address == "Rongo"
#   end
# end

# ANIMAL = 'Tiger'
# module Foo
#   ANIMAL = 'Python'
#   class Bar
#     def value1
#       print ANIMAL, ""
#     end
#   end
# end

# class Foo::Bar
#   def value2
#     print ANIMAL, ""
#   end
# end

# Foo::Bar.new.value1
# Foo::Bar.new.value2
