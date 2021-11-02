return function()
	local Math = script.Parent.Parent
	local clz32 = require(Math.clz32)

	local LuauPolyfill = Math.Parent
	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("gives the number of leading zero of powers of 2", function()
		for i = 1, 32 do
			local value = 2^(i - 1)
			local expected = 32 - i
			jestExpect(clz32(value)).toEqual(expected)
		end
	end)

	it("gives the number of leading zeros of random values", function()
		for _ = 1, 100 do
			local power = math.random(1, 31)
			local powerValue = 2^power
			local value = powerValue + math.random(1, powerValue - 1)

			jestExpect(clz32(value)).toEqual(31 - power)
		end
	end)
end
