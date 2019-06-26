# your code goes here
class Person

	attr_accessor :bank_account
	attr_reader :name, :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happines=
		@happiness
	end


	def happiness=(happy)
		if happy > 10
			@happiness = 10
		elsif happy < 0
			@happiness = 0
		else
			@happiness = happy
		end
	end

	def hygiene
		@hygiene
	end

	def hygiene=(hyge)
		if hyge > 10
			@hygiene = 10
		elsif hyge < 0
			@hygiene = 0
		else
			@hygiene = hyge
		end
	end

	def clean?
		if @hygiene > 7
			true
		else
			false
		end
	end

	def happy?
		if @happiness > 7
			true
		else
			false
		end
	end

	def get_paid(salary)
		self.bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.happiness += 2
		self.hygiene -= 3
		"♪ another one bites the dust ♫"
	end

	def call_friend(person)
		self.happiness += 3
		person.happiness += 3
		"Hi #{person.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			person.happiness -= 2
			self.happiness -= 2
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			person.happiness += 1
			self.happiness += 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end


end