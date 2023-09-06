-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/expect/src/extractExpectedAssertionsErrors.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 ]]
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local exports = {}
local jest_matcher_utilsModule = require(Packages.JestMatcherUtils)
local EXPECTED_COLOR = jest_matcher_utilsModule.EXPECTED_COLOR
local RECEIVED_COLOR = jest_matcher_utilsModule.RECEIVED_COLOR
local matcherHint = jest_matcher_utilsModule.matcherHint
local pluralize = jest_matcher_utilsModule.pluralize
local jestMatchersObjectModule = require(script.Parent.jestMatchersObject)
local getState = jestMatchersObjectModule.getState
local setState = jestMatchersObjectModule.setState
local typesModule = require(script.Parent.types)
type Expect = typesModule.Expect
type ExpectedAssertionsErrors = typesModule.ExpectedAssertionsErrors
local function resetAssertionsLocalState()
	-- ROBLOX deviation START: Using Object.None instead of nil to actually clear the expect assertions number
	setState({ assertionCalls = 0, expectedAssertionsNumber = Object.None, isExpectingAssertions = false })
	-- ROBLOX deviation END
end
-- Create and format all errors related to the mismatched number of `expect`
-- calls and reset the matcher's state.
local extractExpectedAssertionsErrors: typeof((({} :: any) :: Expect).extractExpectedAssertionsErrors)
function extractExpectedAssertionsErrors()
	local result: ExpectedAssertionsErrors = {}
	local assertionCalls, expectedAssertionsNumber, expectedAssertionsNumberError, isExpectingAssertions, isExpectingAssertionsError
	do
		local ref = getState()
		assertionCalls, expectedAssertionsNumber, expectedAssertionsNumberError, isExpectingAssertions, isExpectingAssertionsError =
			ref.assertionCalls,
			ref.expectedAssertionsNumber,
			ref.expectedAssertionsNumberError,
			ref.isExpectingAssertions,
			ref.isExpectingAssertionsError
	end
	resetAssertionsLocalState()
	if typeof(expectedAssertionsNumber) == "number" and assertionCalls ~= expectedAssertionsNumber then
		local numOfAssertionsExpected = EXPECTED_COLOR(pluralize("assertion", expectedAssertionsNumber));
		(expectedAssertionsNumberError :: any).message = (
			matcherHint(".assertions", "", tostring(expectedAssertionsNumber), { isDirectExpectCall = true })
		)
			.. "\n\n"
			.. ("Expected %s to be called but received "):format(tostring(numOfAssertionsExpected))
			.. tostring(
				RECEIVED_COLOR(pluralize("assertion call", Boolean.toJSBoolean(assertionCalls) and assertionCalls or 0))
			)
			.. "."
		-- ROBLOX deviation START: add call to Error.__recalculateStacktrace until Error polyfill calculates the stacktrace on first access to the property
		if typeof(Error.__recalculateStacktrace) == "function" then
			Error.__recalculateStacktrace(expectedAssertionsNumberError)
		end
		-- ROBLOX deviation END
		table.insert(result, {
			actual = tostring(assertionCalls),
			error = expectedAssertionsNumberError :: any,
			expected = tostring(expectedAssertionsNumber),
		})
	end
	if isExpectingAssertions and assertionCalls == 0 then
		local expected = EXPECTED_COLOR("at least one assertion")
		local received = RECEIVED_COLOR("received none");
		(isExpectingAssertionsError :: any).message = tostring(
			matcherHint(".hasAssertions", "", "", { isDirectExpectCall = true })
		) .. "\n\n" .. ("Expected %s to be called but %s."):format(tostring(expected), tostring(received))
		-- ROBLOX deviation START: add call to Error.__recalculateStacktrace until Error polyfill calculates the stacktrace on first access to the property
		if typeof(Error.__recalculateStacktrace) == "function" then
			Error.__recalculateStacktrace(isExpectingAssertionsError)
		end
		-- ROBLOX deviation END
		table.insert(result, {
			actual = "none",
			error = isExpectingAssertionsError :: any,
			expected = "at least one",
		})
	end
	return result
end
exports.default = extractExpectedAssertionsErrors
return exports
