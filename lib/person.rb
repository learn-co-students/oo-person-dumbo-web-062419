# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness

    def initialize(name, balance=25, happiness=8)
        @name = name
        @bank_account = balance
        @happiness = happiness.clamp(1,10)
    end

    # def clamp(happiness, 1, 10)
    #     [happiness, 1,10].sort[1]
    # end


end