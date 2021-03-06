class Word < ActiveRecord::Base

	def self.reverse_letters(letters)
	  # create a new array of 2 items
	  length = letters.length
	  reversed_letters = Array.new(length)
	 
	  # loop through letters and keep index
	  letters.each_with_index do |letter, index|
	    reversed_letters[length - index - 1] = letter
	  end
	 
	  reversed_letters
	end


	require_relative = 'reverse_letters'
	def self.find_anagrams(letters)
		length = letters.length

		#Make the letters an array
		letters = letters.split("")
		anagrams = []

		letters.each_with_index do |letter, index|
			remaining_letters = letters.select {|l| l != letter}
			anagrams << letter + remaining_letters.join
			
			anagrams << letter + reverse_letters(remaining_letters).join
		end

		anagrams


	end



end