-- Tests adapted directly from examples at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local slice = require(Array.slice)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("Invalid argument", function()
		jestExpect(function()
			slice(nil, 1)
		end).toThrow()
	end)

	it("Return the whole array", function()
		local animals = {"ant", "bison", "camel", "duck", "elephant"}
		local array_slice = slice(animals)
		jestExpect(array_slice).toEqual({"ant", "bison", "camel", "duck", "elephant"})
	end)

	it("Return from index 3 to end", function()
		local animals = {"ant", "bison", "camel", "duck", "elephant"}
		local array_slice = slice(animals, 3)
		jestExpect(array_slice).toEqual({"camel", "duck", "elephant"})
	end)

	it("Return from index 3 to 5", function()
		local animals = {"ant", "bison", "camel", "duck", "elephant"}
		local array_slice = slice(animals, 3, 5)
		jestExpect(array_slice).toEqual({"camel", "duck"})
	end)

	it("Return from index 2 to index 6 (out of bounds)", function()
		local animals = {"ant", "bison", "camel", "duck", "elephant"}
		local array_slice = slice(animals, 2, 6)
		jestExpect(array_slice).toEqual({"bison", "camel", "duck", "elephant"})
	end)

	describe("Negative indices", function()
		it("Return from index 0 to end", function()
			local animals = {"ant", "bison", "camel", "duck", "elephant"}
			local array_slice = slice(animals, 0)
			jestExpect(array_slice).toEqual({"elephant"})
		end)

		it("Return from index -1 to 0", function()
			local animals = {"ant", "bison", "camel", "duck", "elephant"}
			local array_slice = slice(animals, -1, 0)
			jestExpect(array_slice).toEqual({"duck"})
		end)
	end)

	describe("Return empty array", function()
		it("Start index out of bounds", function()
			local animals = {"ant", "bison", "camel", "duck", "elephant"}
			local array_slice = slice(animals, 10)
			jestExpect(array_slice).toEqual({})
		end)

		it("Start index after end index", function()
			local animals = {"ant", "bison", "camel", "duck", "elephant"}
			local array_slice = slice(animals, 2, 1)
			jestExpect(array_slice).toEqual({})
		end)
	end)
end