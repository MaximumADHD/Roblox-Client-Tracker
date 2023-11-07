--!nonstrict
-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-matcher-utils/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
local Error = LuauPolyfill.Error
local Number = LuauPolyfill.Number
local Symbol = LuauPolyfill.Symbol

local chalk = require(Packages.ChalkLua)

local JestDiff = require(Packages.JestDiff)
local DIFF_DELETE = JestDiff.DIFF_DELETE
local DIFF_EQUAL = JestDiff.DIFF_EQUAL
local DIFF_INSERT = JestDiff.DIFF_INSERT
type Diff = JestDiff.Diff
type ImportDiffOptions = JestDiff.DiffOptions
local diffDefault = JestDiff.diff
local diffStringsRaw = JestDiff.diffStringsRaw
local diffStringsUnified = JestDiff.diffStringsUnified

local JestGetType = require(Packages.JestGetType)
local getType = JestGetType.getType
local isPrimitive = JestGetType.isPrimitive

local PrettyFormat = require(Packages.PrettyFormat)
local prettyFormat = PrettyFormat.format

local Replaceable = require(CurrentModule.Replaceable)
local deepCyclicCopyReplaceable = require(CurrentModule.deepCyclicCopyReplaceable)

-- ROBLOX TODO: continue to implement prettyFormat plugins
local prettyFormatPlugins = PrettyFormat.plugins
local PLUGINS = {
	prettyFormatPlugins.AsymmetricMatcher,
	-- ROBLOX deviation: Roblox Instance matchers
	prettyFormatPlugins.RobloxInstance,
}

type MatcherHintColor = (string) -> string -- subset of Chalk type

export type MatcherHintOptions = {
	comment: string?,
	-- ROBLOX TODO? should be MatcherHintColor like in upstream, but requires modeling Chalk differently
	expectedColor: MatcherHintColor?,
	isDirectExpectCall: boolean?,
	isNot: boolean?,
	promise: string?,
	receivedColor: MatcherHintColor?,
	secondArgument: string?,
	-- ROBLOX TODO? should be MatcherHintColor like in upstream, but requires modeling Chalk differently
	secondArgumentColor: MatcherHintColor?,
}

export type DiffOptions = ImportDiffOptions

local EXPECTED_COLOR = chalk.green
local RECEIVED_COLOR = chalk.red
local INVERTED_COLOR = chalk.inverse
local BOLD_WEIGHT = chalk.bold
local DIM_COLOR = chalk.dim

local MULTILINE_REGEXP = "\n"
local SPACE_SYMBOL = utf8.char(183) -- middle dot

local NUMBERS = {
	"zero",
	"one",
	"two",
	"three",
	"four",
	"five",
	"six",
	"seven",
	"eight",
	"nine",
	"ten",
	"eleven",
	"twelve",
	"thirteen",
}

local SUGGEST_TO_CONTAIN_EQUAL =
	"Looks like you wanted to test for object/array equality with the stricter `toContain` matcher. You probably need to use `toContainEqual` instead."

local replaceTrailingSpaces, getCommonAndChangedSubstrings, isLineDiffable, shouldPrintDiff, replaceMatchedToAsymmetricMatcher, isAsymmetricMatcher
local matcherErrorMessage, matcherHint

local function stringify(object: unknown, maxDepth_: number?, maxWidth_: number?): string
	-- ROBLOX deviation START: Added this if logic to deal with handling nil values in Lua tables
	if object == Symbol.for_("$$nil") then
		object = nil
	end
	-- ROBLOX deviation END
	local maxDepth: number = if maxDepth_ ~= nil then maxDepth_ else 10
	local maxWidth: number = if maxWidth_ ~= nil then maxWidth_ else 10

	local MAX_LENGTH = 10000
	local result

	local ok = pcall(function()
		result = prettyFormat(object, {
			maxDepth = maxDepth,
			maxWidth = maxWidth,
			min = true,
			plugins = PLUGINS,
		})
	end)

	if not ok then
		result = prettyFormat(object, {
			callToJSON = false,
			maxDepth = maxDepth,
			maxWidth = maxWidth,
			min = true,
			plugins = PLUGINS,
		})
	end

	if
		-- ROBLOX deviation START: fix length check
		-- result.length >= MAX_LENGTH --[[ ROBLOX CHECK: operator '>=' works only if either both arguments are strings or both are a number ]]
		#result >= MAX_LENGTH
		-- ROBLOX deviation END
		and maxDepth > 1 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	then
		return stringify(object, math.floor(maxDepth / 2), maxWidth)
	elseif
		-- ROBLOX deviation START: fix length check
		-- result.length >= MAX_LENGTH --[[ ROBLOX CHECK: operator '>=' works only if either both arguments are strings or both are a number ]]
		#result >= MAX_LENGTH
		-- ROBLOX deviation END
		and maxWidth > 1 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	then
		return stringify(object, maxDepth, math.floor(maxWidth / 2))
	else
		return result
	end
