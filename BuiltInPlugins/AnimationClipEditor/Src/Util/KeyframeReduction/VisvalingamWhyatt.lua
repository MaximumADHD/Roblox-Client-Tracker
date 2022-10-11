--strict
--[[ Implements Visvalingam-Whyatt algorithm for keyframe reduction.
    https://hull-repository.worktribe.com/output/459275
	This takes an ordered array of N-D points and sorts that array by descending
	importance.
]]

local Parent = script.Parent

local MinHeap = require(Parent.MinHeap)
local Triangle = require(Parent.Triangle)
local Types = require(Parent.Types)

--[[ We have an array of N-d vertices as input. Each vertex is associated with
    the summit of a triangle formed by the previous vertex, the vertex, and the
    next vertex. As such, each vertex (except the first/last ones of the array)
    is associated with the area of that triangle in the Point structure:
    {
        vertex = {tck, anglePart1, anglePart2, ... },
        area = <area of the triangle whose "central" summit is vertex
    }
]]
return function(vertices: { Types.VectorN }): { number }
	if #vertices < 3 then
		local ticks = {}
		for _, vertex in vertices do
			table.insert(ticks, vertex[1])
		end
		return ticks
	end

	local heap = MinHeap.new()

	-- Populate the array of triangles with copies of the points.
	-- Populate the minHeap.
	local triangles = {}
	local lastTriangle = nil

	for i = 2, #vertices - 1 do
		-- Build the triangle and move it to the array and the heap
		local triangle = Triangle.new(vertices[i - 1], vertices[i], vertices[i + 1])

		-- Attach the area of the triangle to the middle point (b)
		triangle:updateArea()

		-- Set up the linked list
		triangle.prev = lastTriangle
		if triangle.prev then
			triangle.prev.next = triangle
		end

		heap:push(triangle)
		lastTriangle = triangle
	end

	local function update(tr: Types.Triangle): ()
		heap:remove(tr)
		tr:updateArea()
		heap:push(tr)
	end

	local ticks = table.create(#vertices)
	ticks[1] = vertices[1][1]
	ticks[2] = vertices[#vertices][1]
	local index = #vertices

	local triangle = heap:pop()
	while triangle do
		ticks[index] = triangle.b[1]
		index -= 1

		if triangle.prev then
			triangle.prev.next = triangle.next
			triangle.prev.c = triangle.c
			update(triangle.prev)
		end

		if triangle.next then
			triangle.next.prev = triangle.prev
			triangle.next.a = triangle.a
			update(triangle.next)
		end

		triangle = heap:pop()
	end

	return ticks
end
