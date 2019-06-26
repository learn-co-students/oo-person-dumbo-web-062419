# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
 
    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        new_hygiene = @hygiene + 4
        self.hygiene=(new_hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        new_hygiene = @hygiene - 3
        self.hygiene=(new_hygiene)
        new_happiness = @happiness + 2
        self.happiness=(new_happiness)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        new_happiness = @happiness + 3
        self.happiness=(new_happiness)
        friend_happiness = friend.happiness + 3
        friend.happiness=(friend_happiness)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            new_happiness = @happiness - 2
            self.happiness=(new_happiness)
            friend_happiness = person.happiness - 2
            person.happiness=(friend_happiness)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            new_happiness = @happiness + 1
            self.happiness=(new_happiness)
            friend_happiness = person.happiness + 1
            person.happiness=(friend_happiness)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
 
 end