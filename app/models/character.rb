
class Character 

    attr_accessor :name, :actor

    @@all = []

    def initialize(name, actor=nil)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def new_role(role, actor, movie=nil, show=nil)
        Role.new(role, self, actor, movie, show)
    end

    def roles
        Role.all.select{|role| role.character == self}
    end

    def role_count
        self.roles.count
    end

    def characters
        self.roles.map{|role| role.character}
    end

    def self.most_appearances
        appearances = self.all.map{ |character| character.role_count}
        appearances.max{|role_count_a,role_count_b| role_count_a <=> role_count_b}
    end

end