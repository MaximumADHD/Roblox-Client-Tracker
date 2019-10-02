return function()
	local List = require(script.Parent.List)
	describe("Basic list operations", function()

		it("Creates a new empty list", function()
			local list = List.new()
			expect(list).to.be.ok()
			expect(list:size()).to.equal(0)
			local tab = list:toTable()
			expect(next(tab)).to.never.be.ok()
		end)

		it("Can tell apart Lists from non-Lists", function()
			local nonlist = {}
			expect(List.is(nonlist)).to.equal(false)
			local number = 5
			expect(List.is(number)).to.equal(false)
			local list = List.new()
			expect(List.is(list)).to.equal(true)
		end)

		it("Creates a table with some values", function()
			local list = List.new(3, 4, 5)
			expect(list).to.be.ok()
			expect(list:size()).to.equal(3)
			expect(list:get(1)).to.equal(3)
			expect(list:get(2)).to.equal(4)
			expect(list:get(3)).to.equal(5)
		end)

		it("Creates a table with some values from table", function()
			local list = List.newFromListTable({ 3, 4, 5 })
			expect(list).to.be.ok()
			expect(list:size()).to.equal(3)
			expect(list:get(1)).to.equal(3)
			expect(list:get(2)).to.equal(4)
			expect(list:get(3)).to.equal(5)
		end)

		it("Can create a copy", function()
			local list = List.new(3, 4, 5)
			local listCopy = list:copy()

			expect(listCopy).never.to.equal(list)
			expect(list:get(1)).to.equal(3)
			expect(list:get(2)).to.equal(4)
			expect(list:get(3)).to.equal(5)
			expect(listCopy:size()).to.equal(3)
		end)

		it("Can be converted immutably to a table", function()
			local list = List.new(3, 4, 5)
			local tab = list:toTable()
			tab[2] = 50
			expect(list:get(1)).to.equal(3)
			expect(list:get(2)).to.equal(4)
			expect(list:get(3)).to.equal(5)
		end)

		it("Supports immutable set", function()
			local list = List.new(3, 4, 5)
			local newList = list:set(2, 1000)

			expect(newList).never.to.equal(list)
			expect(list:get(2)).to.equal(4)
			expect(newList:get(2)).to.equal(1000)
		end)

		it("Supports deletion", function()
			local list = List.new(3, 4, 5, 6, 7)
			local newList = list:remove(1)

			expect(newList).never.to.equal(list)
			expect(list:get(1)).to.equal(3)
			expect(newList:get(1)).to.equal(4)
			expect(newList:size()).to.equal(4)

			local newNewList = newList:remove(2)
			expect(newNewList).never.to.equal(newList)
			expect(newList:get(2)).to.equal(5)
			expect(newNewList:get(2)).to.equal(6)
			expect(newNewList:size()).to.equal(3)
		end)

		it("Supports insertion", function()
			local list = List.new()
			local newList = list:insert(1, 4)

			expect(newList).never.to.equal(list)
			expect(newList:get(1)).to.equal(4)
			expect(newList:size()).to.equal(1)

			local anotherList = List.new(3, 4, 5, 6, 7)
			local newAnotherList = anotherList:insert(2, 100, 101)

			expect(newAnotherList:get(2)).to.equal(100)
			expect(newAnotherList:get(3)).to.equal(101)
			expect(newAnotherList:get(4)).to.equal(4)
			expect(newAnotherList:size()).to.equal(7)
		end)

		it("Supports push/pop at the back", function()
			local list = List.new(3, 4, 5, 6, 7)
			local newList = list:pushBack(100)
			expect(newList:size()).to.equal(6)
			expect(newList:get(newList:size())).to.equal(100)

			local newNewList = list:popBack()
			expect(newNewList:size()).to.equal(4)
			expect(newNewList:get(newNewList:size())).to.equal(6)

			local empty = List.new()
			local nonempty = empty:pushBack(10)
			expect(nonempty:size()).to.equal(1)
			expect(nonempty:get(nonempty:size())).to.equal(10)
		end)

		it("Supports push/pop at the front", function()
			local list = List.new(3, 4, 5, 6, 7)
			local newList = list:pushFront(100)
			expect(newList:size()).to.equal(6)
			expect(newList:get(1)).to.equal(100)

			local newNewList = list:popFront()
			expect(newNewList:size()).to.equal(4)
			expect(newNewList:get(1)).to.equal(4)

			local empty = List.new()
			local nonempty = empty:pushFront(10)
			expect(nonempty:size()).to.equal(1)
			expect(nonempty:get(1)).to.equal(10)
		end)

		it("Supports batch setting", function()
			local list = List.new(2, 3, 4, 5, 6, 7)
			local newList = list:batchSet({
				[2] = 100,
				[4] = 1000,
			})

			expect(newList).never.to.equal(list)
			expect(newList:get(1)).to.equal(2)
			expect(newList:get(2)).to.equal(100)
			expect(newList:get(4)).to.equal(1000)
			expect(newList:size()).to.equal(6)
		end)
	end)

	describe("More advanced functionality", function()
		describe("Filtering", function()
			it("should use the callback", function()
				local list = List.new(3, 4, 5, 6, 7)
				local newList = list:filter(function(value, index)
					return value % 2 == 0
				end)

				expect(newList).never.to.equal(list)
				expect(newList:size()).to.equal(2)
				expect(list:get(1)).to.equal(3)
				expect(newList:get(1)).to.equal(4)
				expect(list:get(2)).to.equal(4)
				expect(newList:get(2)).to.equal(6)
			end)

			it("should work with an empty List", function()
				local called = false
				local function callback()
					called = true
					return true
				end
				local list = List.new()
				local newList = list:filter(callback)
				expect(newList:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("FilterMapping", function()
			it("should return a new table", function()
				local list = List.new(1, 2, 3)
				local function callback()
					return 1
				end
				local newList = list:filterMap(callback)

				expect(list).never.to.equal(newList)
			end)

			it("should correctly use the filter callback", function()
				local list = List.new(1, 2, 3, 4, 5)
				local function doubleOddOnly(value)
					if value % 2 == 0 then
						return nil
					else
						return value * 2
					end
				end
				local newList = list:filterMap(doubleOddOnly)

				expect(newList:size()).to.equal(3)
				expect(newList:get(1)).to.equal(2)
				expect(newList:get(2)).to.equal(6)
				expect(newList:get(3)).to.equal(10)
			end)

			it("should work with an empty table", function()
				local called = false
				local function callback()
					called = true
					return true
				end
				local list = List.new()

				local newList = list:filterMap(callback)
				expect(newList:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("Joining", function()
			it("Should work with two tables", function()
				local first = List.new(1, 2, 3, 4, 5)
				local second = List.new(100, 101, 102)
				local newList = first:join(second)
				expect(newList:get(1)).to.equal(1)
				expect(newList:get(5)).to.equal(5)
				expect(newList:get(6)).to.equal(100)
				expect(newList:get(8)).to.equal(102)
				expect(newList:size()).to.equal(8)
			end)

			it("Should work with multiple tables", function()
				local first = List.new(1, 2, 3, 4, 5)
				local second = List.new(100, 101, 102)
				local third = List.new(1000, 1001, 1002)
				local newList = first:join(second, third)
				expect(newList:get(1)).to.equal(1)
				expect(newList:get(5)).to.equal(5)
				expect(newList:get(6)).to.equal(100)
				expect(newList:get(8)).to.equal(102)
				expect(newList:get(9)).to.equal(1000)
				expect(newList:get(11)).to.equal(1002)
				expect(newList:size()).to.equal(11)
			end)
		end)

		describe("Iterators", function()
			it("Should work in a for loop", function()
				local list = List.new(3, 4, 5, 6, 7)
				local count = 1
				for index, value in list:iterator() do
					if count == 1 then
						expect(value).to.equal(3)
					elseif count == 5 then
						expect(value).to.equal(7)
					end
					expect(value).to.equal(index + 2)
					count = count + 1
				end
			end)

			it("Should work for empty lists", function()
				local list = List.new()
				local wasAnythingDone = false
				for _, _ in list:iterator() do
					wasAnythingDone = true
				end
				expect(wasAnythingDone).to.equal(false)
			end)

			it("Should work in reverse", function()
				local list = List.new(3, 4, 5, 6, 7)
				local count = 1
				for index, value in list:reverseIterator() do
					if count == 5 then
						expect(value).to.equal(3)
					elseif count == 1 then
						expect(value).to.equal(7)
					end
					expect(value).to.equal(index + 2)
					count = count + 1
				end
			end)

			describe("binarySearch", function()
				it("Works for a sorted List", function()
					local list = List.new(1, 3, 5, 6, 7)
					expect(list:binarySearch(1)).to.equal(1)
					expect(list:binarySearch(3)).to.equal(2)
					expect(list:binarySearch(5)).to.equal(3)
					expect(list:binarySearch(6)).to.equal(4)
					expect(list:binarySearch(7)).to.equal(5)
					expect(list:binarySearch(100)).to.never.be.ok()
				end)

				it("Works for a sorted List with duplicates", function()
					local list = List.new(1, 1, 3, 3, 3, 5, 5, 10, 11)
					expect(list:binarySearch(1)).to.equal(1)
					expect(list:binarySearch(3)).to.equal(3)
					expect(list:binarySearch(5)).to.equal(6)
					expect(list:binarySearch(10)).to.equal(8)
					expect(list:binarySearch(11)).to.equal(9)
				end)

				it("Works for an empty List", function()
					local list = List.new()
					expect(list:binarySearch(1)).to.never.be.ok()
				end)

				it("Works for a special comparator", function()
					local list = List.new(5, 6, 1, 5, 7, 3)
					local reverse = function(lhs, rhs)
						return rhs < lhs
					end
					local newList = list:sort(reverse)
					expect(newList:binarySearch(7, reverse)).to.equal(1)
					expect(newList:binarySearch(6, reverse)).to.equal(2)
					expect(newList:binarySearch(5, reverse)).to.equal(3)
					expect(newList:binarySearch(3, reverse)).to.equal(5)
					expect(newList:binarySearch(1, reverse)).to.equal(6)
				end)
			end)
		end)

		--[[
			TODO: port over more of these Cryo tests, if necessary.
		]]
		describe("Cryo functions", function()
			describe("find", function()
				local list = List.new(5, 4, 3, 2, 1)
				it("should return the correct index", function()
					expect(list:find(1)).to.equal(5)
					expect(list:find(2)).to.equal(4)
					expect(list:find(3)).to.equal(3)
					expect(list:find(4)).to.equal(2)
					expect(list:find(5)).to.equal(1)
				end)

				it("should work with an empty table", function()
					local empty = List.new()
					expect(empty:find(1)).to.never.be.ok()
				end)

				it("should return nil when the given value is not found", function()
					expect(list:find(1000)).to.never.be.ok()
				end)

				it("should return the index of the first value found", function()
					local repeated = List.new(1, 2, 2)

					expect(repeated:find(2)).to.equal(2)
				end)
			end)

			describe("findWhere", function()
				it("should return the correct index", function()
					local list = List.new(1, 5, 10, 7)
					local isEven = function(value)
						return value % 2 == 0
					end

					local isOdd = function(value)
						return value % 2 == 1
					end

					expect(list:findWhere(isEven)).to.equal(3)
					expect(list:findWhere(isOdd)).to.equal(1)
				end)

				it("should work with an empty table", function()
					local empty = List.new()
					local anything = function()
						return true
					end
					expect(empty:findWhere(anything)).to.never.be.ok()
				end)

				it("should return nil when the when no value satisfies the predicate", function()
					local numbers = List.new(1, 2, 3)
					local isFour = function(value)
						return value == 4
					end

					expect(numbers:findWhere(isFour)).to.never.be.ok()
				end)

				it("should return the index of the first value for which the predicate is true", function()
					local numbers = List.new(1, 1, 1, 2, 2)

					local isTwo = function(value)
						return value == 2
					end

					expect(numbers:findWhere(isTwo)).to.equal(4)
				end)

				it("should allow access to both value and index in the predicate function", function()
					local numbers = List.new(1, 1, 2, 2, 1)

					local sumValueAndIndexToFive = function(value, index)
						return value + index == 5
					end

					expect(numbers:findWhere(sumValueAndIndexToFive)).to.equal(3)
				end)
			end)

			describe("foldLeft", function()
				it("should call the callback for each element", function()
					local a = List.new(4, 5, 6)
					local copy = {}

					a:foldLeft(function(accum, value, index)
						copy[index] = value
						return accum
					end, 0)

					expect(#copy).to.equal(a:size())

					for key, value in a:iterator() do
						expect(value).to.equal(copy[key])
					end
				end)
			end)

			describe("foldRight", function()
				it("should call the callback for each element", function()
					local a = List.new(4, 5, 6)
					local copy = {}

					a:foldRight(function(accum, value, index)
						copy[index] = value
						return accum
					end, 0)

					expect(#copy).to.equal(a:size())

					for key, value in a:iterator() do
						expect(value).to.equal(copy[key])
					end
				end)
			end)

			describe("getRange", function()
				it("should return the correct range", function()
					local a = List.new(1, 2, 3, 4)
					local b = a:getRange(2, 3)

					expect(b:get(1)).to.equal(2)
					expect(b:get(2)).to.equal(3)
					expect(b:size()).to.equal(2)

					local c = a:getRange(4, 4)
					expect(c:size()).to.equal(1)
					expect(c:get(1)).to.equal(4)
				end)
			end)

			describe("map", function()
				it("should call the callback for each element", function()
					local a = List.new(5, 6, 7)
					local copy = {}
					a:map(function(value, index)
						copy[index] = value
						return value
					end)

					for key, value in a:iterator() do
						expect(copy[key]).to.equal(value)
					end

					for key, value in pairs(copy) do
						expect(value).to.equal(a:get(key))
					end
				end)
			end)

			describe("removeRange", function()
				it("should remove elements properly", function()
					local a = List.new(1, 2, 3)
					local b = a:removeRange(2, 2)

					expect(b:size()).to.equal(2)
					expect(b:get(1)).to.equal(1)
					expect(b:get(2)).to.equal(3)

					local c = List.new(1, 2, 3, 4, 5, 6)
					local d = c:removeRange(1, 4)

					expect(d:size()).to.equal(2)
					expect(d:get(1)).to.equal(5)
					expect(d:get(2)).to.equal(6)

					local e = c:removeRange(2, 5)

					expect(e:size()).to.equal(2)
					expect(e:get(1)).to.equal(1)
					expect(e:get(2)).to.equal(6)
				end)
			end)

			describe("removeValue", function()
				it("should remove all occurences of the same given value", function()
					local a = List.new(1, 2, 2, 3)
					local b = a:removeValue(2)

					expect(b:size()).to.equal(2)
					expect(b:get(1)).to.equal(1)
					expect(b:get(2)).to.equal(3)
				end)
			end)

			describe("reverse", function()
				it("should reverse the list", function()
					local a = List.new(1, 2, 3, 4)
					local b = a:reverse()

					expect(b:get(1)).to.equal(4)
					expect(b:get(2)).to.equal(3)
					expect(b:get(3)).to.equal(2)
					expect(b:get(4)).to.equal(1)
				end)
			end)

			describe("sort", function()
				it("should sort with the default table.sort when no callback is given", function()
					local a = List.new(4, 2, 5, 3, 1)
					local b = a:sort()

					local aTable = a:toTable()
					table.sort(aTable)

					expect(b:size()).to.equal(a:size())
					for i = 1, #aTable do
						expect(b:get(i)).to.equal(aTable[i])
					end
				end)

				it("should sort with the given callback", function()
					local a = List.new(1, 2, 5, 3, 4)
					local function order(first, second)
						return first > second
					end
					local b = a:sort(order)

					local aTable = a:toTable()

					table.sort(aTable, order)

					expect(b:size()).to.equal(#aTable)
					for i = 1, #a do
						expect(b:get(i)).to.equal(aTable[i])
					end
				end)
			end)
		end)

	end)
end