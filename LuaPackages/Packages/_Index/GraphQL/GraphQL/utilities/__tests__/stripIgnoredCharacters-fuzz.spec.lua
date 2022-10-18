--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/stripIgnoredCharacters-fuzz.js

return function()
	local dedent = require(script.Parent.Parent.Parent.__testUtils__.dedent).dedent
	local inspectStr = require(script.Parent.Parent.Parent.__testUtils__.inspectStr).inspectStr
	local genFuzzStrings =
		require(script.Parent.Parent.Parent.__testUtils__.genFuzzStrings).genFuzzStrings

	local invariant = require(script.Parent.Parent.Parent.jsutils.invariant).invariant

	local Lexer = require(script.Parent.Parent.Parent.language.lexer).Lexer
	local Source = require(script.Parent.Parent.Parent.language.source).Source

	local stripIgnoredCharacters =
		require(script.Parent.Parent.stripIgnoredCharacters).stripIgnoredCharacters

	local function lexValue(str: string)
		local lexer = Lexer.new(Source.new(str))
		local value = lexer:advance().value

		invariant(lexer:advance().kind == "<EOF>", "Expected EOF")
		return value
	end

	describe("stripIgnoredCharacters", function()
		it("strips ignored characters inside random block strings", function()
			-- Testing with length >7 is taking exponentially more time. However it is
			-- highly recommended to test with increased limit if you make any change.
			for fuzzStr in genFuzzStrings({
				allowedChars = { "\n", "\t", " ", '"', "a", "\\" },
				maxLength = 7,
			}) do
				local testStr = '"""' .. fuzzStr .. '"""'

				local testValue

				local _ok = pcall(function()
					testValue = lexValue(testStr)
				end)
				if not _ok then
					-- skip invalid values
					continue
				end

				local strippedValue = lexValue(stripIgnoredCharacters(testStr))

				invariant(
					testValue == strippedValue,
					dedent(
						([[
                  Expected lexValue(stripIgnoredCharacters(%s))
                    to equal %s
                    but got  %s
                ]]):format(
							inspectStr(testStr),
							inspectStr(testValue),
							inspectStr(strippedValue)
						)
					)
				)
			end
		end)
	end)
end
