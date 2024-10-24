def palindrome?(string)
  cleaned_string = string.downcase.gsub(/[^a-z0-9]/i, '')
  cleaned_string == cleaned_string.reverse
end

# Приклади використання
puts palindrome?("а роза упала на лапу Азора") # true
puts palindrome?("Univer")                      # false
puts palindrome?("101") # true
puts palindrome?("топот") # true