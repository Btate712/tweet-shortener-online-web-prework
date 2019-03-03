def dictionary(word)
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&" }

  if(substitutes.include?(word))
    return substitutes[word]
  else
    return word
  end
end

puts dictionary("too")
puts dictionary("hello")
puts dictionary("world")

