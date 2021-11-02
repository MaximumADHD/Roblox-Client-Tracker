return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local join = require(Array.join)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	describe("Join", function()
		local arr = { "Wind", "Water", "Fire" }

		it("should join strings arrays without specified separator", function()
			jestExpect(join(arr)).toEqual("Wind,Water,Fire")
		end)

		it("should join strings arrays with specified separator", function()
			jestExpect(join(arr, ", ")).toEqual("Wind, Water, Fire")
			jestExpect(join(arr, " + ")).toEqual("Wind + Water + Fire")
			jestExpect(join(arr, "")).toEqual("WindWaterFire")
		end)

		it("should join empty array", function()
			jestExpect(join({})).toEqual("")
			jestExpect(join({}, ", ")).toEqual("")
			jestExpect(join({}, " + ")).toEqual("")
			jestExpect(join({}, "")).toEqual("")
		end)

		it("should not add separator for array with single element", function()
			jestExpect(join({"foo"}, ", ")).toEqual("foo")
			jestExpect(join({"foo"}, " + ")).toEqual("foo")
			jestExpect(join({"foo"}, "")).toEqual("foo")
		end)
	end)
end
