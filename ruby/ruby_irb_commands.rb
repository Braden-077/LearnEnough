# frozen_string_literal: true

require './palindrome.rb'
require './functional.rb'

# You can either run these as an irb or by doing 'ruby ruby_irb_commands.rb'
# I do recommend running these in an irb to make things easier to read and understand. If you follow my suggestion, don't use puts unless the tutorial says so as you're reading.
puts 'Hello, world!'
# Note: testing differences between
print 'Hello, world!'
puts "hello, world!", "how's it going?"
puts 'Hello, world!'
puts ''
puts "hello\tgoodbye"
puts "hello\ngoodbye"
puts 'hello\tgoodbye'
puts 'hello\ngoodbye'
puts 'foo' + 'bar'
puts 'ant' + 'bat' + 'cat'
puts first_name = 'first'
puts last_name = 'last'
puts first_name + ' ' + last_name
puts "#{first_name} is my first name!"
puts "#{last_name} is my last name!"
puts "#{first_name} #{last_name}" 
puts '#{first_name} #{last_name}' # Note: expect this one to fail.
puts 'It\'s not easy being green'
puts city = 'city'
puts state = 'state'
puts "#{city}, #{state}"
puts "badger".length
puts "".length
puts "badger".length > 3
puts "badger".length > 6
puts "badger".length >= 6
puts "badger".length < 10
puts "badger".length == 6
puts "ant bat cat".split(" ") 
puts "ant,bat,cat".split(",")
puts "ant, bat, cat".split(", ")
puts "antheybatheycathey".split("hey")
puts "badger".split("")
puts soliloquy = "To be, or not to be, that is the question:"
puts a = ["badger", 42, soliloquy.include?("To be")]
puts a[2]
puts a[3] # Expect it to be nil.
puts a[-2]
puts a.last
puts a.first
puts a == [42, 8, 17, 99]
puts a.slice(2, 2)
puts a.slice(1..3)
puts (1..10).to_a
puts ('a'..'z').to_a
puts a = ('a'..'z').to_a
puts a.slice(0..12)
puts a = [42, 8, 17, 99]
puts a.include?(42)
puts a.include?("foo")
puts a.sort 
puts a # Note: a hasn't changed!
puts a.sort!
puts a # Now it has!
puts a.reverse 
puts a # It hasn't changed yet!
puts a.push(6)
puts a.push('foo')
puts a.pop 
puts a.pop
puts a.pop
puts a
puts the_answer_to_life_the_universe_and_everything = a.pop
puts a << "badger"
puts a << "ant" << "bat" << "cat"
puts a = ["ant", "bat", "cat", 42]
puts a.join
puts a.join(', ')
puts a.join(' -- ')
puts  1 + 1
puts 2 - 3
puts 2 * 3
puts 10/5
puts 10/4
puts 2/3
puts 10/4.0
puts 2/3.0
puts Math::PI
puts Math.sqrt(2)
puts Math.cos(2*Math::PI)
puts Math.log(Math::E)
puts Math.log(10)
puts Math.log10(10)
puts Math.log10(1000000)
puts Math.log10(Math::E)
puts 2**3
puts Math::E**100
puts tau = 2 * Math::PI
puts tau.to_s
puts 6.283185307179586.to_s # From float to string
puts "6.283185307179586".to_f # From string to float
puts "6".to_i # From string to integer
puts s = String.new("A man, a plan, a canal—Panama!")
puts s.split(", ")
puts a = Array.new
puts a << 3 << 4
puts a << "hello, world!"
puts now = Time.new
puts now = Time.now
puts now.year
puts now.day
puts now.month
puts now.hour
puts moon_landing = Time.new(1969, 7, 20, 20, 17, 40)
puts moon_landing.day
puts moon_landing = Time.utc(1969, 7, 20, 20, 17, 40)
puts now = Time.now.utc
puts now - moon_landing
puts moon_landing.wday # .wday asks what week day
puts DAYNAMES = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
puts DAYNAMES[moon_landing.wday] 
puts DAYNAMES[Time.now.wday]
puts zip_code = /\d{5}/
puts "no match".match(zip_code)
puts "Beverly Hills 90210".match(zip_code)
puts s = 'Beverly Hils 90210'
puts "It's got a ZIP code!" if s.match(zip_code)
puts s =  "Beverly Hills 90210 was a '90s TV show set in Los Angeles."
puts s += " 91125 is another ZIP code in the Los Angeles area."
puts s.scan(zip_code)
puts s.scan(/[A-Z]{2,}/)
puts "ant bat cat duck".split(" ")
puts "ant bat cat duck".split(/\s+/)
puts "ant    bat\tcat\nduck".split(/\s+/)
puts "ant    bat\tcat\nduck".split
puts user = {}
puts user["first_name"] = "First"
puts user["last_name"] = "Last" 
puts user["first_name"]       
puts user["last_name"]
puts user["nonexistent"]
puts user 
puts moonman = { "first_name" => "Buzz", "last_name" => "Aldrin" }
puts "name".split('')
# Lines below are commented out due to errors
# :name.split('')
# :foo-bar
# :2foo
puts :"foo-bar"
puts :"2foo"
puts user = { :name => "Michael Hartl", :email => "michael@example.com" }
puts user[:name] 
puts user[:email]
puts user = { name: "Michael Hartl", email: "michael@example.com" }
puts params = {}   
puts params[:user] = { name: "Michael Hartl", email: "mhartl@example.com" }
puts params
puts params[:user][:email]
puts flash = { success: "It worked!", danger: "It failed." }
puts (1..5).to_a  
puts (1..5).to_a.inspect
puts :name, :name.inspect
puts "It worked!", "It worked!".inspect
puts p :name 
puts "hello, world!"
puts("hello, world!")
puts "racecar".split("")
puts a = [ 17, 42, 8, 99 ]
puts a.reverse
puts ["r", "a", "c", "e", "c", "a", "r"].join
puts "Racecar".split("").reverse.join
puts "Racecar".chars.reverse.join
puts "Racecar".reverse
puts "Racecar".downcase.reverse
# NOTE: palindrome loading commands only for IRB due to error loading file.
# puts load './palindrome.rb'
# puts palindrome?("racecar")
# puts palindrome?("Racecar")
# puts load './palindrome.rb'
# puts palindrome?("Racecar")
# puts load './plaindrome.rb'
# puts palindrome?("Racecar")
# puts palindrome?("Able was I ere I saw Elba")
puts (1..5).each { |i| puts 2**i }
3.times { puts "Betelgeuse!" } 
puts [1, 2, 3, 4].map { |n| n*n }
puts ["ALICE", "BOB", "CHARLIE"].map { |name| name.downcase }
puts 16 % 2;
puts 17 % 2;
puts 16 % 2 == 0;
puts 17 % 2 == 0;
puts [1, 2, 3, 4, 5, 6, 7, 8].select { |n| n % 2 == 0}
puts [1, 2, 3, 4, 5, 6, 7, 8].select { |n| n.even? } # Note: Line 190 and 191 have the same outcome.
puts (1..8).select(&:even?)
puts (1..8).select(&:even?)
# load "./palindrome.rb"
# puts phrase = Phrase.new("Racecar")
# puts phrase.content
# puts palindrome?(phrase.content)
# TO RUN TESTS FOR CHAPTER 8:
# $ cd braden_palindrome
# $ bundle exec rake test
puts text = File.read('phrases.txt')
puts s = 'supercalifragilisticexpialidocious'; 1 + 2
puts text = File.read('phrases.txt'); 0
puts text.length
puts text.split("\n")[0]