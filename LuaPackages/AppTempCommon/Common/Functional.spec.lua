return function()
	local Functional = require(script.Parent.Functional)

	local function identity(...)
		return ...
	end

	local function add(a, b)
		return a + b
	end

	describe("Filter", function()
		it("should copy lists correctly", function()
			local listA = {1, 2, 3}
			local listB = Functional.Filter(listA, function()
				return true
			end)

			expect(listB).never.to.equal(listA)

			for i = 1, #listB do
				expect(listB[i]).to.equal(listA[i])
			end
		end)

		it("should correctly use the filter predicate", function()
			local listA = {1, 2, 3, 4, 5}
			local listB = Functional.Filter(listA, function(value, key)
				expect(value).to.equal(key)

				return value % 2 == 0
			end)

			expect(listB[1]).to.equal(2)
			expect(listB[2]).to.equal(4)
		end)
	end)

	describe("Map", function()
		it("should copy lists correctly using the identity function", function()
			local listA = {1, 2, 3}
			local listB = Functional.Map(listA, identity)

			expect(listB).never.to.equal(listA)

			for i = 1, #listB do
				expect(listB[i]).to.equal(listA[i])
			end
		end)

		it("should correctly use the map predicate", function()
			local listA = {1, 2, 3}
			local listB = Functional.Map(listA, function(value, key)
				expect(value).to.equal(key)

				return value * 2
			end)

			for i = 1, #listB do
				expect(listB[i]).to.equal(listA[i] * 2)
			end
		end)
	end)

	describe("MapReverse", function()
		it("should copy lists correctly using the identity function", function()
			local listA = {1, 2, 3}
			local listB = Functional.MapReverse(listA, identity)

			expect(listB).never.to.equal(listA)

			for i = 1, #listB do
				expect(listB[i]).to.equal(listA[i])
			end
		end)

		it("should correctly use the map predicate", function()
			local listA = {1, 2, 3}
			local listB = Functional.MapReverse(listA, function(value, key)
				expect(value).to.equal(key)

				return value * 2
			end)

			for i = 1, #listB do
				expect(listB[i]).to.equal(listA[i] * 2)
			end
		end)

		it("should iterate backwards", function()
			local list = {1, 2, 3}
			local nextKey = 3

			Functional.MapReverse(list, function(value, key)
				expect(value).to.equal(nextKey)
				expect(key).to.equal(nextKey)

				nextKey = nextKey - 1
			end)

			expect(nextKey).to.equal(0)
		end)
	end)

	describe("FilterMap", function()
		it("should copy truthy lists using the identity function", function()
			local listA = {1, 2, 3}
			local listB = Functional.FilterMap(listA, identity)

			expect(listB).never.to.equal(listA)

			for i = 1, #listB do
				expect(listB[i]).to.equal(listA[i])
			end
		end)

		it("should correctly use the filter-map predicate", function()
			local listA = {1, 2, 3, 4, 5}

			-- Create a list containing only the odd numbers, and double those numbers
			local listB = Functional.FilterMap(listA, function(value, key)
				expect(value).to.equal(key)

				if value % 2 == 0 then
					return nil
				end

				return value * 2
			end)

			expect(listB[1]).to.equal(2)
			expect(listB[2]).to.equal(6)
			expect(listB[3]).to.equal(10)
		end)
	end)

	describe("Fold", function()
		it("should left-fold lists", function()
			local list = {1, 2, 3, 4, 5}

			local sum = Functional.Fold(list, 0, add)

			expect(sum).to.equal(15)
		end)
	end)

	describe("Take", function()
		it("should take values from a list", function()
			local a = {1, 2, 3}
			local b = Functional.Take(a, 2)

			expect(#b).to.equal(2)
			expect(b[1]).to.equal(1)
			expect(b[2]).to.equal(2)
		end)

		it("should not take past the end of a list", function()
			local a = {1, 2, 3}
			local b = Functional.Take(a, 4)

			expect(#b).to.equal(3)
			expect(b[1]).to.equal(1)
			expect(b[2]).to.equal(2)
			expect(b[3]).to.equal(3)
		end)

		it("should copy all values when taking past the end of a list", function()
			local a = {1, 2, 3}
			local b = Functional.Take(a, 4)

			expect(#b).to.equal(#a)
			expect(a[1]).to.equal(b[1])
			expect(a[2]).to.equal(b[2])
			expect(a[3]).to.equal(b[3])
		end)

		it("should take values from a starting index when provided", function()
			local a = {1, 2, 3, 4}
			local b = Functional.Take(a, 2, 2)

			expect(#b).to.equal(2)
			expect(b[1]).to.equal(2)
			expect(b[2]).to.equal(3)
		end)

		it("should not take past the end of a list when the starting index is provided", function()
			local a = {1, 2, 3, 4}
			local b = Functional.Take(a, 3, 3)

			expect(#b).to.equal(2)
			expect(b[1]).to.equal(3)
			expect(b[2]).to.equal(4)
		end)
	end)

	describe("Find", function()
		it("should return index of matched item", function()
			local a = {"foo", "bar", "garply"}
			local b = Functional.Find(a, "bar")

			expect(b).to.equal(2)
		end)

		it("should find the first example in the case of duplicates", function()
			local a = {"foo", "bar", "garply", "bar"}
			local b = Functional.Find(a, "bar")

			expect(b).to.equal(2)
		end)

		it("should return nil if item is not found", function()
			local a = {"foo", "bar", "garply"}
			local b = Functional.Find(a, "fleebledegoop")

			expect(b).to.equal(nil)
		end)
	end)
end