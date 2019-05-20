@users = [
    { username: "mashrur", password: "password1"},
    { username: "mark", password: "1234"},
    { username: "juan", password: "juan"},
]


def validate_password(user)

    i = 1
    succesful = false

    while i <= 3 && succesful == false
        
        puts "Enter your Password"
        entered_password = gets.chomp
    
        if user[:password] == entered_password
            puts "You have succesfully loggedin."
            p user
            succesful = true
        else 
            puts " the password is wrong"
        end

        i += 1
    end

end

def validate_user
    puts "Enter a User please"
    entered_user = gets.chomp

    get_user = @users.select {
        |user| user[:username] == entered_user
    }

    if !get_user.empty?
        validate_password(get_user[0])
    else 
        puts "The user does not exits"
    end
end 

puts "Welcome to the authenticator"
25.times { print '-'}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
25.times { print '-'}
puts

validate_user