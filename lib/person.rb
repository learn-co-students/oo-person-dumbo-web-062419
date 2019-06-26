# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :bank_account, :hygiene
    # :hygiene == @hygiene
    # self.hygiene != @hygiene

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

 

    

    def happiness=(happiness)
        if happiness < 0
            @happiness = 0
        elsif happiness <= 10
            @happiness = happiness
        else
            @happiness = 10
        end
    end
    

    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene <= 10
            @hygiene = hygiene
        else
            @hygiene = 10
        end
    end # == self.hygiene

    def happy?
        @happiness > 7
    end
    
    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        if self.hygiene >= 10
            self.hygiene = 10
        end
        '♪ Rub-a-dub just relaxing in the tub ♫'
        
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It\'s #{self.name}. How are you?"


    end



    
    #binding.pry
end