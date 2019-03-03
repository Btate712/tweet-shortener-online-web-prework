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
  new_array = []
  tweet_array.each do |word|
    new_array.push(dictionary(word))
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end
