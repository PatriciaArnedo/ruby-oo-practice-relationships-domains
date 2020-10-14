
class Role

    attr_accessor :role, :character, :actor, :movie, :show

    @@all = []

    def initialize(role, character, actor, movie=nil, show=nil)
        @role = role
        @character = character
        @actor = actor
        @movie = movie
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end



end