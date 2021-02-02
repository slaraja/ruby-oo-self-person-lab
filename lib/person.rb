class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0 
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0 
    end

def happy?
    happiness > 7
end

def clean?
    hygiene > 7
end

def get_paid(salary)
    self.bank_account += salary
# method should accept a salary amount and add this to the person's bank account
    "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness += 2 # increment the person's happiness by two points,
    self.hygiene -= 3     # decrease their hygiene by three points
    "♪ another one bites the dust ♫"
end

def call_friend(friend)
    [friend, self].each { |happy| happy.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
    people = [person, self]
    if topic == "politics"
         first, second = ["partisan", "lobbyist"]
    people.each { |h| h.happiness -= 2 }
    elsif topic == "weather"
          people.each { |h| h.happiness += 1 }
          first, second = ["sun", "rain"]
    else topic == "other"
        "blah blah blah blah"
    end
    first ||= "blah"
    second ||= "blah"
    original_convo = "blah blah #{first} blah #{second}"
end
end