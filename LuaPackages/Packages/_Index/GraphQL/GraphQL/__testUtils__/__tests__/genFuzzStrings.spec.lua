--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/__testUtils__/__tests__/genFuzzStrings-test.js

return function()
	local genFuzzStrings = require(script.Parent.Parent.genFuzzStrings).genFuzzStrings
	local function expectFuzzStrings(options)
		-- create an array from generator
		local arr = {}
		for item in genFuzzStrings(options) do
			table.insert(arr, item)
		end

		-- ROBLOX deviation: because of how TestEZ works we can't use expect in here
		return arr
	end

	describe("genFuzzStrings", function()
		it("always provide empty string", function()
			expect(expectFuzzStrings({
				allowedChars = {},
				maxLength = 0,
			})).toEqual({ "" })

			expect(expectFuzzStrings({ allowedChars = {}, maxLength = 1 })).toEqual({ "" })
			expect(expectFuzzStrings({ allowedChars = { "a" }, maxLength = 0 })).toEqual({ "" })
		end)

		it("generate strings with single character", function()
			expect(expectFuzzStrings({ allowedChars = { "a" }, maxLength = 1 })).toEqual({
				"",
				"a",
			})

			expect(expectFuzzStrings({ allowedChars = { "a", "b", "c" }, maxLength = 1 })).toEqual({
				"",
				"a",
				"b",
				"c",
			})
		end)

		it("generate strings with multiple character", function()
			expect(expectFuzzStrings({ allowedChars = { "a" }, maxLength = 2 })).toEqual({
				"",
				"a",
				"aa",
			})

			expect(expectFuzzStrings({ allowedChars = { "a", "b", "c" }, maxLength = 2 })).toEqual({
				"",
				"a",
				"b",
				"c",
				"aa",
				"ab",
				"ac",
				"ba",
				"bb",
				"bc",
				"ca",
				"cb",
				"cc",
			})
		end)

		it("generate strings longer than possible number of characters", function()
			expect(expectFuzzStrings({ allowedChars = { "a", "b" }, maxLength = 3 })).toEqual({
				"",
				"a",
				"b",
				"aa",
				"ab",
				"ba",
				"bb",
				"aaa",
				"aab",
				"aba",
				"abb",
				"baa",
				"bab",
				"bba",
				"bbb",
			})
		end)
	end)
end
