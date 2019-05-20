class Student
    # Attributes
    attr_accessor :name, :mood, :age, :species

    # Initiate object with variables
    def initialize(name, mood, age)
        @name = name
        @mood = mood
        @age = age
    end

    # Define methods
    def who_is
        puts "My name is #{@name}, and I feel #{@mood}. I'am #{@age} years old."
    end

    # # Setter
    # def last_name=(last_name)
    #     @last_name = last_name
    # end

    # # Getter
    # def last_name
    #     @last_name
    # end
end

mark = Student.new('Mark', 'Proud of me', 29)
# Change attribute
mark.age = 30
mark.who_is
# Print specific attribute
puts mark.mood