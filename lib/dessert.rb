class Dessert
 	def initialize(name, calories)
		# YOUR CODE HERE
		@name = name
		@calories = calories
	end

	#setter method
	def name=(newname)
		@name = newname
	end
	#getter method
	def name
		@name
	end

	def calories
		@calories
	end

	#setter method
	def calories=(newcals)
		@calories = newcals
	end


 	def healthy?
    	# YOUR CODE HERE
		@calories < 200
  	end

  	def delicious?
    	# YOUR CODE HERE
		return true # returns true for all
  	end
end

#part B
class JellyBean < Dessert
 	def initialize(flavor)
    	# YOUR CODE HERE
		@name = "#{flavor} jelly bean" 
		@calories = 5 
		@flavor = flavor
  	end

	def flavor
		@flavor
	end

	def flavor=(newflavor)
		@flavor = newflavor
  	end

	def delicious?
    	# YOUR CODE HERE
		if @flavor.include?("licorice")
			return false
		else
			return true
		end
  	end
end
