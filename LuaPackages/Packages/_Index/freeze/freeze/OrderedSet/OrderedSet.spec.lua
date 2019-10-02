return function()
	local Root = script.Parent.Parent
	local OrderedSet = require(script.Parent.OrderedSet)
	local UnorderedSet = require(Root.UnorderedSet.UnorderedSet)
	local sort = require(Root.sort.sort)
	describe("Basic ordered map operations", function()

		it("Creates a new empty set", function()
			local set = OrderedSet.new()
			expect(set).to.be.ok()
			expect(set:size()).to.equal(0)
		end)

		it("Can tell apart OrderedSets from non-OrderedSets", function()
			local nonset = {}
			expect(OrderedSet.is(nonset)).to.equal(false)
			local number = 5
			expect(OrderedSet.is(number)).to.equal(false)
			local set = OrderedSet.new()
			expect(OrderedSet.is(set)).to.equal(true)
		end)

		it("Creates an ordered set with some values", function()
			local set = OrderedSet.new(sort.default, 3, 2, 1, 3, 4)
			expect(set).to.be.ok()
			expect(set:size()).to.equal(4)
			expect(set:find(1)).to.equal(true)
			expect(set:find(2)).to.equal(true)
			expect(set:find(3)).to.equal(true)
			expect(set:find(4)).to.equal(true)

			-- Good sorting by key
			expect(set:first()).to.equal(1)
			expect(set:getByIndex(1)).to.equal(1)
			expect(set:getByIndex(2)).to.equal(2)
			expect(set:getByIndex(3)).to.equal(3)
			expect(set:getByIndex(4)).to.equal(4)
			expect(set:last()).to.equal(4)
		end)

		it("Returns nil on a miss", function()
			local set = OrderedSet.new(sort.default, 3, 2, 1, 3, 4)
			expect(set:find(10000)).to.equal(false)
		end)

		it("Creates a table with a reverse sort invariant", function()
			local set = OrderedSet.new(sort.reverse, 3, 2, 1, 3, 4)

			-- Good sorting by key
			expect(set:first()).to.equal(4)
			expect(set:getByIndex(4)).to.equal(1)
			expect(set:getByIndex(3)).to.equal(2)
			expect(set:getByIndex(2)).to.equal(3)
			expect(set:getByIndex(1)).to.equal(4)
			expect(set:last()).to.equal(1)
		end)

		it("Can create a copy", function()
			local set = OrderedSet.new(sort.default, 3, 2, 1, 3, 4)
			local setCopy = set:copy()

			expect(setCopy).never.to.equal(set)
			expect(setCopy).to.be.ok()
			expect(setCopy:size()).to.equal(4)
			expect(setCopy:find(1)).to.equal(true)
			expect(setCopy:find(2)).to.equal(true)
			expect(setCopy:find(3)).to.equal(true)
			expect(setCopy:find(4)).to.equal(true)

			-- Good sorting by key
			expect(setCopy:first()).to.equal(1)
			expect(setCopy:getByIndex(1)).to.equal(1)
			expect(setCopy:getByIndex(2)).to.equal(2)
			expect(setCopy:getByIndex(3)).to.equal(3)
			expect(setCopy:getByIndex(4)).to.equal(4)
			expect(setCopy:last()).to.equal(4)
		end)

		it("Can be converted immutably to a list of keys", function()
			local set = OrderedSet.new(sort.default, 10, 11, 11, 10, 15)
			local keys = set:getKeys()

			expect(keys:get(1)).to.equal(10)
			expect(keys:get(2)).to.equal(11)
			expect(keys:get(3)).to.equal(15)
		end)

		it("Supports immutable insert", function()
			local set = OrderedSet.new(sort.default, 10, 11, 11, 10, 15)

			local newSet = set:insert(12)
			expect(newSet).never.to.equal(set)
			expect(newSet:find(12)).to.equal(true)
			expect(newSet:size()).to.equal(4)

			expect(set:size()).to.equal(3)
			expect(set:find(12)).to.equal(false)

			local newNewSet = newSet:insert(100, -100, 25, 10, 100)
			expect(newNewSet:size()).to.equal(7)
		end)

		it("Supports union", function()
			local set1 = OrderedSet.new(sort.default, 4, 3, 2, 1)

			local set2 = OrderedSet.new(sort.default, 3, 4, 5, 6)

			local set3 = OrderedSet.new(sort.default, 3, 6, 100)

			local newSet = set1:union(set2, set3)

			expect(newSet).never.to.equal(set1)
			expect(newSet:find(1)).to.equal(true)
			expect(newSet:find(2)).to.equal(true)
			expect(newSet:find(3)).to.equal(true)
			expect(newSet:find(4)).to.equal(true)
			expect(newSet:find(5)).to.equal(true)
			expect(newSet:find(6)).to.equal(true)
			expect(newSet:find(100)).to.equal(true)
			expect(set1:size()).to.equal(4)
			expect(newSet:size()).to.equal(7)

			local emptySet = OrderedSet.new()
			local newNewSet = newSet:union(emptySet)
			expect(newNewSet:size()).to.equal(7)
		end)

		it("Supports deletion", function()
			local set = OrderedSet.new(sort.default, 3, 2, 1, 4, 5, 6)
			local newSet = set:remove(2, 4)

			expect(newSet:find(1)).to.equal(true)
			expect(newSet:find(2)).to.equal(false)
			expect(newSet:find(3)).to.equal(true)
			expect(newSet:find(4)).to.equal(false)
			expect(newSet:find(5)).to.equal(true)
			expect(newSet:find(6)).to.equal(true)
			expect(newSet:size()).to.equal(4)
		end)

		it("Supports intersection", function()
			local set1 = OrderedSet.new(sort.default, 4, 3, 2, 1)

			local set2 = OrderedSet.new(sort.default, 3, 4, 5, 6, 1)

			local set3 = OrderedSet.new(sort.default, 3, 6, 100, 1)

			local newSet = set1:intersection(set2, set3)

			expect(newSet).never.to.equal(set1)
			expect(newSet:find(1)).to.equal(true)
			expect(newSet:find(2)).to.equal(false)
			expect(newSet:find(3)).to.equal(true)
			expect(newSet:find(4)).to.equal(false)
			expect(newSet:find(5)).to.equal(false)
			expect(newSet:find(6)).to.equal(false)
			expect(newSet:find(100)).to.equal(false)
			expect(set1:size()).to.equal(4)
			expect(newSet:size()).to.equal(2)

			local emptySet = OrderedSet.new()
			local newNewSet = newSet:intersection(emptySet)
			expect(newNewSet:size()).to.equal(0)
		end)

		it("Supports set difference", function()
			local set1 = OrderedSet.new(sort.default, 10, 4, 3, 2, 1)

			local set2 = OrderedSet.new(sort.default, 3, 4, 5)

			local set3 = OrderedSet.new(sort.default, 100, 101)

			local newSet = set1:difference(set2, set3)

			expect(newSet).never.to.equal(set1)
			expect(newSet:find(1)).to.equal(true)
			expect(newSet:find(2)).to.equal(true)
			expect(newSet:find(10)).to.equal(true)
			expect(newSet:find(3)).to.equal(false)
			expect(newSet:find(4)).to.equal(false)
			expect(newSet:find(5)).to.equal(false)
			expect(newSet:find(100)).to.equal(false)
			expect(newSet:find(100)).to.equal(false)
			expect(newSet:find(101)).to.equal(false)
			expect(set1:size()).to.equal(5)
			expect(newSet:size()).to.equal(3)

			local emptySet = OrderedSet.new()
			local newNewSet = set1:difference(emptySet)
			expect(newNewSet:size()).to.equal(5)
		end)
	end)

	describe("More advanced functionality", function()
		describe("Mapping", function()
			it("should use the callback", function()
				local set = OrderedSet.new(sort.default, 4, 3, 2, 1)

				local newSet = set:map(function(key)
					return key * 2
				end)

				expect(newSet:find(1)).to.equal(false)
				expect(newSet:find(2)).to.equal(true)
				expect(newSet:find(4)).to.equal(true)
				expect(newSet:find(6)).to.equal(true)
				expect(newSet:find(8)).to.equal(true)
				expect(newSet:size()).to.equal(4)
			end)

			it("should maintain the sorting invariant", function()
				local set = OrderedSet.new(sort.default, 3, 2, 1, 4)

				local newSet = set:map(function(key)
					return key % 3
				end)

				expect(newSet:find(0)).to.equal(true)
				expect(newSet:find(1)).to.equal(true)
				expect(newSet:find(2)).to.equal(true)

				expect(newSet:getByIndex(1)).to.equal(0)
				expect(newSet:getByIndex(2)).to.equal(1)
				expect(newSet:getByIndex(3)).to.equal(2)

				expect(newSet:size()).to.equal(3)
			end)

			it("should work with an empty OrderedSet", function()
				local called = false
				local function callback()
					called = true
					return "placeholderkey"
				end
				local set = OrderedSet.new()
				local newSet = set:map(callback)
				expect(newSet:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("Filtering", function()
			it("should use the callback", function()
				local set = OrderedSet.new(sort.default, 4, 3, 2, 1)
				local newSet = set:filter(function(key)
					return key >= 3
				end)

				expect(newSet).never.to.equal(set)

				expect(newSet:size()).to.equal(2)
				expect(newSet:find(4)).to.equal(true)
				expect(newSet:find(3)).to.equal(true)
				expect(newSet:find(1)).to.equal(false)
				expect(newSet:find(2)).to.equal(false)
			end)

			it("should maintain the sorting invariant", function()
				local set = OrderedSet.new(sort.default, 4, 3, 2, 1, 6, 5, 100)
				local newSet = set:filter(function(key)
					return key >= 3
				end)

				expect(newSet).never.to.equal(set)

				expect(newSet:size()).to.equal(5)
				expect(newSet:getByIndex(1)).to.equal(3)
				expect(newSet:getByIndex(2)).to.equal(4)
				expect(newSet:last()).to.equal(100)
			end)

			it("should work with an empty OrderedSet", function()
				local called = false
				local function callback()
					called = true
					return true
				end
				local set = OrderedSet.new()
				local newSet = set:filter(callback)
				expect(newSet:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("Iterators", function()
			it("Should work in a for loop", function()
				local set = OrderedSet.new(sort.default, 8, 3, 2, 1, 100)
				local count = 1
				for index, key in set:iterator() do
					if count == 1 then
						expect(index).to.equal(1)
						expect(key).to.equal(1)
					elseif count == 2 then
						expect(index).to.equal(2)
						expect(key).to.equal(2)
					elseif count == 3 then
						expect(index).to.equal(3)
						expect(key).to.equal(3)
					elseif count == 4 then
						expect(index).to.equal(4)
						expect(key).to.equal(8)
					elseif count == 5 then
						expect(index).to.equal(5)
						expect(key).to.equal(100)
					end
					count = count + 1
				end
				expect(count - 1).to.equal(5)
			end)

			it("Should work for empty sets", function()
				local set = OrderedSet.new()
				local doAnything = false
				for _, _ in set:iterator() do
					doAnything = true
				end
				expect(doAnything).to.equal(false)
			end)

			it("Should work in reverse", function()
				local set = OrderedSet.new(sort.default, 8, 3, 2, 1, 100)
				local count = 1
				for index, key in set:reverseIterator() do
					if count == 5 then
						expect(index).to.equal(1)
						expect(key).to.equal(1)
					elseif count == 4 then
						expect(index).to.equal(2)
						expect(key).to.equal(2)
					elseif count == 3 then
						expect(index).to.equal(3)
						expect(key).to.equal(3)
					elseif count == 2 then
						expect(index).to.equal(4)
						expect(key).to.equal(8)
					elseif count == 1 then
						expect(index).to.equal(5)
						expect(key).to.equal(100)
					end
					count = count + 1
				end
				expect(count - 1).to.equal(5)
			end)
		end)

		describe("Downcasting", function()
			it("Should successfully downcast to an UnorderedSet", function()
				local ordered = OrderedSet.new(sort.default, 5, 4, 3, 2, 1)
				local unordered = ordered:toUnorderedSet()
				expect(UnorderedSet.is(unordered)).to.equal(true)
				for i = 5, 1, -1 do
					expect(unordered:find(i)).to.equal(true)
				end
				expect(unordered:size()).to.equal(5)
			end)
		end)

	end)
end