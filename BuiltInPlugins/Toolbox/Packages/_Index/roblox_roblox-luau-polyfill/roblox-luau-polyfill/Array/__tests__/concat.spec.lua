-- Some tests are adapted from examples at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/concat
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local concat = require(Array.concat)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it("concatenate arrays with single values", function()
		jestExpect(concat({ 1 })).toEqual({ 1 })
		jestExpect(concat({ 1 }, { 2 })).toEqual({ 1, 2 })
		jestExpect(concat({ 1 }, { 2 }, { 3 })).toEqual({ 1, 2, 3 })
	end)

	it("concatenate arrays with multiple values", function()
		jestExpect(concat({ 1 }, { 2, 3 })).toEqual({ 1, 2, 3 })
		jestExpect(concat({ 1, 2 }, { 3 })).toEqual({ 1, 2, 3 })
		jestExpect(concat({ 1, 2 }, { 3, 4 })).toEqual({ 1, 2, 3, 4 })
		jestExpect(concat({ 1, 2 }, { 3, 4 }, { 5, 6 })).toEqual({ 1, 2, 3, 4, 5, 6 })
	end)

	it("concatenate values", function()
		jestExpect(concat(1)).toEqual({ 1 })
		jestExpect(concat(1, 2)).toEqual({ 1, 2 })
		jestExpect(concat(1, 2, 3)).toEqual({ 1, 2, 3 })
		jestExpect(concat(1, 2, 3, 4)).toEqual({ 1, 2, 3, 4 })
	end)

	it("concatenate values and arrays combination", function()
		jestExpect(concat(1, { 2 })).toEqual({ 1, 2 })
		jestExpect(concat({ 1 }, 2)).toEqual({ 1, 2 })
		jestExpect(concat({ 1 }, 2, { 3 })).toEqual({ 1, 2, 3 })
		jestExpect(concat({ 1, 2 }, 3, { 4 })).toEqual({ 1, 2, 3, 4 })
	end)

	it("concatenates values to an array", function()
		local letters = { "a", "b", "c" }
		local alphaNumeric = concat(letters, 1, { 2, 3 })
		jestExpect(alphaNumeric).toEqual({ "a", "b", "c", 1, 2, 3 })
	end)

	it("concatenates nested arrays", function()
		local num1 = { { 1 } }
		local num2 = { 2, { 3 } }
		local numbers = concat(num1, num2)
		jestExpect(numbers).toEqual({ { 1 }, 2, { 3 } })
	end)

	if _G.__DEV__ then
		it("throws when an object-like table value is passed", function()
			jestExpect(function()
				concat({1, 2}, { a = true })
			end).toThrow("Array.concat(...) only works with array-like tables but it received an object-like table")
		end)
	end
end
