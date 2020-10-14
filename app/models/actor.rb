# create files for your ruby classes in this directory

class Actor

    #reader writers for name and character
    attr_accessor :name, :character

    @@all = []

    def initialize(name=nil, character=nil)
        @name = name
        @character = character
        @@all << self
    end
    
    def self.all
        @@all
    end

    def characters
        Character.all.select{|character| character.actor == self}
    end

    def character_count
        self.characters.uniq.count
    end

    def self.most_characters
        self.all.max_by{|actor| actor.character_count}
    end
end