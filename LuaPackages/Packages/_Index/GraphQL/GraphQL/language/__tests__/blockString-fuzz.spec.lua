--!nocheck
--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/__tests__/blockString-fuzz.js

return function()
	local language = script.Parent.Parent
	local src = language.Parent

	local dedent = require(src.__testUtils__.dedent).dedent
	local inspectStr = require(src.__testUtils__.inspectStr).inspectStr
	local genFuzzStrings = require(src.__testUtils__.genFuzzStrings).genFuzzStrings

	local invariant = require(src.jsutils.invariant).invariant

	local Lexer = require(language.lexer).Lexer
	local Source = require(language.source).Source
	local printBlockString = require(language.blockString).printBlockString

	local function lexValue(str: string)
		local lexer = Lexer.new(Source.new(str))
		local value = lexer.advance().value

		invariant(lexer.advance().kind == "<EOF>", "Expected EOF")
		return value
	end

	describe("printBlockString", function()
		it("correctly print random strings", function()
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

				invariant(typeof(testValue) == "string")

				local printedValue = lexValue(printBlockString(testValue))

				invariant(
					testValue == printedValue,
					dedent(
						"Expected lexValue(printBlockString("
							.. inspectStr(testValue)
							.. "))\n"
							.. "to equal "
							.. inspectStr(testValue)
							.. "\n"
							.. "but got  "
							.. inspectStr(printedValue)
					)
				)

				local printedMultilineString = lexValue(printBlockString(testValue, " ", true))

				invariant(
					testValue == printedMultilineString,
					dedent(
						"Expected lexValue(printBlockString("
							.. inspectStr(testValue)
							.. ", ' ', true))\n"
							.. "to equal "
							.. inspectStr(testValue)
							.. "\n"
							.. "but got  "
							.. inspectStr(printedMultilineString)
					)
				)
			end
		end)
	end)
end
