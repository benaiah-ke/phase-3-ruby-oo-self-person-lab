class Person

    def initialize name, bank_account = 25, happiness = 8, hygiene = 8
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happiness= happiness
        if happiness >= 0 && happiness <= 10
            @happiness = happiness
        elsif happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10            
        end
    end

    def hygiene= hygiene
        if hygiene >= 0 && hygiene <= 10
            @hygiene = hygiene
        elsif hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10            
        end
    end

    def happy? 
        happiness > 7 ? true : false
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def get_paid amount
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end

benaiah = Person.new("benaiah")

benaiah.hygiene = 12
 puts benaiah.hygiene