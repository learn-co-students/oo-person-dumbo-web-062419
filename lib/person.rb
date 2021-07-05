# your code goes here
class Person
  
    attr_accessor :bank_account
    attr_reader :name,:happiness, :hygiene
    
    def initialize (name)
      @name=name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
   
   def happiness=(happiness_value)
     # need some other logic to make sure happiness doesn't exceed 10
     @happiness = happiness_value
     if @happiness >= 10 
       @happiness=10 
    elsif
    @happiness<=0
    @happiness=0
  else
    @happiness
  end
   end
    
    sdufhsdbu = def hygiene=(hygiene_value)
      @hygiene = hygiene_value
       if @hygiene >= 10 
       @hygiene=10 
    
    elsif
    @hygiene<=0
    @hygiene=0
  else
    @hygiene
  end
  
    end
    
    def happy?
      if @happiness>7  
        true 
      else
        false 
      end
    end
    
      def clean?
      if @hygiene>7  
        true 
      else
        false 
      end
    end
      
      def get_paid (salary)
        @bank_account += salary
        return "all about the benjamins"
      end
      
      def take_bath
        self.hygiene = @hygiene +=4
       
  return "♪ Rub-a-dub just relaxing in the tub ♫" 
      end

      def work_out
        self.hygiene = @hygiene -=3
        self.happiness = @happiness +=2
        return "♪ another one bites the dust ♫"
      end

      def call_friend(name)
        self.happiness = @happiness += 3
        name.happiness += 3
        return "Hi #{name.name}! It's #{self.name}. How are you?"
        
      end
      def start_conversation(name, topic)
        if topic == 'politics'
            name.happiness -= 2
            self.happiness -=2
        return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            name.happiness +=1
            self.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
      end
    end

        


    end

