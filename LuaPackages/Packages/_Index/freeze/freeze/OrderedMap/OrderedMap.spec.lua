return function()
	local Root = script.Parent.Parent
	local OrderedMap = require(script.Parent.OrderedMap)
	local UnorderedMap = require(Root.UnorderedMap.UnorderedMap)
	local None = require(Root.None)
	local sort = require(Root.sort.sort)

	describe("Basic ordered map operations", function()

		it("Creates a new empty table", function()
			local map = OrderedMap.new()
			expect(map).to.be.ok()
			expect(map:size()).to.equal(0)
		end)

		it("Can tell apart OrderedMaps from non-OrderedMaps", function()
			local nonmap = {}
			expect(OrderedMap.is(nonmap)).to.equal(false)
			local number = 5
			expect(OrderedMap.is(number)).to.equal(false)
			local map = OrderedMap.new()
			expect(OrderedMap.is(map)).to.equal(true)
		end)

		it("Correctly returns nil when accessing an OOB index", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})
			expect(map:getByIndex(1000)).to.never.be.ok()
			expect(map:size()).to.equal(3)
			expect(map:get("apple")).to.equal(1)
			expect(map:get("grapes")).to.equal(2)
			expect(map:get("banana")).to.equal(10)
		end)

		it("Creates an ordered with some values", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})
			expect(map).to.be.ok()
			expect(map:size()).to.equal(3)
			expect(map:get("apple")).to.equal(1)
			expect(map:get("grapes")).to.equal(2)
			expect(map:get("banana")).to.equal(10)

			-- Good sorting by key
			local firstKey, firstValue = map:first()
			local secondKey, secondValue = map:getByIndex(2)
			local lastKey, lastValue = map:last()
			expect(firstKey).to.equal("apple")
			expect(firstValue).to.equal(1)
			expect(secondKey).to.equal("banana")
			expect(secondValue).to.equal(10)
			expect(lastKey).to.equal("grapes")
			expect(lastValue).to.equal(2)
		end)

		it("Returns nil on a miss", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})
			expect(map:get("broccoli")).never.to.be.ok()
		end)

		it("Creates a table with some values from multiple tables", function()
			local map = OrderedMap.new(sort.reverse, {
				apple = 1,
				grapes = 10,
				banana = 2,
			}, {
				orange = 5,
				banana = 5,
			})
			expect(map).to.be.ok()
			expect(map:size()).to.equal(4)
			expect(map:get("orange")).to.equal(5)
			expect(map:get("grapes")).to.equal(10)
			expect(map:get("banana")).to.equal(5)
		end)

		it("Can create a copy", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})
			local mapCopy = map:copy()

			expect(mapCopy).never.to.equal(map)
			expect(mapCopy).to.be.ok()
			expect(mapCopy:size()).to.equal(3)
			expect(mapCopy:get("apple")).to.equal(1)
			expect(mapCopy:get("grapes")).to.equal(2)
			expect(mapCopy:get("banana")).to.equal(10)

			-- Good sorting by key
			local firstKey, firstValue = mapCopy:first()
			local secondKey, secondValue = mapCopy:getByIndex(2)
			local lastKey, lastValue = map:last()
			expect(firstKey).to.equal("apple")
			expect(firstValue).to.equal(1)
			expect(secondKey).to.equal("banana")
			expect(secondValue).to.equal(10)
			expect(lastKey).to.equal("grapes")
			expect(lastValue).to.equal(2)
		end)

		it("Can be converted immutably to Lists of keys and values", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})
			local keys = map:getKeys()
			local values = map:getValues()

			expect(keys:get(1)).to.equal("apple")
			expect(keys:get(2)).to.equal("banana")
			expect(keys:get(3)).to.equal("grapes")
			expect(values:get(1)).to.equal(1)
			expect(values:get(2)).to.equal(10)
			expect(values:get(3)).to.equal(2)
		end)

		it("Supports immutable set", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})

			local newMap = map:set("apple", 1000)

			expect(newMap).never.to.equal(map)
			expect(map:get("apple")).to.equal(1)
			expect(newMap:get("apple")).to.equal(1000)

			local newNewMap = newMap:set("lettuce", -100)
			expect(newNewMap:get("lettuce")).to.equal(-100)
		end)

		it("Supports batch set", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})

			local newMap = map:batchSet({
				apple = 100,
				watermelon = 4,
			}, {
				watermelon = 100,
				kiwi = 3,
			})

			expect(newMap).never.to.equal(map)
			expect(map:get("apple")).to.equal(1)
			expect(newMap:get("apple")).to.equal(100)
			expect(newMap:get("watermelon")).to.equal(100)
			expect(newMap:get("kiwi")).to.equal(3)
			expect((newMap:first())).to.equal("apple")
			expect((newMap:last())).to.equal("watermelon")
			expect(map:get("kiwi")).to.never.be.ok()
			expect(newMap:size()).to.equal(5)
		end)

		it("Supports join", function()
			local map1 = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})

			local map2 = OrderedMap.new(sort.reverse, {
				apple = 100,
				watermelon = 4,
			})

			local map3 = OrderedMap.new(sort.reverse, {
				watermelon = 100,
				kiwi = 3,
			})

			local newMap = map1:join(map2, map3)

			expect(newMap).never.to.equal(map1)
			expect(map1:get("apple")).to.equal(1)
			expect(newMap:get("apple")).to.equal(100)
			expect(newMap:get("watermelon")).to.equal(100)
			expect(newMap:get("kiwi")).to.equal(3)
			expect((newMap:first())).to.equal("apple")
			expect((newMap:last())).to.equal("watermelon")
			expect(map1:get("kiwi")).to.never.be.ok()
			expect(newMap:size()).to.equal(5)
		end)

		it("Supports None", function()
			local map1 = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
				useless = None,
			})
			expect(map1:size()).to.equal(4)

			local map2 = OrderedMap.new(sort.reverse, {
				apple = None,
				watermelon = 4,
			})

			local map3 = OrderedMap.new(sort.reverse, {
				watermelon = 100,
				kiwi = 3,
			})

			local newMap = map1:join(map2, map3)

			expect(newMap).never.to.equal(map1)
			expect(newMap:get("apple")).to.never.be.ok()
			expect(newMap:get("watermelon")).to.equal(100)
			expect(newMap:get("kiwi")).to.equal(3)
			expect(newMap:get("useless")).to.never.be.ok()
			expect((newMap:first())).to.equal("banana")
			expect((newMap:last())).to.equal("watermelon")
			expect(newMap:size()).to.equal(4)

			newMap = map1:batchSet({
				apple = None,
				watermelon = 4,
			}, {
				watermelon = 100,
				kiwi = 3,
			})

			expect(newMap).never.to.equal(map1)
			expect(newMap:get("apple")).to.never.be.ok()
			expect(newMap:get("watermelon")).to.equal(100)
			expect(newMap:get("kiwi")).to.equal(3)
			expect(newMap:get("useless")).to.never.be.ok()
			expect((newMap:first())).to.equal("banana")
			expect((newMap:last())).to.equal("watermelon")
			expect(newMap:size()).to.equal(4)
		end)

		it("Supports deletion", function()
			local map = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})
			local newMap = map:remove("apple", "grapes")

			expect(newMap:get("apple")).to.never.be.ok()
			expect(newMap:get("grapes")).to.never.be.ok()
			expect(newMap:get("banana")).to.equal(10)
			expect(map:get("apple")).to.be.ok()
			expect(map:get("grapes")).to.be.ok()
			expect(map:get("banana")).to.be.ok()
			expect(newMap:size()).to.equal(1)
		end)
	end)

	describe("More advanced functionality", function()
		describe("Mapping", function()
			it("should use the callback", function()
				local map = OrderedMap.new(sort.default, {
					apple = 1,
					grapes = 2,
					banana = 10,
				})

				local newMap = map:map(function(value, key)
					return value * 2, key .. " fruit"
				end)

				expect(newMap).never.to.equal(map)
				expect(newMap:size()).to.equal(3)
				expect(map:get("apple fruit")).to.never.be.ok()
				expect(newMap:get("apple fruit")).to.equal(2)
				expect(newMap:get("apple")).to.never.be.ok()
				expect(newMap:get("banana fruit")).to.equal(20)
			end)

			it("should maintain the sorting invariant", function()
				local map = OrderedMap.new(sort.default, {
					apple = 1,
					cheese = 5,
					banana = 10,
				})

				local newMap = map:map(function(value, key)
					return value, key:sub(2)
				end)

				expect(newMap).never.to.equal(map)
				expect(newMap:size()).to.equal(3)
				expect(newMap:get("pple")).to.equal(1)
				local firstKey, firstValue = newMap:first()
				expect(firstKey).to.equal("anana")
				expect(firstValue).to.equal(10)
				local secondKey, secondValue = newMap:getByIndex(2)
				expect(secondKey).to.equal("heese")
				expect(secondValue).to.equal(5)
				local lastKey, lastValue = newMap:last()
				expect(lastKey).to.equal("pple")
				expect(lastValue).to.equal(1)
			end)

			it("should work with an empty OrderedMap", function()
				local called = false
				local function callback()
					called = true
					return "placeholderkey", "placeholdervalue"
				end
				local map = OrderedMap.new()
				local newMap = map:map(callback)
				expect(newMap:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("Filtering", function()
			it("should use the callback", function()
				local map = OrderedMap.new(sort.default, {
					orange = 100,
					apple = 1,
					grapes = 2,
					banana = 10,
					lemons = 4,
				})

				local newMap = map:filter(function(value, key)
					return value < 9 or key == "orange"
				end)

				expect(newMap).never.to.equal(map)
				expect(newMap:size()).to.equal(4)
				expect(newMap:get("apple")).to.equal(1)
				expect(newMap:get("banana")).to.never.be.ok()
				expect(map:get("banana")).to.equal(10)
				expect(newMap:get("orange")).to.equal(100)
			end)

			it("should maintain the sorting invariant", function()
				local map = OrderedMap.new(sort.default, {
					orange = 100,
					apple = 1,
					grapes = 2,
					banana = 10,
					lemons = 4,
				})

				local newMap = map:filter(function(value, key)
					return value < 9 or key == "orange"
				end)

				local firstKey, firstValue = newMap:first()
				expect(firstKey).to.equal("apple")
				expect(firstValue).to.equal(1)
				local secondKey, secondValue = newMap:getByIndex(2)
				expect(secondKey).to.equal("grapes")
				expect(secondValue).to.equal(2)
				local lastKey, lastValue = newMap:last()
				expect(lastKey).to.equal("orange")
				expect(lastValue).to.equal(100)
			end)

			it("should work with an empty OrderedMap", function()
				local called = false
				local function callback()
					called = true
					return true
				end
				local map = OrderedMap.new()
				local newMap = map:filter(callback)
				expect(newMap:size()).to.equal(0)
				expect(called).to.equal(false)
			end)
		end)

		describe("Iterators", function()
			it("Should work in a for loop", function()
				local map = OrderedMap.new(sort.default, {
					orange = 100,
					apple = 1,
					grapes = 2,
					banana = 10,
					lemons = 4,
				})
				local count = 1
				for key, value in map:iterator() do
					if count == 1 then
						expect(key).to.equal("apple")
						expect(value).to.equal(1)
					elseif count == 2 then
						expect(key).to.equal("banana")
						expect(value).to.equal(10)
					elseif count == 3 then
						expect(key).to.equal("grapes")
						expect(value).to.equal(2)
					elseif count == 4 then
						expect(key).to.equal("lemons")
						expect(value).to.equal(4)
					elseif count == 5 then
						expect(key).to.equal("orange")
						expect(value).to.equal(100)
					end
					count = count + 1
				end
				expect(count - 1).to.equal(5)
			end)

			it("Should work for empty maps", function()
				local map = OrderedMap.new()
				local doAnything = false
				for _, _ in map:iterator() do
					doAnything = true
				end
				expect(doAnything).to.equal(false)
			end)

			it("Should work in reverse", function()
				local map = OrderedMap.new(sort.default, {
					orange = 100,
					apple = 1,
					grapes = 2,
					banana = 10,
					lemons = 4,
				})
				local count = 1
				for key, value in map:reverseIterator() do
					if count == 5 then
						expect(key).to.equal("apple")
						expect(value).to.equal(1)
					elseif count == 4 then
						expect(key).to.equal("banana")
						expect(value).to.equal(10)
					elseif count == 3 then
						expect(key).to.equal("grapes")
						expect(value).to.equal(2)
					elseif count == 2 then
						expect(key).to.equal("lemons")
						expect(value).to.equal(4)
					elseif count == 1 then
						expect(key).to.equal("orange")
						expect(value).to.equal(100)
					end
					count = count + 1
				end
				expect(count - 1).to.equal(5)
			end)
		end)
		describe("Downcasting", function()
			it("Should successfully downcast to an UnorderedMap", function()
				local ordered = OrderedMap.new(sort.default, {
					orange = 100,
					apple = 1,
					grapes = 2,
					banana = 10,
					lemons = 4,
				})
				local unordered = ordered:toUnorderedMap()
				expect(UnorderedMap.is(unordered)).to.equal(true)
				expect(unordered:get("orange")).to.equal(100)
				expect(unordered:get("apple")).to.equal(1)
				expect(unordered:get("grapes")).to.equal(2)
				expect(unordered:get("banana")).to.equal(10)
				expect(unordered:get("lemons")).to.equal(4)
				expect(unordered:size()).to.equal(5)
			end)
		end)
	end)

	describe("deepJoin", function()
		it("Should work with basic maps", function()
			local map1 = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})

			local map2 = OrderedMap.new(sort.default, {
				apple = 100,
				watermelon = 4,
			})

			local newMap = map1:deepJoin(map2)

			expect(newMap:get("apple")).to.equal(100)
			expect(newMap:get("watermelon")).to.equal(4)
			expect(newMap:get("grapes")).to.equal(2)
			expect(newMap:get("banana")).to.equal(10)
			expect((newMap:first())).to.equal("apple")
			expect((newMap:last())).to.equal("watermelon")
			expect(newMap:size()).to.equal(4)
		end)

		it("Should work with nested maps", function()
			local innerMap1 = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})

			local innerMap2 = OrderedMap.new(sort.default, {
				peach = -10,
				grapes = 15
			})

			local innerMap3 = OrderedMap.new(sort.default, {
				apple = 100,
				banana = 1000,
				beans = 400,
			})

			local innerMap4 = OrderedMap.new(sort.default, {
				peach = 30,
			})

			local outerMap1 = OrderedMap.new(sort.default, {
				inner1 = innerMap1,
				inner2 = innerMap2,
				irrelevantInteger = 5,
			})

			local outerMap2 = OrderedMap.new(sort.default, {
				inner1 = innerMap3,
				inner2 = innerMap4,
				irrelevantString = "hello!",
			})

			local newMap = outerMap1:deepJoin(outerMap2)
			expect(newMap:size()).to.equal(4)
			expect(newMap:get("irrelevantInteger")).to.equal(5)
			expect(newMap:get("irrelevantString")).to.equal("hello!")

			local mergedInner1 = newMap:get("inner1")
			local mergedInner2 = newMap:get("inner2")
			expect(mergedInner1:size()).to.equal(4)
			expect(mergedInner1:get("apple")).to.equal(100)
			expect(mergedInner1:get("grapes")).to.equal(2)
			expect(mergedInner1:get("banana")).to.equal(1000)
			expect(mergedInner1:get("beans")).to.equal(400)

			expect(mergedInner2:size()).to.equal(2)
			expect(mergedInner2:get("peach")).to.equal(30)
			expect(mergedInner2:get("grapes")).to.equal(15)
		end)

		it("Should work with an empty map", function()
			local map1 = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
			})

			local map2 = OrderedMap.new(sort.default)
			local newMap = map1:deepJoin(map2)

			expect(newMap:get("apple")).to.equal(1)
			expect(newMap:get("grapes")).to.equal(2)
			expect(newMap:get("banana")).to.equal(10)
		end)

		it("Should work with None", function()
			local innerMap1 = OrderedMap.new(sort.default, {
				apple = 1,
				grapes = 2,
				banana = 10,
				useless = None,
			})

			local innerMap2 = OrderedMap.new(sort.default, {
				peach = -10,
				grapes = 15,
			})

			local innerMap3 = OrderedMap.new(sort.default, {
				apple = None,
				banana = 1000,
				beans = 400,
			})

			local innerMap4 = OrderedMap.new(sort.default, {
				grapes = None,
				peach = 30,
			})

			local outerMap1 = OrderedMap.new(sort.default, {
				inner1 = innerMap1,
				inner2 = innerMap2,
				irrelevantInteger = 5,
			})

			local outerMap2 = OrderedMap.new(sort.default, {
				inner1 = innerMap3,
				inner2 = innerMap4,
				irrelevantInteger = None,
			})

			local newMap = outerMap1:deepJoin(outerMap2)
			expect(newMap:size()).to.equal(2)
			expect(newMap:get("irrelevantInteger")).to.never.be.ok()

			local mergedInner1 = newMap:get("inner1")
			local mergedInner2 = newMap:get("inner2")
			expect(mergedInner1:size()).to.equal(3)
			expect(mergedInner1:get("apple")).to.never.be.ok()

			expect(mergedInner2:size()).to.equal(1)
			expect(mergedInner2:get("grapes")).to.never.be.ok()
		end)
	end)
end