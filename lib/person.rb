# your code goes here
require 'pry'
class Person
    attr_reader:name

    def initialize (name, bank_account=25, happiness=8, hygiene=8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end

    def bank_account=(value)
        @bank_account=value
    end

    def bank_account
        @bank_account
    end   

    def get_paid(amount)
        @bank_account+=amount
        "all about the benjamins"
    end
    
    def happiness=(value)
        if value <= 10 && value >=0
        @happiness=value
        elsif value > 10
        @happiness=10
        elsif value <0
        @happiness=0
        else
        nil
        end
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic=="politics"
            self.happiness-=2
            friend.happiness-=2
            "blah blah partisan blah lobbyist"
        elsif topic=="weather"
            self.happiness+=1
            friend.happiness+=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    def happiness
        @happiness
    end

    def happy?
        if @happiness >7
            true
        else
            false
        end
    end

    def hygiene=(value)
        if value <= 10 && value >=0
            @hygiene=value
            elsif value > 10
            @hygiene=10
            elsif value <0
            @hygiene=0
            else
            nil
        end
    end   

    def hygiene
        @hygiene
    end 

    def clean?
        if @hygiene >7
            true
        else
            false
        end
    end

    def take_bath
        value=@hygiene+4
        self.hygiene=(value)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        value=@hygiene-3
        self.hygiene=(value)
        value2=@happiness+2
        self.happiness=(value2)
        "♪ another one bites the dust ♫"
    end
end


brodan=Person.new("Brodan")
brofriend=Person.new("Brofriend")
binding.pry


