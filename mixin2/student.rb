require_relative 'crud'

class Student
    include Crud
    # Attributes
    attr_accessor :name, :mood, :age, :password

    # Initiate object with variables
    def initialize(name, mood, age, password)
        @name = name
        @mood = mood
        @age = age
        @password = password
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

mark = Student.new('Mark', 'Proud of me', 29, 'secretword')
# Change attribute
mark.age = 30
mark.who_is
# Print specific attribute
hashed_password = mark.create_hash_digest(mark.password)
puts hashed_password
