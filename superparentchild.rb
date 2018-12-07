class Child

    attr_reader :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def talk
        puts "My name is #{self.name}, I am #{self.age} years old."
    end

end

# Let's make Bart Simpson. 
# "Don't have a cow, man!"

bart = Child.new("Bart Simpson", 10)
bart.talk

# "My name is Bart Simpson, I am 10 years old."

class Parent < Child
    
    attr_reader :children

    def initialize(name2, age2, children = [])
        @children = children
        super(name2, age2)
    end

end

# Let's make Homer Simpson. 
# "D'oh!"

homer = Parent.new("Homer Simpson", 39, [bart])
homer.talk