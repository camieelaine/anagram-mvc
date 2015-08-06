
# Displays the index page
#get '/'
 # erb :index
#end


# Display the results: list of anagrams for a word

get '/anagrams/:word' do
  @word = params[:word]
  @anagrams = Word.find_anagrams(@word)
  erb :show
end

# Take the word from the params and redirect to our new /anagrams/:word route
post '/' do
  @word = params[:word]
  redirect "/anagrams/#{@word}"
end