
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

    def new_role(role, character, actor, show=nil)
        Role.new(role, character, self, show)
    end

    def roles
        Role.all.select{|role| role.show == self}
    end

    def characters
        self.roles.map{|role| role.character}
    end


    def on_the_big_screen
        movies = Role.all.select{|role| role.movie != nil}
        movie_titles = movies.map{|movie| movie.title}
        movie_titles.select{|title| title == self.title}
    end

end