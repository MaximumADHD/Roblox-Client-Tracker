return function()
	local Object = script.Parent.Parent
	local values = require(Object.values)

	local LuauPolyfill = Object.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("returns the values of a table", function()
		local result = values({
			foo = "bar",
			baz = "zoo",
		})
		table.sort(result)
		jestExpect(result).toEqual({"bar", "zoo"})
	end)

	it("returns the values of an array-like table", function()
		local result = values({"bar", "foo"})
		table.sort(result)
		jestExpect(result).toEqual({"bar", "foo"})
	end)

	it("returns an array of character given a string", function()
		jestExpect(values("bar")).toEqual({"b", "a", "r"})
	end)

	it("throws given nil", function()
		jestExpect(function()
			values(nil)
		end).toThrow("cannot extract values from a nil value")
	end)
end
