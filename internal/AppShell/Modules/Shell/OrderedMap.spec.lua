return function()
	local OrderedMap = require(script.Parent.OrderedMap)

	local function getId(item)
		return item
	end

	local function compare(a, b)
		return a < b
	end

	describe("new", function()
		it("should accept getId, a sort predicate and a list of items", function()
			local map = OrderedMap.new(getId, compare, 3, 1, 2)

			expect(map).to.be.a("table")
			expect(#map.keys).to.equal(3)

			for _, key in ipairs(map.keys) do
				local value = map.values[key]
				expect(value).to.equal(key)
			end
		end)
	end)

	describe("Insert", function()
		it("should insert elements in order", function()
			local map = OrderedMap.new(getId, compare, 2)

			expect(map).to.be.a("table")

			map = map:Insert(1)

			expect(map).to.be.a("table")

			for _, key in ipairs(map.keys) do
				local value = map.values[key]
				expect(value).to.equal(key)
			end
		end)
	end)

	describe("Delete", function()
		it("should delete elements by key", function()
			local map = OrderedMap.new(getId, compare, 1, 2, 3)

			expect(map).to.be.a("table")

			map = map:Delete(2)

			expect(map).to.be.a("table")

			for _, key in ipairs(map.keys) do
				local value = map.values[key]

				expect(value).to.equal(key)
				expect(value).never.to.equal(2)
			end
		end)
	end)

	describe("First", function()
		it("should return nil if no elements in the list", function()
			local map = OrderedMap.new(getId, compare)

			expect(map).to.be.a("table")

			expect(map:First()).to.equal(nil)
		end)

		it("should handle modifications", function()
			local map = OrderedMap.new(getId, compare, 1, 2, 3)

			expect(map).to.be.a("table")

			expect(map:First()).to.equal(1)

			map = map:Delete(1)

			expect(map:First()).to.equal(2)

			map = map:Delete(2)

			expect(map:First()).to.equal(3)

			map = map:Delete(3)

			expect(map:First()).to.equal(nil)

			map = map:Insert(5)

			expect(map:First()).to.equal(5)

			map = map:Insert(1)

			expect(map:First()).to.equal(1)
		end)
	end)


	describe("Last", function()
		it("should return nil if no elements in the list", function()
			local map = OrderedMap.new(getId, compare)

			expect(map).to.be.a("table")

			expect(map:Last()).to.equal(nil)
		end)

		it("should handle modifications", function()
			local map = OrderedMap.new(getId, compare, 1, 2, 3)

			expect(map).to.be.a("table")

			expect(map:Last()).to.equal(3)

			map = map:Delete(1)

			expect(map:Last()).to.equal(3)

			map = map:Delete(3)

			expect(map:Last()).to.equal(2)

			map = map:Delete(2)

			expect(map:Last()).to.equal(nil)

			map = map:Insert(5)

			expect(map:First()).to.equal(5)
		end)
	end)

	describe("CreateIterator", function()
		it("should iterate elements in order", function()
			local values = {"a", "b", "c", "d"}
			local map = OrderedMap.new(getId, compare, unpack(values))

			expect(map).to.be.ok()

			local lastIndex = 0

			for key, value, index in map:CreateIterator() do
				expect(key).to.equal(value)
				expect(values[index]).to.equal(value)

				expect(index > lastIndex).to.equal(true)
				lastIndex = index
			end
		end)

		it("should work on empty map", function()
			local map = OrderedMap.new(getId, compare)

			expect(map).to.be.ok()

			for _, _ in map:CreateIterator() do
				error("This should never be called!")
			end
		end)
	end)

	describe("CreateReverseIterator", function()
		it("should iterate elements in order", function()
			local values = {"a", "b", "c", "d"}
			local map = OrderedMap.new(getId, compare, unpack(values))

			expect(map).to.be.ok()

			local lastIndex = math.huge

			for key, value, index in map:CreateReverseIterator() do
				expect(key).to.equal(value)
				expect(values[index]).to.equal(value)

				expect(index < lastIndex).to.equal(true)
				lastIndex = index
			end
		end)

		it("should work on empty map", function()
			local map = OrderedMap.new(getId, compare)

			expect(map).to.be.ok()

			for _, _ in map:CreateReverseIterator() do
				error("This should never be called!")
			end
		end)
	end)

	describe("Map", function()
		it("should use the map predicate", function()
			local map = OrderedMap.new(getId, compare, 1, 2, 3, 4)

			expect(map).to.be.ok()

			local result = map:Map(function(value, key)
				expect(value).to.equal(key)

				return value * 2
			end)

			for index = 1, #result.keys do
				local key = result.keys[index]
				local value = result.values[key]

				expect(value).to.equal(index * 2)
			end
		end)
	end)

	describe("Merge", function()
		it("should merge one map", function()
			local a = OrderedMap.new(getId, compare, 1, 2)

			expect(a).to.be.ok()

			local b = OrderedMap.Merge(a)

			-- This is an optimization
			expect(b).to.equal(a)
		end)

		it("should merge one map with multiple empty maps", function()
			local a = OrderedMap.new(getId, compare, 1, 2)
			local empty = OrderedMap.new(getId, compare)

			expect(a).to.be.ok()
			expect(empty).to.be.ok()

			local b = OrderedMap.Merge(a, empty, empty, empty)

			-- This is a nifty optimization
			expect(b).to.equal(a)
		end)

		it("should merge values into a new map", function()
			local a = OrderedMap.new(getId, compare, 1, 2)
			local b = OrderedMap.new(getId, compare, 2, 3)

			expect(a).to.be.ok()
			expect(b).to.be.ok()

			local c = OrderedMap.Merge(a, b)

			expect(c).to.never.equal(a)
			expect(c).to.never.equal(b)

			expect(c:Length()).to.equal(3)

			for key, value, index in c:CreateIterator() do
				expect(key).to.equal(value)
				expect(key).to.equal(index)
			end
		end)

		it("should work with more than 2 arguments", function()
			local a = OrderedMap.new(getId, compare, 1)
			local b = OrderedMap.new(getId, compare, 2)
			local c = OrderedMap.new(getId, compare, 3)

			local d = OrderedMap.Merge(a, b, c)

			expect(d).never.to.equal(a)
			expect(d).never.to.equal(b)
			expect(d).never.to.equal(c)

			expect(d:Length()).to.equal(3)

			for key, value, index in d:CreateIterator() do
				expect(key).to.equal(value)
				expect(key).to.equal(index)
			end
		end)
	end)
end
