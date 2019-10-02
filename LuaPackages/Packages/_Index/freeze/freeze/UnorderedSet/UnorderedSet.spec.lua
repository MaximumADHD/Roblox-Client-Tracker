return function()
	local UnorderedSet = require(script.Parent.UnorderedSet)
	describe("Basic ordered map operations", function()

		it("Creates a new empty set", function()
			local set = UnorderedSet.new()
			expect(set).to.be.ok()
			expect(set:size()).to.equal(0)
		end)

		it("Can tell apart UnorderedSets from non-UnorderedSets", function()
			local nonset = {}
			expect(UnorderedSet.is(nonset)).to.equal(false)
			local number = 5
			expect(UnorderedSet.is(number)).to.equal(false)
			local set = UnorderedSet.new()
			expect(UnorderedSet.is(set)).to.equal(true)
		end)

		it("Creates an unordered set with some values", function()
			local set = UnorderedSet.new(3, 2, 1, 3, 4)
			expect(set).to.be.ok()
			expect(set:size()).to.equal(4)
			expect(set:find(1)).to.equal(true)
			expect(set:find(2)).to.equal(true)
			expect(set:find(3)).to.equal(true)
			expect(set:find(4)).to.equal(true)
		end)

		it("Returns nil on a miss", function()
			local set = UnorderedSet.new(3, 2, 1, 3, 4)
			expect(set:find(10000)).to.equal(false)
		end)

		it("Can create a copy", function()
			local set = UnorderedSet.new(3, 2, 1, 3, 4)
			local setCopy = set:copy()

			expect(setCopy).never.to.equal(set)
			expect(setCopy).to.be.ok()
			expect(setCopy:size()).to.equal(4)
			expect(setCopy:find(1)).to.equal(true)
			expect(setCopy:find(2)).to.equal(true)
			expect(setCopy:find(3)).to.equal(true)
			expect(setCopy:find(4)).to.equal(true)
		end)

		it("Can be converted immutably to a List of keys", function()
			local set = UnorderedSet.new(10, 11, 11, 10, 15)
			local keys = set:getKeys()
			expect(keys:size()).to.equal(3)
		end)

		it("Supports immutable insert", function()
			local set = UnorderedSet.new(10, 11, 11, 10, 15)

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
			local set1 = UnorderedSet.new(4, 3, 2, 1)

			local set2 = UnorderedSet.new(3, 4, 5, 6)

			local set3 = UnorderedSet.new(3, 6, 100)

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

			local emptySet = UnorderedSet.new()
			local newNewSet = newSet:union(emptySet)
			expect(newNewSet:size()).to.equal(7)
		end)

		it("Supports deletion", function()
			local set = UnorderedSet.new(3, 2, 1, 4, 5, 6)
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
			local set1 = UnorderedSet.new(4, 3, 2, 1)

			local set2 = UnorderedSet.new(3, 4, 5, 6, 1)

			local set3 = UnorderedSet.new(3, 6, 100, 1)

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

			local emptySet = UnorderedSet.new()
			local newNewSet = newSet:intersection(emptySet)
			expect(newNewSet:size()).to.equal(0)
		end)

		it("Supports set difference", function()
			local set1 = UnorderedSet.new(10, 4, 3, 2, 1)

			local set2 = UnorderedSet.new(3, 4, 5)

			local set3 = UnorderedSet.new(100, 101)

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

			local emptySet = UnorderedSet.new()
			local newNewSet = set1:difference(emptySet)
			expect(newNewSet:size()).to.equal(5)
		end)
	end)

	describe("More advanced functionality", function()
		describe("Mapping", function()
			it("should use the callback", function()
				local set = UnorderedSet.new(4, 3, 2, 1)

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

			it("should work with an empty UnorderedSet", function()
				local called = false
				local function callback()
					called = true
					return "placeholderkey"
				end
				local set = UnorderedSet.new()
				local newSet = set:map(callback)
				expect(newSet:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("Filtering", function()
			it("should use the callback", function()
				local set = UnorderedSet.new(4, 3, 2, 1)
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

			it("should work with an empty UnorderedSet", function()
				local called = false
				local function callback()
					called = true
					return true
				end
				local set = UnorderedSet.new()
				local newSet = set:filter(callback)
				expect(newSet:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("Iterators", function()
			it("Should work in a for loop", function()
				local set = UnorderedSet.new(8, 3, 2, 1, 100)
				local seen = {}
				local count = 0
				for key in set:iterator() do
					seen[key] = true
					count = count + 1
				end
				expect(count).to.equal(5)
				expect(seen[8]).to.equal(true)
				expect(seen[3]).to.equal(true)
				expect(seen[2]).to.equal(true)
				expect(seen[1]).to.equal(true)
				expect(seen[100]).to.equal(true)
			end)

			it("Should work for empty sets", function()
				local set = UnorderedSet.new()
				local doAnything = false
				for _ in set:iterator() do
					doAnything = true
				end
				expect(doAnything).to.equal(false)
			end)

			it("Should only provide keys", function()
				local set = UnorderedSet.new(1, 2)
				for key, value in set:iterator() do
					expect(value).to.never.be.ok()
					expect(key).to.be.ok()
				end
			end)
		end)

	end)
end