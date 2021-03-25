palavra = String.new

def palindromo?(palavra)
  palavra.downcase.eql? palavra.downcase.reverse
end

puts palindromo?("radar")
puts palindromo?("evil")