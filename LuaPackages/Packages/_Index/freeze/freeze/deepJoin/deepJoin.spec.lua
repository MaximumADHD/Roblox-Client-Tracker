return function()
	local Root = script.Parent.Parent
	local OrderedMap = require(Root.OrderedMap.OrderedMap)
	local UnorderedMap = require(Root.UnorderedMap.UnorderedMap)
	local OrderedSet = require(Root.OrderedSet.OrderedSet)
	local UnorderedSet = require(Root.UnorderedSet.UnorderedSet)
	local List = require(Root.List.List)
	local None = require(Root.None)
	local sort = require(Root.sort.sort)

	local deepJoin = require(script.Parent.deepJoin)

	describe("deepJoin", function()
		it("Should return nil when called on no values", function()
			expect(deepJoin()).to.never.be.ok()
		end)

		it("Should work with basic types", function()
			expect(deepJoin(1, 2)).to.equal(2)
			local table1 = {
				key1 = "value1",
				key2 = "value2"
			}
			local table2 = {
				key1 = "adifferentvalue1",
				key3 = "value3"
			}
			local newtable = deepJoin(table1, table2)
			expect(newtable).to.equal(table2)
		end)

		it("Should work with OrderedSet", function()
			local set1 = OrderedSet.new(sort.default, 4, 3, 2, 1)
			local set2 = OrderedSet.new(sort.default, 3, 5)
			local newSet = deepJoin(set1, set2)
			expect(OrderedSet.is(newSet)).to.equal(true)
			expect(newSet:find(1)).to.equal(true)
			expect(newSet:find(2)).to.equal(true)
			expect(newSet:find(3)).to.equal(true)
			expect(newSet:find(4)).to.equal(true)
			expect(newSet:find(5)).to.equal(true)
			expect(newSet:size()).to.equal(5)
			expect(newSet:first()).to.equal(1)
			expect(newSet:last()).to.equal(5)
		end)

		it("Should work with UnorderedSet", function()
			local set1 = UnorderedSet.new(4, 3, 2, 1)
			local set2 = UnorderedSet.new(3, 5)
			local newSet = deepJoin(set1, set2)
			expect(UnorderedSet.is(newSet)).to.equal(true)
			expect(newSet:find(1)).to.equal(true)
			expect(newSet:find(2)).to.equal(true)
			expect(newSet:find(3)).to.equal(true)
			expect(newSet:find(4)).to.equal(true)
			expect(newSet:find(5)).to.equal(true)
			expect(newSet:size()).to.equal(5)
		end)

		it("Should work with Lists", function()
			local list1 = List.new(5, 4, 3, 2, 1)
			local list2 = List.new(100, 101)
			local newList = deepJoin(list1, list2)
			expect(List.is(newList)).to.equal(true)
			expect(newList:size()).to.equal(7)
			expect(newList:get(1)).to.equal(5)
			expect(newList:get(newList:size())).to.equal(101)
		end)

		it("Should work for some crazy nested maps", function()
			local outermostMap1 = UnorderedMap.new({
				innerMap1 = UnorderedMap.new({
					innerList = List.new(3, 4, 4),
					innerObject = {
						key1 = "value1",
						key2 = "value2"
					}
				}),
				innerMap2 = OrderedMap.new(sort.reverse, {
					apple = 1,
					orange = 100,
				}),
				differentlyTypedStructure = UnorderedSet.new(3, 4, 5),
				irrelevantValue = -1000,
			})

			local outermostMap2 = UnorderedMap.new({
				innerMap1 = UnorderedMap.new({
					innerList = List.new(1000),
					innerObject = {
						key1 = "differentvalue1",
						key3 = "value3"
					}
				}),
				innerMap2 = OrderedMap.new(sort.default, {
					kiwi = 3,
					orange = -5,
				}),
				differentlyTypedStructure = List.new(3, 4, 5),
				irrelevantValue = 1000,
				anotherIrrelvantValue = 50,
			})

			local mergedMap = deepJoin(outermostMap1, outermostMap2)
			expect(UnorderedMap.is(mergedMap)).to.equal(true)
			expect(mergedMap:size()).to.equal(5)

			expect(mergedMap:get("irrelevantValue")).to.equal(1000)
			expect(mergedMap:get("anotherIrrelvantValue")).to.equal(50)

			local differentlyTypedStructure = mergedMap:get("differentlyTypedStructure")
			expect(List.is(differentlyTypedStructure)).to.equal(true)
			expect(differentlyTypedStructure:get(2)).to.equal(4)

			local innerMap1 = mergedMap:get("innerMap1")
			local innerMap2 = mergedMap:get("innerMap2")
			expect(UnorderedMap.is(innerMap1)).to.equal(true)
			expect(OrderedMap.is(innerMap2)).to.equal(true)
			local innerList = innerMap1:get("innerList")
			local innerObject = innerMap1:get("innerObject")

			expect(List.is(innerList)).to.equal(true)
			expect(innerList:size()).to.equal(4)
			expect(innerList:get(1)).to.equal(3)
			expect(innerList:get(2)).to.equal(4)
			expect(innerList:get(3)).to.equal(4)
			expect(innerList:get(4)).to.equal(1000)

			expect(innerObject["key1"]).to.equal("differentvalue1")
			expect(innerObject["key2"]).to.never.be.ok()
			expect(innerObject["key3"]).to.equal("value3")

			expect(OrderedMap.is(innerMap2)).to.equal(true)
			expect(innerMap2:get("apple")).to.equal(1)
			expect(innerMap2:get("orange")).to.equal(-5)
			expect(innerMap2:get("kiwi")).to.equal(3)
			expect((innerMap2:first())).to.equal("orange")
			expect((innerMap2:last())).to.equal("apple")
		end)

		it("Should work for a reasonable case", function()
			local state = UnorderedMap.new({
				[100] = UnorderedMap.new({
					username = "Cool username 1",
					information = {
						settings = "example 1",
					},
				}),
				[105] = UnorderedMap.new({
					username = "Cool username 2",
					information = {
						settings = "example 2",
					},
				}),
				[110] = UnorderedMap.new({
					username = "Cool username 3",
					information = {
						settings = "example 3",
					},
				}),
				[111] = UnorderedMap.new({
					username = "Cool username 4",
					information = {
						settings = "example 4",
					},
				}),
			})

			local actionData = UnorderedMap.new({
				[100] = UnorderedMap.new({
					username = "Updated cool username 1",
					information = {
						settings = "updated example 1",
					},
				}),
				[110] = UnorderedMap.new({
					username = "Updated cool username 3",
					information = {
						settings = "updated example 3",
					},
				}),
			})

			local newState = deepJoin(state, actionData)
			expect(newState:size()).to.equal(4)
			expect(newState:get(105)).to.equal(state:get(105))
			expect(newState:get(111)).to.equal(state:get(111))
			expect(newState:get(100)).never.to.equal(state:get(100))
			expect(newState:get(110)).never.to.equal(state:get(110))
			local user100 = newState:get(100)
			local user110 = newState:get(110)
			expect(user100:get("username")).to.equal("Updated cool username 1")
			expect(user110:get("username")).to.equal("Updated cool username 3")
			expect(user100:get("information")["settings"]).to.equal("updated example 1")
			expect(user110:get("information")["settings"]).to.equal("updated example 3")
		end)

		describe("Multiple joins and None", function()
			it("Works in basic cases", function()
				expect(deepJoin(1, 2, 3)).to.equal(3)
				local data1 = {
					name = "Jim",
					age = 22
				}
				local data2 = {
					name = "James"
				}
				local data3 = {
					birthday = 11
				}
				local newData = deepJoin(data1, data2, data3)
				expect(newData).to.equal(data3)
			end)

			it("Should work with OrderedSet", function()
				local set1 = OrderedSet.new(sort.default, 4, 3, 2, 1)
				local set2 = OrderedSet.new(sort.default, 3, 5)
				local set3 = OrderedSet.new(sort.default, 100, 4)
				local newSet = deepJoin(set1, set2, set3)
				expect(OrderedSet.is(newSet)).to.equal(true)
				expect(newSet:find(1)).to.equal(true)
				expect(newSet:find(2)).to.equal(true)
				expect(newSet:find(3)).to.equal(true)
				expect(newSet:find(4)).to.equal(true)
				expect(newSet:find(5)).to.equal(true)
				expect(newSet:find(100)).to.equal(true)
				expect(newSet:size()).to.equal(6)
				expect(newSet:first()).to.equal(1)
				expect(newSet:last()).to.equal(100)
			end)

			it("Should work with UnorderedSet", function()
				local set1 = UnorderedSet.new(4, 3, 2, 1)
				local set2 = UnorderedSet.new(3, 5)
				local set3 = UnorderedSet.new(100, 4)
				local newSet = deepJoin(set1, set2, set3)
				expect(UnorderedSet.is(newSet)).to.equal(true)
				expect(newSet:find(1)).to.equal(true)
				expect(newSet:find(2)).to.equal(true)
				expect(newSet:find(3)).to.equal(true)
				expect(newSet:find(4)).to.equal(true)
				expect(newSet:find(5)).to.equal(true)
				expect(newSet:find(100)).to.equal(true)
				expect(newSet:size()).to.equal(6)
			end)

			it("Should work with Lists", function()
				local list1 = List.new(5, 4, 3, 2, 1)
				local list2 = List.new(100, 101)
				local list3 = List.new(1000, 1001)
				local newList = deepJoin(list1, list2, list3)
				expect(List.is(newList)).to.equal(true)
				expect(newList:size()).to.equal(9)
				expect(newList:get(1)).to.equal(5)
				expect(newList:get(6)).to.equal(100)
				expect(newList:get(newList:size())).to.equal(1001)
			end)

			describe("Working with None", function()
				it("Should work in basic cases", function()
					local result = deepJoin(5, None)
					expect(result).to.never.be.ok()
				end)
			end)
		end)
	end)
end