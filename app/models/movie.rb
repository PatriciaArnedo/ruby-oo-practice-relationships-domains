
class Movie

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def new_role(role, character, actor, movie=nil, show=nil)
        Role.new(role, character, actor, self, show)
    end

    def roles
        Role.all.select{|role| role.movie == self}
    end

    def characters
        self.roles.map{|role| role.character}
    end

    def actors
        self.roles.map{|role| role.actor}
    end

    def actor_count
        self.actors.uniq.count
    end

    def self.most_actors
        actor_counts = self.all.map{|movie| movie.actor_count}
        actor_count.max{|a,b| a <=> b}
    end

end