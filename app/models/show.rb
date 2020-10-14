
class Show

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def new_role(role, character, actor, movie=nil)
        Role.new(role, character, actor, movie, self)
    end

    def roles
        Role.all.select{|role| role.show == self}
    end

    def characters
        self.roles.map{ |role| role.character}
    end


    def on_the_big_screen
        roles_array = Role.all.select{|role| role.movie != nil}
        movies = roles_array.map{|role| role.movie}
        movies.select{|movie| movie.title == self.title}
    end

end