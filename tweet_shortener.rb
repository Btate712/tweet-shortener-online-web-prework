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

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.map do |word|
    word = dictionary(word)
  end
  tweet_array.join(" ")
end

puts word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
