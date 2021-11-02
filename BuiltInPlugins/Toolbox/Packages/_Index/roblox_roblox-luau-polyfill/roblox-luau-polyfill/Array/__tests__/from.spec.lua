-- tests based on the examples provided on MDN web docs:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local from = require(Array.from)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("creates a array of characters given a string", function()
		jestExpect(from("bar")).toEqual({"b", "a", "r"})
	end)

	it("creates an array from another array", function()
		jestExpect(from({"foo", "bar"})).toEqual({"foo", "bar"})
	end)

	it("returns an empty array given a number", function()
		jestExpect(from(10)).toEqual({})
	end)

	it("returns an empty array given an empty table", function()
		jestExpect(from({})).toEqual({})
	end)

	it("returns an empty array given a map-like table", function()
		jestExpect(from({foo = "bar"})).toEqual({})
	end)

	it("throws when given nil", function()
		jestExpect(function()
			from(nil)
		end).toThrow("cannot create array from a nil value")
	end)

	describe("with mapping function", function()
		it("maps each character", function()
			jestExpect(
				from("bar", function(character, index)
					return character .. index
				end)
			).toEqual({"b1", "a2", "r3"})
		end)

		it("maps each element of the array", function()
			jestExpect(
				from({10, 20}, function(element, index)
					return element + index
				end)
			).toEqual({11, 22})
		end)
	end)
end
