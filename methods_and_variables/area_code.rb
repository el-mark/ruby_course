dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  # somehash.each do |city_name, value|
  #   puts key
  # end
  return somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, city_name)
 area_code = somehash[city_name]
 if !area_code.nil?
  return "The area code is: #{area_code}"
 else 
  return "You entered an invalid city name"
 end
end
 
# Execution flow
loop do
  puts "Do you whant to get the area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts get_city_names(dial_book)
  puts "Type de city wich you whant the area code."
  city_name = gets.chomp.downcase

  puts get_area_code(dial_book, city_name)

end
