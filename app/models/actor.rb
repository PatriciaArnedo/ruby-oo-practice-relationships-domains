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
        char_counts = self.all.map{|actor| actor.character_count}
        char_counts.max{|a,b| a <=> b}
    end
end