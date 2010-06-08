class Object
	def deep_copy
		Marshal.load(Marshal.dump(self))
	end
end

class Triangle

	def initialize(triangle)
		@triangle = triangle
	end

	def max_path
		return 0 if @triangle[0].nil?
		max = @triangle[0][0]
		max += [get_left.max_path, get_right.max_path].max
	end
	
	def get_left
		get_sub(:left)
	end

	def get_right
		get_sub(:right)
	end

	def get_sub(side)
		new_triangle = @triangle.deep_copy
		new_triangle.each do |row|
			index_to_delete = side == :left ? 0 : row.size - 1
			row.delete_at(index_to_delete)
		end
		new_triangle.delete_at(0)
		Triangle.new(new_triangle)
	end

end

triangle_array = [[75],[95,64],[17,47,82],[18,35,87,10],[20,4,82,47,65],[19,1,23,75,3,34],[88,2,77,73,7,63,67],[99,65,4,28,6,16,70,92],[41,41,26,56,83,40,80,70,33],[41,48,72,33,47,32,37,16,94,29],[53,71,44,65,25,43,91,52,97,51,14],[70,11,33,28,77,73,17,78,39,68,17,57],[91,71,52,38,17,14,91,43,58,50,27,29,48],[63,66,4,68,89,53,67,30,73,16,69,87,40,31],[4,62,98,27,23,9,70,98,73,93,38,53,60,4,23]]

puts Triangle.new(triangle_array).max_path
