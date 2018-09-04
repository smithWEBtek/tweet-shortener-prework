require 'pry'

def dictionary
	dictionary = {
		"hello" => 'hi',
		"to" => '2', 
		"two" => '2', 
		"too" => '2', 
		"for, four" => '4',
		'be' => 'b',
		'you' => 'u',
		"at" => "@",
		"and" => "&"
	}
end

def word_substituter(tweet)
	new_array = tweet.split
	new_array.each_with_index do |word, index|
		if dictionary.keys.include?(word)
			new_array[index] = dictionary[word]
		else
			word
		end
	end.join(' ')
end

def bulk_tweet_shortener(array)

end

def selective_tweet_shortener(tweet)	
	# does not shorten tweets that are less than 130 characters
	if tweet.length > 130
		word_substituter(tweet)
	end
end

def shortened_tweet_truncator(tweet)
	# truncates tweets over 140 characters after shortening
	# does not shorten tweets shorter than 140 characters.
end