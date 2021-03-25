def palindromo?(palavra)
  palavra.eql?(palavra.reverse)
end

puts palindromo?("radar")
puts palindromo?("evil")