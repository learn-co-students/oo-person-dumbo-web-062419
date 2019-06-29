# require 'pry.rb'

# your code goes here
class Person

    attr_accessor :bank_account, :happiness
    attr_reader :name, :hygiene
    

    def initialize(name, hygiene = 8)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = hygiene
    end

    def happiness=(num)
        @happiness = num
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
                @happiness = 0
        end
    end

    def hygiene=(num)
        @hygiene = num
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
                @hygiene = 0
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end
        if topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        end
        return "blah blah blah blah blah"
    end

end

john = Person.new("John")

# binding.pry