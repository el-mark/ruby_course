require 'bcrypt'

class User
    attr_accessor :name, :email, :password
    
    def initialize(name, email, password)
        @name = name
        @email = email
        @password = set_password(password)
    end

    def set_password(password)
        BCrypt::Password.create(password)
    end

    def get_password
        BCrypt::Password.new(@password)
    end

    def log_in(email, password)
        b_password = get_password

        if (@email == email && b_password == password)
            'Login successful'
        else
            'Login failed'
        end
    end

end

mark = User.new('Mark', 'mharmsenr@example.com', 'secretword')

# puts mark.password
# puts mark.name
# puts mark.email

puts 'First login attempt (should fail)'
puts mark.log_in('mharmsenr@example.com', 'secretword2')

puts 'First login attempt (should work)'
puts mark.log_in('mharmsenr@example.com', 'secretword')