end

local function highlightTrailingWhitespace(text: string): string
	return text:gsub("%s+$", function(s)
		return INVERTED_COLOR(s)
	end)
end

-- Replace common spaces with middle dot at the end of any line
function replaceTrailingSpaces(text: string): string
	return text:gsub("%s+$", function(spaces)
		return string.rep(SPACE_SYMBOL, #spaces)
	end)
end

local function printReceived(object: any): string
	return RECEIVED_COLOR(replaceTrailingSpaces(stringify(object)))
end

local function printExpected(value: any): string
	return EXPECTED_COLOR(replaceTrailingSpaces(stringify(value)))
end

local function printWithType(
	name: string, -- 'Expected' or 'Received'
	value: any,
	print_: (any) -> string -- printExpected or printReceived
): string
	local type_ = getType(value)
	local hasType
	if type_ ~= "nil" then
		hasType = string.format("%s has type:  %s\n", name, type_)
	else
		hasType = ""
	end

	local hasValue = string.format("%s has value: %s", name, print_(value))
	return hasType .. hasValue
end

local function ensureNoExpected(expected: any, matcherName: string, options: MatcherHintOptions?): ()
	if typeof(expected) ~= "nil" then
		-- Prepend maybe not only for backward compatibility
		local matcherString = matcherName

		if not options then
			matcherString = "[.never]" .. matcherString
		end

		error(
			Error(
				matcherErrorMessage(
					matcherHint(matcherString, nil, "", options),
					"this matcher must not have an expected argument",
					printWithType("Expected", expected, printExpected)
				)
			)
		)
	end
end

-- Ensures that 'actual' is of type 'number'
local function ensureActualIsNumber(actual: any, matcherName: string, options: MatcherHintOptions?): ()
	-- ROBLOX deviation: we do not support a "bigint" type
	if typeof(actual) ~= "number" then
		-- Prepend maybe not only for backward compatibility
		local matcherString = matcherName

		if not options then
			matcherString = "[.never]" .. matcherString
		end

		error(
			Error(
				matcherErrorMessage(
					matcherHint(matcherString, nil, nil, options),
					RECEIVED_COLOR("received") .. " value must be a number",
					printWithType("Received", actual, printReceived)
				)
			)
		)
	end
end

-- Ensures that 'expected' is of type 'number'
local function ensureExpectedIsNumber(expected: any, matcherName: string, options: MatcherHintOptions?): ()
	-- ROBLOX deviation: we do not support a "bigint" type
	if typeof(expected) ~= "number" then
		-- Prepend maybe not only for backward compatibility
		local matcherString = matcherName

		if not options then
			matcherString = "[.never]" .. matcherString
		end

		error(
			Error(
				matcherErrorMessage(
					matcherHint(matcherString, nil, nil, options),
					EXPECTED_COLOR("expected") .. " value must be a number",
					printWithType("Expected", expected, printExpected)
				)
			)
		)
	end
end

-- Ensures that 'actual' & 'expected' are of type 'number'
local function ensureNumbers(actual: any, expected: any, matcherName: string, options: MatcherHintOptions?): ()
	ensureActualIsNumber(actual, matcherName, options)
	ensureExpectedIsNumber(expected, matcherName, options)
end

local function ensureExpectedIsNonNegativeInteger(expected: any, matcherName: string, options: MatcherHintOptions?): ()
	if typeof(expected) ~= "number" or not Number.isSafeInteger(expected) or expected < 0 then
		local matcherString = matcherName

		if not options then
			matcherString = "[.never]" .. matcherString
		end

		error(
			Error(
				matcherErrorMessage(
					matcherHint(matcherString, nil, nil, options),
					EXPECTED_COLOR("expected") .. " value must be a non-negative integer",
					printWithType("Expected", expected, printExpected)
				)
			)
		)
	end
end

-- Given array of diffs, return concatenated string:
-- * include common substrings
-- * exclude change substrings which have opposite op
-- * include change substrings which have argument op
--   with inverse highlight only if there is a common substring
function getCommonAndChangedSubstrings(diffs: Array<Diff>, op: number, hasCommonDiff: boolean): string
	return Array.reduce(diffs, function(reduced: string, diff: Diff): string
		if diff[1] == DIFF_EQUAL then
			return reduced .. diff[2]
		elseif diff[1] ~= op then
			return reduced
		elseif hasCommonDiff then
			return reduced .. INVERTED_COLOR(diff[2])
		else
			return reduced .. diff[2]
		end
	end, "")
end

function isLineDiffable(expected: any, received: any): boolean
	local expectedType = getType(expected)
	local receivedType = getType(received)

	if expectedType ~= receivedType then
		return false
	end

	if isPrimitive(expected) then
		-- Print generic line diff for strings only:
		-- * if neither string is empty
		-- * if either string has more than one line
		return (
			typeof(expected) == "string"
			and typeof(received) == "string"
			and #expected ~= 0
			and #received ~= 0
			and not not (string.find(expected, MULTILINE_REGEXP) or string.find(received, MULTILINE_REGEXP))
		)
	end

	if expectedType == "DateTime" or expectedType == "function" then
		return false
	end

	if expectedType == "table" and typeof(expected.asymmetricMatch) == "function" then
		return false
	end

	if receivedType == "table" and typeof(received.asymmetricMatch) == "function" then
		return false
	end

	return true
end

local MAX_DIFF_STRING_LENGTH = 20000

function printDiffOrStringify(
	expected: any,
	received: any,
	expectedLabel: string,
	receivedLabel: string,
	expand: boolean -- CLI options: true if '--expand' or false if '--no-expand'
): string
	if
		typeof(expected) == "string"
		and typeof(received) == "string"
		and #expected ~= 0
		and #received ~= 0
		and #expected <= MAX_DIFF_STRING_LENGTH
		and #received <= MAX_DIFF_STRING_LENGTH
		and expected ~= received
	then
		if string.find(expected, MULTILINE_REGEXP) or string.find(received, MULTILINE_REGEXP) then
			return diffStringsUnified(expected, received, {
				aAnnotation = expectedLabel,
				bAnnotation = receivedLabel,
				changeLineTrailingSpaceColor = chalk.bgYellow,
				commonLineTrailingSpaceColor = chalk.bgYellow,
				emptyFirstOrLastLinePlaceholder = utf8.char(8629),
				expand = expand,
				includeChangeCounts = true,
			})
		end

		local diffs = diffStringsRaw(expected, received, true)
		local hasCommonDiff = Array.some(diffs, function(diff)
			return diff[1] == DIFF_EQUAL
		end)

		local printLabel = getLabelPrinter(expectedLabel, receivedLabel)
		local expectedLine = printLabel(expectedLabel)
			.. printExpected(getCommonAndChangedSubstrings(diffs, DIFF_DELETE, hasCommonDiff))

		local receivedLine = printLabel(receivedLabel)
			.. printReceived(getCommonAndChangedSubstrings(diffs, DIFF_INSERT, hasCommonDiff))

		return expectedLine .. "\n" .. receivedLine
	end

	if isLineDiffable(expected, received) then
		local replaced = replaceMatchedToAsymmetricMatcher(
			deepCyclicCopyReplaceable(expected),
			deepCyclicCopyReplaceable(received),
			{},
			{}
		)
		local replacedExpected = replaced.replacedExpected
		local replacedReceived = replaced.replacedReceived
		local difference = diffDefault(replacedExpected, replacedReceived, {
			aAnnotation = expectedLabel,
			bAnnotation = receivedLabel,
			expand = expand,
			includeChangeCounts = true,
		})

		if
			typeof(difference) == "string"
			and string.find(difference, "%- " .. expectedLabel)
			and string.find(difference, "%+ " .. receivedLabel)
		then
			return difference
		end
	end

	local printLabel = getLabelPrinter(expectedLabel, receivedLabel)
	local expectedLine = printLabel(expectedLabel) .. printExpected(expected)
	local receivedLine
	if stringify(expected) == stringify(received) then
		receivedLine = printLabel(receivedLabel) .. "serializes to the same string"
	else
		receivedLine = printLabel(receivedLabel) .. printReceived(received)
	end

	return expectedLine .. "\n" .. receivedLine
end

-- Sometimes, e.g. when comparing two numbers, the output from jest-diff
-- does not contain more information than the 'Expected:' / 'Received:' already gives.
-- In those cases, we do not print a diff to make the output shorter and  not redundant.
function shouldPrintDiff(actual: any, expected: any)
	if typeof(actual) == "number" and typeof(expected) == "number" then
		return false
	end

	-- ROBLOX deviation: excluded if statement checking bigint types

	if typeof(actual) == "boolean" and typeof(expected) == "boolean" then
		return false
	end

	return true
end

function replaceMatchedToAsymmetricMatcher(
	replacedExpected: any,
	replacedReceived: any,
	expectedCycles: Array<any>,
	receivedCycles: Array<any>
)
	if not Replaceable.isReplaceable(replacedExpected, replacedReceived) then
		return {
			replacedExpected = replacedExpected,
			replacedReceived = replacedReceived,
		}
	end

	if
		Array.indexOf(expectedCycles, replacedExpected) ~= -1
		or Array.indexOf(receivedCycles, replacedReceived) ~= -1
	then
		return {
			replacedExpected = replacedExpected,
			replacedReceived = replacedReceived,
		}
	end

	table.insert(expectedCycles, replacedExpected)
	table.insert(receivedCycles, replacedReceived)

	local expectedReplaceable = Replaceable.new(replacedExpected)
	local receivedReplaceable = Replaceable.new(replacedReceived)

	expectedReplaceable:forEach(function(expectedValue: any, key: any)
		local receivedValue = receivedReplaceable:get(key)
		if isAsymmetricMatcher(expectedValue) then
			if expectedValue:asymmetricMatch(receivedValue) then
				receivedReplaceable:set(key, expectedValue)
			end
		elseif isAsymmetricMatcher(receivedValue) then
			if receivedValue:asymmetricMatch(expectedValue) then
				expectedReplaceable:set(key, receivedValue)
			end
		elseif Replaceable.isReplaceable(expectedValue, receivedValue) then
			local replaced =
				replaceMatchedToAsymmetricMatcher(expectedValue, receivedValue, expectedCycles, receivedCycles)
			expectedReplaceable:set(key, replaced.replacedExpected)
			receivedReplaceable:set(key, replaced.replacedReceived)
		end
	end)

	return {
		replacedExpected = expectedReplaceable.object,
		replacedReceived = receivedReplaceable.object,
	}
end

-- ROBLOX deviation: excluded type annotation for AsymmetricMatcher because Luau does
-- not yet support type annotations for a generic function

function isAsymmetricMatcher(data: any)
	local type_ = getType(data)
	return type_ == "table" and typeof(data.asymmetricMatch) == "function"
end

local function diff(
	a: any,
	b: any,
	options -- ROBLOX deviation: omitted type annotation since we don't have DiffOptions translated
): string | nil
	return shouldPrintDiff(a, b) and diffDefault(a, b, options) or nil
end

function pluralize(word: string, count: number): string
	if count == 1 then
		return (NUMBERS[count + 1] or count) .. " " .. word
	else
		return (NUMBERS[count + 1] or count) .. " " .. word .. "s"
	end
end

-- To display lines of labeled values as two columns with monospac alignment:
-- given the strings which will describe the values,
-- return function which given each string, returns the label:
-- stirng, colon, space, and enough padding spaces to align the value.

type PrintLabel = (string) -> string

-- ROBLOX deviation: no annotation for "..." args
function getLabelPrinter(...): PrintLabel
	local strings: Array<string> = { ... }

	local maxLength = Array.reduce(strings, function(max, string_)
		return math.max(#string_, max)
	end, 0)

	return function(string_: string): string
		-- ROBLOX deviation: We need to throw an error since string.rep called for
		-- a negative repetition doesn't actually throw whereas upstream
		-- would throw
		if #string_ > maxLength then
			error("Cannot print label for string with length larger than the max allowed of " .. maxLength)
		end
		return string.format("%s: %s", string_, string.rep(" ", maxLength - #string_))
	end
end

function matcherErrorMessage(
	hint: string, -- assertion returned from call to matcherHint
	generic: string, -- condition which correct value must fulfill
	specific: string? -- incorrect value returned from call to printWithType
): string
	if typeof(specific) == "string" then
		return string.format("%s\n\n%s: %s%s", hint, BOLD_WEIGHT("Matcher error"), generic, "\n\n" .. specific)
	else
		return string.format("%s\n\n%s: %s%s", hint, BOLD_WEIGHT("Matcher error"), generic, "")
	end
end

-- Display assertion for the report when a test fails.
-- New format: rejects/resolves, not, and matcher name have black color
-- Old format: matcher name has dim color
function matcherHint(matcherName: string, received: string?, expected: string?, options: MatcherHintOptions?): string
	received = received or "received"
	expected = expected or "expected"
	options = options or {}

	--[[
		ROBLOX TODO: Remove the "if options" check once it can pass through
		Luau cleanly and define all of the variables in-line i.e.
		local comment = options.comment or ""
	]]
	local comment, expectedColor, isDirectExpectCall, isNot, promise, receivedColor, secondArgument, secondArgumentColor
	if options then
		comment = options.comment or ""
		expectedColor = options.expectedColor or EXPECTED_COLOR
		isDirectExpectCall = options.isDirectExpectCall or false
		isNot = options.isNot or false
		promise = options.promise or ""
		receivedColor = options.receivedColor or RECEIVED_COLOR
		secondArgument = options.secondArgument or ""
		secondArgumentColor = options.secondArgumentColor or EXPECTED_COLOR
	end

	local hint = ""
	local dimString = "expect" -- concatenate adjacent dim substrings

	if not isDirectExpectCall and received ~= "" then
		hint = hint .. DIM_COLOR(dimString .. "(") .. receivedColor(received)
		dimString = ")"
	end

	if promise ~= "" then
		hint = hint .. DIM_COLOR(dimString .. ".") .. promise
		dimString = ""
	end

	if isNot then
		hint = hint .. DIM_COLOR(dimString .. ".") .. "never"
		dimString = ""
	end

	if string.find(matcherName, "%.") then
		-- Old format: for backward compatibility,
		-- especially without promise or isNot options
		dimString = dimString .. matcherName
	else
		-- New format: omit period from matcherName arg
		hint = hint .. DIM_COLOR(dimString .. ".") .. matcherName
		dimString = ""
	end

	if expected == "" then
		dimString = dimString .. "()"
	else
		hint = hint .. DIM_COLOR(dimString .. "(") .. expectedColor(expected)
		if secondArgument ~= "" then
			hint = hint .. DIM_COLOR(", ") .. secondArgumentColor(secondArgument)
		end
		dimString = ")"
	end

	if comment ~= "" then
		dimString = dimString .. " -- " .. comment
	end

	if dimString ~= "" then
		hint = hint .. DIM_COLOR(dimString)
	end

	return hint
end

return {
	EXPECTED_COLOR = EXPECTED_COLOR,
	RECEIVED_COLOR = RECEIVED_COLOR,
	INVERTED_COLOR = INVERTED_COLOR,
	BOLD_WEIGHT = BOLD_WEIGHT,
	DIM_COLOR = DIM_COLOR,

	SUGGEST_TO_CONTAIN_EQUAL = SUGGEST_TO_CONTAIN_EQUAL,

	stringify = stringify,
	highlightTrailingWhitespace = highlightTrailingWhitespace,
	printReceived = printReceived,
	printExpected = printExpected,
	printWithType = printWithType,
	ensureNoExpected = ensureNoExpected,
	ensureActualIsNumber = ensureActualIsNumber,
	ensureExpectedIsNumber = ensureExpectedIsNumber,
	ensureNumbers = ensureNumbers,
	ensureExpectedIsNonNegativeInteger = ensureExpectedIsNonNegativeInteger,
	printDiffOrStringify = printDiffOrStringify,
	diff = diff,
	pluralize = pluralize,
	getLabelPrinter = getLabelPrinter,
	matcherErrorMessage = matcherErrorMessage,
	matcherHint = matcherHint,
}
