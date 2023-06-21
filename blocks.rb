3.times do 
    puts "Echo"
end

class Order
    attr_accessor :email, :total

    def initialize (email, total)
        @email = email
        @total = total
    end
    
    def to_s
        "#{email}:$#{total}"
    end
end

orders = []

1.upto(5) do |n|
    orders << Order.new("calvi#{n}", n*10)
end

puts orders

def run_block
    yield if block_given?
end

run_block { puts "libobo"}

class Array
    def random_each(&b)
        p b
        shuffle.each do |el|
            b.call el
        end
    end
end

[1,2,3,4,5].random_each do |el|
    puts el
end


my_proc = Proc.new do |n|
    puts "I am a proc and #{n} was passed to me!!"
end

my_proc.call(10)
my_proc.(20)
my_proc[30]
my_proc === 45




vino_plus = Proc.new do |vf|
    puts "gologlo #{vf}"
end

vino_plus.call(56)


max = Proc.new {|n| n==10 }
min = proc { |n| n==1 }
median= Proc.new { |n| n==5 }
top_of = proc {|n| n > 5}
bottom_of = proc {|n| n < 5}


1.upto(10) do |n|
    print "#{n} - "

    case n
    when max
        puts "Maxumum number is #{n}"
    when min
        puts "Minimum number is #{n}"        
    when median
        puts "Median number is #{n}"
    when top_of
        puts "number above 5"
    when bottom_of
        puts "number below 5"
    else
        puts "number out of range nani!"        
    end
end

# proc does not match up the arguments
# proc == Proc.new
hello_proc = proc do |a,b,c| 
    puts "This is proc1"
end

hello_proc.call
hello_proc.call(1,2,3)

# lambda requires arguments to match up
# lambda == 
hello_lambda = lambda do |a,b,c|
    puts "This is lambda1"
end

hello_lambda.call(1,2,3)


def run_a_proc(p)
    puts "Starting to run proc"
    p.call
    puts "Finished running the proc\n\n"
end

def our_program 
    run_a_proc lambda { puts "I'm lambda"; return}
    run_a_proc proc { puts "I'm proc"; return}
end

our_program

# CLOSURE
def run_proc(p)
    p.call
end

name = "Calvin"
print_a_name = proc { puts name }
name = "John"
run_proc print_a_name

# "John is printed" Closures keeps reference to the variable, not the value

def multiple_generator(multiplier)
    lambda do |n|
        n*multiplier
    end
end

doubler = multiple_generator(2)
tripler = multiple_generator(3)

puts doubler[6]
puts tripler[10]
