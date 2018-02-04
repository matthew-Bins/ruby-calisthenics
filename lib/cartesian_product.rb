class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
	def initialize(a, b)
		@array = Array.new()
		a.each do |x|
			b.each do |y|
				@array << [x, y]
			end
		end
	end

	def each
		return @array.each {|index| yield(index)}
	end

end

a = [1, 2, 3, 4, 5]
b = ['a', 'b', 'c']
result = CartesianProduct.new(a, b)
result.each do |x|
	puts x
end
