string = "Though your service is legendary but your food is the worst, it was undercooked. The only thing good was the chicken legs and the dessert was scrumptous"
useful = 2

positiverange4 = ['legendary', 'legend', 'finest', 'insane', 'best'];
positiverange3 = ['favorite', 'favourite', 'fav', 'delicious', 'awesome', 'perfect', 'perfection', 'perfectly', 'scrumptous'];
positiverange2 = ['love', 'courteous', 'great', 'generous', 'tasty', 'pleasent', 'polite'];
positiverange1 = ['like', 'enjoyable', 'enjoy', 'reasonable', 'huge', 'plentiful', 'plenty', 'quick', 'enjoyed', 'fast', 'swift'];
neutralrange   = ['ok', 'fine', 'good', 'nice', 'gud', 'friendly', 'fresh', 'cheap'];
negativerange1 = ['crowded', 'lousy', 'slow', 'bad'];
negativerange2 = ['rude', 'worse', 'undercooked'];
negativerange3 = ['filthy'];
negativerange4 = ['worst', 'terrible', 'horrible', 'disgusting'];

q = string.downcase.gsub(/[^A-Za-z0-9\s]/,"")
words = q.split(" ") 
val = 0
count = 0

words.each do |w|
	if positiverange4.include? w
		val += 4 
		count += 1
	elsif positiverange3.include? w
		val += 3
		count += 1
	elsif positiverange2.include? w
		val += 2
		count += 1
	elsif positiverange1.include? w
		val += 1
		count += 1
	elsif neutralrange.include? w
		val += 0
		count += 1
	elsif negativerange1.include? w
		val -= 1
		count += 1
	elsif negativerange2.include? w
		val -= 2
		count += 1
	elsif negativerange3.include? w
		val -= 3
		count += 1	
	elsif negativerange4.include? w
		val -= 4
		count += 1								
	end
end

FinalVal = val/count.to_f

puts val
puts count
puts FinalVal
#q = words.downcase

# q.each do |w|
#      w.downcase
# end



#puts words

# words2.each do |t|
#   words.each do |u|
#   	if t == u
#   		puts "#{t}"
#   	end	
#   end		
# end