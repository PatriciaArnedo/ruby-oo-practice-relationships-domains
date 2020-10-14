
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

    def new_role(role, character, actor, show=nil)
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
        self.all.max_by{|movie| movie.actor_count}
    end

end