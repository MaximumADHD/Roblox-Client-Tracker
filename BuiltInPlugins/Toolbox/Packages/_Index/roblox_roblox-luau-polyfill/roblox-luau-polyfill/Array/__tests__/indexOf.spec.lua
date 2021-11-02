-- Tests partially based on examples from:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local indexOf = require(Array.indexOf)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	local beasts = { "ant", "bison", "camel", "duck", "bison" }

	it("returns the index of the first occurrence of an element", function()
		jestExpect(indexOf(beasts, "bison")).toEqual(2)
	end)

	it("begins at the start index when provided", function()
		jestExpect(indexOf(beasts, "bison", 3)).toEqual(5)
	end)

	it("returns -1 when the value isn't present", function()
		jestExpect(indexOf(beasts, "giraffe")).toEqual(-1)
	end)

	it("returns -1 when the fromIndex is too large", function()
		jestExpect(indexOf(beasts, "camel", 6)).toEqual(-1)
	end)

	it("accepts a negative fromIndex, and subtracts it from the total length", function()
		jestExpect(indexOf(beasts, "bison", -4)).toEqual(2)
		jestExpect(indexOf(beasts, "bison", -2)).toEqual(5)
		jestExpect(indexOf(beasts, "ant", -2)).toEqual(-1)
	end)

	it("accepts a 0 fromIndex (special case for Lua's 1-index arrays) and starts at the end", function()
		jestExpect(indexOf(beasts, "bison", 0)).toEqual(5)
	end)

	it("starts at the beginning when it receives a too-large negative fromIndex", function()
		jestExpect(indexOf(beasts, "bison", -10)).toEqual(2)
		jestExpect(indexOf(beasts, "ant", -10)).toEqual(1)
	end)

	it("uses strict equality", function()
		local firstObject = { x = 1 }
		local objects = {
			firstObject,
			{ x = 2 },
			{ x = 3 },
		}
		jestExpect(indexOf(objects, { x = 2 })).toEqual(-1)
		jestExpect(indexOf(objects, firstObject)).toEqual(1)
	end)
end