return function()
	local LuauPolyfill = script.Parent.Parent
	local Set = require(LuauPolyfill.Set)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	local AN_ITEM = "bar"
	local ANOTHER_ITEM = "baz"

	describe("constructors", function()
		it("creates an empty array", function()
			local foo = Set.new()
			jestExpect(foo.size).toEqual(0)
		end)

		it("creates a set from an array", function()
			local foo = Set.new({ AN_ITEM, ANOTHER_ITEM })
			jestExpect(foo.size).toEqual(2)
			jestExpect(foo:has(AN_ITEM)).toEqual(true)
			jestExpect(foo:has(ANOTHER_ITEM)).toEqual(true)
		end)

		it("creates a set from a string", function()
			local foo = Set.new("abc")
			jestExpect(foo.size).toEqual(3)
			jestExpect(foo:has("a")).toEqual(true)
			jestExpect(foo:has("b")).toEqual(true)
			jestExpect(foo:has("c")).toEqual(true)
		end)

		it("deduplicates the elements from the iterable", function()
			local foo = Set.new("foo")
			jestExpect(foo.size).toEqual(2)
			jestExpect(foo:has("f")).toEqual(true)
			jestExpect(foo:has("o")).toEqual(true)
		end)

		it("throws when trying to create a set from a non-iterable", function()
			jestExpect(function()
				return Set.new(true)
			end).toThrow("cannot create array from value of type `boolean`")
			jestExpect(function()
				return Set.new(1)
			end).toThrow("cannot create array from value of type `number`")
		end)

		if _G.__DEV__ then
			it("throws when trying to create a set from an object like table", function()
				jestExpect(function()
					return Set.new({ a = true })
				end).toThrow("cannot create array from an object-like table")
			end)
		end
	end)

	describe("add", function()
		it("returns the set object", function()
			local foo = Set.new()
			jestExpect(foo:add(1)).toEqual(foo)
		end)

		it("increments the size if the element is added for the first time", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			jestExpect(foo.size).toEqual(1)
		end)

		it("does not increment the size the second time an element is added", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:add(AN_ITEM)
			jestExpect(foo.size).toEqual(1)
		end)
	end)

	describe("clear", function()
		it("sets the size to zero", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:clear()
			jestExpect(foo.size).toEqual(0)
		end)

		it("removes the items from the set", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:clear()
			jestExpect(foo:has(AN_ITEM)).toEqual(false)
		end)
	end)

	describe("delete", function()
		it("removes the items from the set", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:delete(AN_ITEM)
			jestExpect(foo:has(AN_ITEM)).toEqual(false)
		end)

		it("returns true if the item was in the set", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			jestExpect(foo:delete(AN_ITEM)).toEqual(true)
		end)

		it("returns false if the item was not in the set", function()
			local foo = Set.new()
			jestExpect(foo:delete(AN_ITEM)).toEqual(false)
		end)

		it("decrements the size if the item was in the set", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:delete(AN_ITEM)
			jestExpect(foo.size).toEqual(0)
		end)

		it("does not decrement the size if the item was not in the set", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:delete(ANOTHER_ITEM)
			jestExpect(foo.size).toEqual(1)
		end)
	end)

	describe("has", function()
		it("returns true if the item is in the set", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			jestExpect(foo:has(AN_ITEM)).toEqual(true)
		end)

		it("returns false if the item is not in the set", function()
			local foo = Set.new()
			jestExpect(foo:has(AN_ITEM)).toEqual(false)
		end)
	end)

	describe("ipairs", function()
		local function makeArray(...)
			local array = {}
			for _, item in ... do
				table.insert(array, item)
			end
			return array
		end

		it("iterates on an empty set", function()
			local foo = Set.new()
			jestExpect(makeArray(foo:ipairs())).toEqual({})
		end)

		it("iterates on the elements by their insertion order", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:add(ANOTHER_ITEM)
			jestExpect(makeArray(foo:ipairs())).toEqual({ AN_ITEM, ANOTHER_ITEM })
		end)

		it("does not iterate on removed elements", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:add(ANOTHER_ITEM)
			foo:delete(AN_ITEM)
			jestExpect(makeArray(foo:ipairs())).toEqual({ ANOTHER_ITEM })
		end)

		it("iterates on elements if the added back to the set", function()
			local foo = Set.new()
			foo:add(AN_ITEM)
			foo:add(ANOTHER_ITEM)
			foo:delete(AN_ITEM)
			foo:add(AN_ITEM)
			jestExpect(makeArray(foo:ipairs())).toEqual({ ANOTHER_ITEM, AN_ITEM })
		end)
	end)

	describe("MDN examples", function()
		-- the following tests are adapted from the examples shown on the MDN documentation:
		-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set
		it("works like MDN documentation example", function()
			local mySet = Set.new()

			jestExpect(mySet:add(1)).toEqual(mySet)
			jestExpect(mySet:add(5)).toEqual(mySet)
			jestExpect(mySet:add(5)).toEqual(mySet)
			jestExpect(mySet:add("some text")).toEqual(mySet)

			local o = { a = 1, b = 2 }

			jestExpect(mySet:add(o)).toEqual(mySet)
			-- // o is referencing a different object, so this is okay
			jestExpect(mySet:add({ a = 1, b = 2 })).toEqual(mySet)
			jestExpect(mySet:has(1)).toEqual(true)

			jestExpect(mySet:has(3)).toEqual(false)

			jestExpect(mySet:has(5)).toEqual(true)
			jestExpect(mySet:has(math.sqrt(25))).toEqual(true)
			jestExpect(mySet:has(("Some Text"):lower())).toEqual(true)
			jestExpect(mySet:has(o)).toEqual(true)

			jestExpect(mySet.size).toEqual(5)

			jestExpect(mySet:delete(5)).toEqual(true)
			jestExpect(mySet:has(5)).toEqual(false)
		end)
	end)
end
