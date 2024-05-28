-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/expect/src/spyMatchers.ts
-- /**
-- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- *
-- * This source code is licensed under the MIT license found in the
-- * LICENSE file in the root directory of this source tree.
-- */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Number = LuauPolyfill.Number
local String = LuauPolyfill.String
local Symbol = LuauPolyfill.Symbol

local getType = require(Packages.JestGetType).getType
local isPrimitive = require(Packages.JestGetType).isPrimitive

local JestMatcherUtils = require(Packages.JestMatcherUtils)
local DIM_COLOR = JestMatcherUtils.DIM_COLOR
local EXPECTED_COLOR = JestMatcherUtils.EXPECTED_COLOR
local RECEIVED_COLOR = JestMatcherUtils.RECEIVED_COLOR
local diff = JestMatcherUtils.diff
local ensureExpectedIsNonNegativeInteger = JestMatcherUtils.ensureExpectedIsNonNegativeInteger
local ensureNoExpected = JestMatcherUtils.ensureNoExpected
local matcherErrorMessage = JestMatcherUtils.matcherErrorMessage
local matcherHint = JestMatcherUtils.matcherHint
local printExpected = JestMatcherUtils.printExpected
local printReceived = JestMatcherUtils.printReceived
local printWithType = JestMatcherUtils.printWithType
local stringify = JestMatcherUtils.stringify

type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation: omitted type imports from types file and defined MatcherState as any for now
type MatcherHintOptions = JestMatcherUtils.MatcherHintOptions
type MatcherState = any
type SyncExpectationResult = (any, any, any) -> {
	pass: boolean,
	message: () -> string,
}

local jasmineUtils = require(CurrentModule.jasmineUtils)
local equals = jasmineUtils.equals

local utils = require(CurrentModule.utils)
local iterableEquality = utils.iterableEquality

local isExpand, printExpectedArgs, printReceivedArgs, printCommon, isEqualValue, isEqualCall, isEqualReturn, countReturns, printNumberOfReturns, getRightAlignedPrinter, printReceivedCallsNegative, printExpectedReceivedCallsPositive, printDiffCall, isLineDiffableCall, isLineDiffableArg, printResult, printReceivedResults, isMock, isSpy, ensureMockOrSpy, ensureMock

-- The optional property of matcher context is true if undefined.
function isExpand(expand: boolean?)
	return expand ~= false
end

local PRINT_LIMIT = 3

local NO_ARGUMENTS = "called with 0 arguments"

function printExpectedArgs(expected: Array<any>): string
	if #expected == 0 then
		return NO_ARGUMENTS
	else
		return Array.join(
			Array.map(expected, function(arg)
				return printExpected(arg)
			end),
			", "
		)
	end
end

function printReceivedArgs(received: Array<any>, expected: Array<any>): string
	if #received == 0 then
		return NO_ARGUMENTS
	else
		return Array.join(
			Array.map(received, function(arg, i)
				if Array.isArray(expected) and i <= #expected and isEqualValue(expected[i], arg) then
					return printCommon(arg)
				else
					return printReceived(arg)
				end
			end),
			", "
		)
	end
end

function printCommon(val: any)
	return DIM_COLOR(stringify(val))
end

function isEqualValue(expected: any, received: any): boolean
	return equals(expected, received, { iterableEquality })
end

function isEqualCall(expected: Array<any>, received: Array<any>): boolean
	return isEqualValue(expected, received)
end

function isEqualReturn(expected, result): boolean
	return result.type == "return" and isEqualValue(expected, result.value)
end

function countReturns(results: Array<any>): number
	return Array.reduce(results, function(n: number, result: any)
		if result.type == "return" then
			return n + 1
		else
			return n
		end
	end, 0)
end

function printNumberOfReturns(countReturns_: number, countCalls: number): string
	local retval = string.format("\nNumber of returns: %s", printReceived(countReturns_))
	if countCalls ~= countReturns_ then
		retval = retval .. string.format("\nNumber of calls:   %s", printReceived(countCalls))
	end

	return retval
end

type PrintLabel = (string, boolean) -> string

-- Given a label, return a function which given a string,
-- right-aligns it preceding the colon in the label.
function getRightAlignedPrinter(label: string): PrintLabel
	-- Assume that the label contains a colon.
	local index = label:find(":")
	local suffix = label:sub(index)

	return function(string_: string, isExpectedCall: boolean)
		local retval
		if isExpectedCall then
			retval = "->" .. string.rep(" ", math.max(0, index - 3 - #string_))
		else
			retval = string.rep(" ", math.max(0, index - 1 - #string_))
		end

		return retval .. string_ .. suffix
	end
end

-- ROBLOX deviation: IndexedCall annotated as any for now since we don't have tuple support in luau
type IndexedCall = any

function printReceivedCallsNegative(
	expected: Array<any>,
	indexedCalls: Array<IndexedCall>,
	isOnlyCall: boolean,
	iExpectedCall: number?
)
	if #indexedCalls == 0 then
		return ""
	end

	local label = "Received:       "

	if isOnlyCall then
		return label .. printReceivedArgs(indexedCalls[1], expected) .. "\n"
	end

	local printAligned = getRightAlignedPrinter(label)

	return "Received\n"
		.. Array.reduce(indexedCalls, function(printed: string, iCall: IndexedCall)
			local i = iCall[1]
			local args = iCall[2]

			return printed .. printAligned(tostring(i), i == iExpectedCall) .. printReceivedArgs(args, expected) .. "\n"
		end, "")
end

function printExpectedReceivedCallsPositive(
	expected: Array<any>,
	indexedCalls: Array<IndexedCall>,
	expand: boolean,
	isOnlyCall: boolean,
	iExpectedCall: number?
)
	local expectedLine = string.format("Expected: %s\n", printExpectedArgs(expected))

	if #indexedCalls == 0 then
		return expectedLine
	end

	local label = "Received: "

	if isOnlyCall and (iExpectedCall == 1 or iExpectedCall == nil) then
		local received = indexedCalls[1][2]
		if isLineDiffableCall(expected, received) then
			-- Display diff without indentation.
			local lines = {
				EXPECTED_COLOR("- Expected"),
				RECEIVED_COLOR("+ Received"),
				"",
			}

			local length = math.max(#expected, #received)
			for i = 1, length do
				local added = false

				if i <= #expected and i <= #received then
					if isEqualValue(expected[i], received[i]) then
						table.insert(lines, "  " .. printCommon(received[i]) .. ",")
						added = true
					end
					if not added and isLineDiffableArg(expected[i], received[i]) then
						local difference = diff(expected[i], received[i], { expand })

						if
							typeof(difference) == "string"
							and difference:find("%- Expected")
							and difference:find("%+ Received")
						then
							-- Omit annotation in case multiple args have diff.
							local splitLines = {}
							for s in difference:gmatch("[^\n]+") do
								table.insert(splitLines, s)
							end

							splitLines = Array.slice(splitLines, 3)
							table.insert(lines, Array.join(splitLines, "\n") .. ",")
							added = true
						end
					end
				end
				if not added then
					if i <= #expected then
						table.insert(lines, EXPECTED_COLOR("- " .. stringify(expected[i])) .. ",")
					end
					if i <= #received then
						table.insert(lines, RECEIVED_COLOR("+ " .. stringify(received[i])) .. ",")
					end
				end
				i = i + 1
			end

			return table.concat(lines, "\n") .. "\n"
		end
		return expectedLine .. label .. printReceivedArgs(received, expected) .. "\n"
	end

	local printAligned = getRightAlignedPrinter(label)

	return expectedLine
		.. "Received\n"
		.. Array.reduce(indexedCalls, function(printed: string, indexedCall: IndexedCall)
			local i = indexedCall[1]
			local received = indexedCall[2]

			local aligned = printAligned(tostring(i), i == iExpectedCall)

			if (i == iExpectedCall or iExpectedCall == nil) and isLineDiffableCall(expected, received) then
				return printed
					.. aligned:sub(1, aligned:find(":") - 1)
					.. "\n"
					.. aligned:sub(aligned:find(":") + 1, #aligned)
					.. printDiffCall(expected, received, expand)
					.. "\n"
			else
				return printed .. aligned .. printReceivedArgs(received, expected) .. "\n"
			end
		end, "")
end

local indentation = string.gsub("Received", "[a-zA-Z0-9_]", " ")

function printDiffCall(expected: Array<any>, received: Array<any>, expand: boolean)
	return Array.join(
		Array.map(received, function(arg, i)
			if i <= #expected then
				if isEqualValue(expected[i], arg) then
					return indentation .. "  " .. printCommon(arg) .. ","
				end

				if isLineDiffableArg(expected[i], arg) then
					local difference = diff(expected[i], arg, { expand = expand })

					if
						typeof(difference) == "string"
						and difference:find("%- Expected")
						and difference:find("%+ Received")
					then
						-- Display diff with indentation.
						-- Omit annotation in case multiple args have diff.
						local splitLines = {}
						for s in difference:gmatch("[^\n]+") do
							table.insert(splitLines, s)
						end

						return Array.join(
							Array.map(Array.slice(splitLines, 3), function(line)
								return indentation .. line
							end),
							"\n"
						) .. ","
					end
				end
			end

			-- Display + only if received arg has no corresponding expected arg.
			return indentation
				.. (function()
					if i <= #expected then
						return "  " .. printReceived(arg)
					end

					return RECEIVED_COLOR("+ " .. stringify(arg))
				end)()
				.. ","
		end),
		"\n"
	)
end

function isLineDiffableCall(expected: Array<any>, received: Array<any>): boolean
	return Array.some(expected, function(arg, i)
		return i <= #received and isLineDiffableArg(arg, received[i])
	end)
end

-- Almost redundant with function in jest-matcher-utils,
-- except no line diff for any strings.
function isLineDiffableArg(expected: any, received: any): boolean
	local expectedType = getType(expected)
	local receivedType = getType(received)

	if expectedType ~= receivedType then
		return false
	end

	if isPrimitive(expected) then
		return false
	end

	if expectedType == "date" or expectedType == "function" or expectedType == "regexp" or expectedType == "error" then
		return false
	end

	-- ROBLOX TODO: Change this and other similar indexing as part of ADO-1372
	if expectedType == "table" and typeof(expected.asymmetricMatch) == "function" then
		return false
	end

	if receivedType == "table" and typeof(received.asymmetricMatch) == "function" then
		return false
	end

	return true
end

-- ROBLOX deviation: IndexedResult annotated as any for now since we don't have tuple support in luau
type IndexedResult = any

function printResult(result: any, expected: any)
	if result.type == "throw" then
		return "function call threw an error"
	end

	if result.type == "incomplete" then
		return "function call has not returned yet"
	end

	if isEqualValue(expected, result.value) then
		return printCommon(result.value)
	end

	return printReceived(result.value)
end

-- Return either empty string or one line per indexed result,
-- so additional empty line can separate from `Number of returns` which follows.
function printReceivedResults(
	label: string,
	expected: any,
	indexedResults: Array<IndexedResult>,
	isOnlyCall: boolean,
	iExpectedCall: number?
)
	if #indexedResults == 0 then
		return ""
	end

	if isOnlyCall and (iExpectedCall == 1 or iExpectedCall == nil) then
		return label .. printResult(indexedResults[1][2], expected) .. "\n"
	end

	local printAligned = getRightAlignedPrinter(label)

	-- ROBLOX TODO: the following (label:find(':') or 1) can be changed to label:find(':') if
	-- roblox-cli eventually won't complain?
	local colonIndex = label:find(":") or 1

	return String.trim(label:sub(1, colonIndex - 1) .. label:sub(colonIndex + 1, #label))
		.. "\n"
		.. Array.reduce(indexedResults, function(printed: string, indexedResult: IndexedResult)
			local i = indexedResult[1]
			local result = indexedResult[2]
			return printed .. printAligned(tostring(i), i == iExpectedCall) .. printResult(result, expected) .. "\n"
		end, "")
end

local function createToBeCalledMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, expected: any)
		local expectedArgument = ""
		local options: MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}

		ensureNoExpected(expected, matcherName, options)
		ensureMockOrSpy(received, matcherName, expectedArgument, options)

		local receivedIsSpy = isSpy(received)
		local receivedName
		if receivedIsSpy then
			receivedName = "spy"
		else
			receivedName = received.getMockName()
		end

		local count
		if receivedIsSpy then
			count = received.calls.count()
		else
			count = #received.mock.calls
		end

		local calls
		if receivedIsSpy then
			calls = Array.map(received.calls.all(), function(x: any)
				return x.args
			end)
		else
			calls = received.mock.calls
		end

		local pass = count > 0
		local message
		if pass then
			message = function()
				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of calls: %s\n"):format(printExpected(0))
					.. ("Received number of calls: %s\n\n"):format(printReceived(count))
					.. Array.join(
						Array.reduce(calls, function(lines: Array<string>, args: any, i: number)
							if #lines < PRINT_LIMIT then
								table.insert(lines, ("%s: %s"):format(tostring(i), printReceivedArgs(args)))
							end

							return lines
						end, {}),
						"\n"
					)
			end
		else
			message = function()
				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of calls: >= %s\n"):format(printExpected(1))
					.. ("Received number of calls:    %s"):format(printReceived(count))
			end
		end

		return { message = message, pass = pass }
	end
end

local function createToReturnMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, expected: any)
		local expectedArgument = ""
		local options: JestMatcherUtils.MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}

		ensureNoExpected(expected, matcherName, options)
		ensureMock(received, matcherName, expectedArgument, options)

		local receivedName = received.getMockName()

		-- Count return values that correspond only to calls that returned
		local count = Array.reduce(received.mock.results, function(n: number, result: any)
			if result.type == "return" then
				return n + 1
			else
				return n
			end
		end, 0)

		local pass = count > 0
		local message
		if pass then
			message = function()
				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of returns: %s\n"):format(printExpected(0))
					.. ("Received number of returns: %s\n\n"):format(printReceived(count))
					.. Array.join(
						Array.reduce(received.mock.results, function(lines: Array<string>, result: any, i: number)
							if result.type == "return" and #lines < PRINT_LIMIT then
								table.insert(lines, ("%s: %s"):format(tostring(i), printReceived(result.value)))
							end

							return lines
						end, {}),
						"\n"
					)

				if #received.mock.calls ~= count then
					retval = retval .. "\n\nReceived number of calls:   " .. printReceived(#received.mock.calls)
				end

				return retval
			end
		else
			message = function()
				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of returns: >= %s\n"):format(printExpected(1))
					.. ("Received number of returns:    %s"):format(printReceived(count))
				if #received.mock.calls ~= count then
					retval = retval
						.. ("\nReceived number of calls:      %s"):format(printReceived(#received.mock.calls))
				end

				return retval
			end
		end

		return { message = message, pass = pass }
	end
end

local function createToBeCalledTimesMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, expected: number)
		local expectedArgument = "expected"
		local options: JestMatcherUtils.MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}

		ensureExpectedIsNonNegativeInteger(expected, matcherName, options)
		ensureMockOrSpy(received, matcherName, expectedArgument, options)

		local receivedIsSpy = isSpy(received)
		local receivedName
		if receivedIsSpy then
			receivedName = "spy"
		else
			receivedName = received.getMockName()
		end

		local count
		if receivedIsSpy then
			count = received.calls.count()
		else
			count = #received.mock.calls
		end

		local pass = count == expected

		local message
		if pass then
			message = function()
				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of calls: never %s"):format(printExpected(expected))
			end
		else
			message = function()
				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of calls: %s\n"):format(printExpected(expected))
					.. ("Received number of calls: %s"):format(printReceived(count))
			end
		end

		return { message = message, pass = pass }
	end
end

local function createToReturnTimesMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, expected: number)
		local expectedArgument = "expected"
		local options: JestMatcherUtils.MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}

		ensureExpectedIsNonNegativeInteger(expected, matcherName, options)
		ensureMock(received, matcherName, expectedArgument, options)

		local receivedName = received.getMockName()

		-- Count return values that correspond only to calls that returned
		local count = Array.reduce(received.mock.results, function(n: number, result: any)
			if result.type == "return" then
				return n + 1
			else
				return n
			end
		end, 0)

		local pass = count == expected

		local message
		if pass then
			message = function()
				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of returns: never %s"):format(printExpected(expected))

				if #received.mock.calls ~= count then
					retval = retval
						.. ("\n\nReceived number of calls:         %s"):format(printReceived(#received.mock.calls))
				end

				return retval
			end
		else
			message = function()
				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected number of returns: %s\n"):format(printExpected(expected))
					.. ("Received number of returns: %s"):format(printReceived(count))

				if #received.mock.calls ~= count then
					retval = retval .. ("\nReceived number of calls:   %s"):format(printReceived(#received.mock.calls))
				end

				return retval
			end
		end

		return { message = message, pass = pass }
	end
end

local function createToBeCalledWithMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, ...)
		local expected = { ... }
		local expectedLength = select("#", ...)
		for i = 1, expectedLength do
			-- ROBLOX deviation: We add this if statement to deal with our internal symbol
			-- that represents nil
			if expected[i] == nil then
				expected[i] = Symbol.for_("$$nil")
			end
		end
		local expectedArgument = "...expected"
		local options: JestMatcherUtils.MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}

		ensureMockOrSpy(received, matcherName, expectedArgument, options)

		local receivedIsSpy = isSpy(received)
		local receivedName
		if receivedIsSpy then
			receivedName = "spy"
		else
			receivedName = received.getMockName()
		end

		local calls
		if receivedIsSpy then
			calls = Array.map(received.calls.all(), function(x: any)
				return x.args
			end)
		else
			calls = received.mock.calls
		end

		local pass = Array.some(calls, function(call)
			return isEqualCall(expected, call)
		end)

		local message
		if pass then
			message = function()
				-- Some examples of calls that are equal to expected value.
				local indexedCalls: Array<IndexedCall> = {}
				local i = 1
				while i <= #calls and #indexedCalls < PRINT_LIMIT do
					if isEqualCall(expected, calls[i]) then
						table.insert(indexedCalls, { i, calls[i] })
					end
					i = i + 1
				end

				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected: never %s\n"):format(printExpectedArgs(expected))

				if not (#calls == 1 and stringify(calls[1]) == stringify(expected)) then
					retval = retval .. printReceivedCallsNegative(expected, indexedCalls, #calls == 1)
				end

				retval = retval .. ("\nNumber of calls: %s"):format(printReceived(#calls))
				return retval
			end
		else
			message = function()
				-- Some examples of calls that are not equal to expected value.
				local indexedCalls: Array<IndexedCall> = {}
				local i = 1
				while i <= #calls and #indexedCalls < PRINT_LIMIT do
					table.insert(indexedCalls, { i, calls[i] })
					i = i + 1
				end
				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. printExpectedReceivedCallsPositive(expected, indexedCalls, isExpand(this.expand), #calls == 1)
					.. ("\nNumber of calls: %s"):format(printReceived(#calls))
			end
		end

		return { message = message, pass = pass }
	end
end

local function createToReturnWithMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, expected: any)
		local expectedArgument = "expected"
		local options: JestMatcherUtils.MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}
		ensureMock(received, matcherName, expectedArgument, options)

		local receivedName = received.getMockName()
		local receivedMock = received.mock
		local calls = receivedMock.calls
		local results = receivedMock.results

		local pass = Array.some(results, function(result: any)
			return isEqualReturn(expected, result)
		end)

		local message
		if pass then
			message = function()
				-- Some examples of results that are equal to expected value.
				local indexedResults: Array<IndexedResult> = {}
				local i = 1
				while i <= #results and #indexedResults < PRINT_LIMIT do
					if isEqualReturn(expected, results[i]) then
						table.insert(indexedResults, { i, results[i] })
					end
					i = i + 1
				end

				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected: never %s\n"):format(printExpected(expected))

				if
					not (
						#results == 1
						and results[1].type == "return"
						and stringify(results[1].value) == stringify(expected)
					)
				then
					retval = retval .. printReceivedResults("Received:       ", expected, indexedResults, #results == 1)
				end

				retval = retval .. printNumberOfReturns(countReturns(results), #calls)

				return retval
			end
		else
			message = function()
				-- Some examples of results that are not equal to expected value.
				local indexedResults: Array<IndexedResult> = {}
				local i = 1
				while i <= #results and #indexedResults < PRINT_LIMIT do
					table.insert(indexedResults, { i, results[i] })
					i = i + 1
				end

				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected: %s\n"):format(printExpected(expected))
					.. printReceivedResults("Received: ", expected, indexedResults, #results == 1)
					.. printNumberOfReturns(countReturns(results), #calls)
			end
		end

		return { message = message, pass = pass }
	end
end

local function createLastCalledWithMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, ...)
		local expected: Array<any> = { ... }
		local expectedLength = select("#", ...)
		for i = 1, expectedLength do
			-- ROBLOX deviation: We add this if statement to deal with our internal symbol
			-- that represents nil
			if expected[i] == nil then
				expected[i] = Symbol.for_("$$nil")
			end
		end
		local expectedArgument = "...expected"
		local options: JestMatcherUtils.MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}

		ensureMockOrSpy(received, matcherName, expectedArgument, options)

		local receivedIsSpy = isSpy(received)
		local receivedName
		if receivedIsSpy then
			receivedName = "spy"
		else
			receivedName = received.getMockName()
		end

		local calls
		if receivedIsSpy then
			calls = Array.map(received.calls.all(), function(x: any)
				return x.args
			end)
		else
			calls = received.mock.calls
		end

		local iLast = #calls

		local pass = iLast >= 1 and isEqualCall(expected, calls[iLast])

		local message
		if pass then
			message = function()
				local indexedCalls: Array<IndexedCall> = {}
				if iLast > 1 then
					-- Display preceding call as context.
					table.insert(indexedCalls, { iLast - 1, calls[iLast - 1] })
				end

				table.insert(indexedCalls, { iLast, calls[iLast] })

				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected: never %s\n"):format(printExpectedArgs(expected))

				if not (#calls == 1 and stringify(calls[1]) == stringify(expected)) then
					retval = retval .. printReceivedCallsNegative(expected, indexedCalls, #calls == 1, iLast)
				end

				retval = retval .. ("\nNumber of calls: %s"):format(printReceived(#calls))

				return retval
			end
		else
			message = function()
				local indexedCalls: Array<IndexedCall> = {}
				if iLast >= 1 then
					if iLast > 1 then
						local i = iLast - 1
						-- Is there a preceding call that is equal to expected args?
						while i >= 1 and not isEqualCall(expected, calls[i]) do
							i = i - 1
						end
						if i < 1 then
							i = iLast - 1 -- otherwise, preceding call
						end

						table.insert(indexedCalls, { i, calls[i] })
					end

					table.insert(indexedCalls, { iLast, calls[iLast] })
				end

				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. printExpectedReceivedCallsPositive(
						expected,
						indexedCalls,
						isExpand(this.expand),
						#calls == 1,
						iLast
					)
					.. ("\nNumber of calls: %s"):format(printReceived(#calls))
			end
		end

		return { message = message, pass = pass }
	end
end

local function createLastReturnedMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, expected: any)
		local expectedArgument = "expected"
		local options: JestMatcherUtils.MatcherHintOptions = {
			isNot = this.isNot,
			promise = this.promise,
		}

		ensureMock(received, matcherName, expectedArgument, options)

		local receivedName = received.getMockName()

		local receivedMock = received.mock
		local calls = receivedMock.calls
		local results = receivedMock.results
		local iLast = #results

		local pass = iLast >= 1 and isEqualReturn(expected, results[iLast])

		local message
		if pass then
			message = function()
				local indexedResults: Array<IndexedResult> = {}

				if iLast > 1 then
					-- Display preceding result as context.
					table.insert(indexedResults, { iLast - 1, results[iLast - 1] })
				end
				table.insert(indexedResults, { iLast, results[iLast] })

				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected: never %s\n"):format(printExpected(expected))

				if
					not (
						#results == 1
						and results[1].type == "return"
						and stringify(results[1].value) == stringify(expected)
					)
				then
					retval = retval
						.. printReceivedResults("Received:       ", expected, indexedResults, #results == 1, iLast)
				end

				retval = retval .. printNumberOfReturns(countReturns(results), #calls)

				return retval
			end
		else
			message = function()
				local indexedResults: Array<IndexedResult> = {}

				if iLast >= 1 then
					if iLast > 1 then
						local i = iLast - 1
						-- Is there a preceding result that is equal to expected value?
						while i >= 1 and not isEqualReturn(expected, results[i]) do
							i = i - 1
						end

						if i < 1 then
							i = iLast - 1 -- otherwise, preceding result
						end

						table.insert(indexedResults, { i, results[i] })
					end

					table.insert(indexedResults, { iLast, results[iLast] })
				end

				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("Expected: %s\n"):format(printExpected(expected))
					.. printReceivedResults("Received: ", expected, indexedResults, #results == 1, iLast)
					.. printNumberOfReturns(countReturns(results), #calls)
			end
		end

		return { message = message, pass = pass }
	end
end

local function createNthCalledWithMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, nth: number, ...)
		local expected = { ... }
		local expectedLength = select("#", ...)
		for i = 1, expectedLength do
			-- ROBLOX deviation: We add this if statement to deal with our internal symbol
			-- that represents nil
			if expected[i] == nil then
				expected[i] = Symbol.for_("$$nil")
			end
		end
		local expectedArgument = "n"
		local options: JestMatcherUtils.MatcherHintOptions = {
			expectedColor = function(arg)
				return arg
			end,
			isNot = this.isNot,
			promise = this.promise,
			secondArgument = "...expected",
		}

		ensureMockOrSpy(received, matcherName, expectedArgument, options)

		if not Number.isSafeInteger(nth) or nth < 1 then
			-- ROBLOX deviation: we don't use the Error polyfill because we encounter an error with TestEZ
			error(
				Error(
					matcherErrorMessage(
						matcherHint(matcherName, nil, expectedArgument, options),
						("%s must be a positive integer"):format(expectedArgument),
						printWithType(expectedArgument, nth, stringify)
					)
				)
			)
		end

		local receivedIsSpy = isSpy(received)
		local receivedName
		if receivedIsSpy then
			receivedName = "spy"
		else
			receivedName = received.getMockName()
		end

		local calls
		if receivedIsSpy then
			calls = Array.map(received.calls.all(), function(x: any)
				return x.args
			end)
		else
			calls = received.mock.calls
		end
		local length = #calls
		local iNth = nth

		local pass = iNth <= length and isEqualCall(expected, calls[iNth])

		local message
		if pass then
			message = function()
				-- Display preceding and following calls,
				-- in case assertions fails because index is off by one.
				local indexedCalls: Array<IndexedCall> = {}

				if iNth - 1 >= 1 then
					table.insert(indexedCalls, { iNth - 1, calls[iNth - 1] })
				end
				table.insert(indexedCalls, { iNth, calls[iNth] })

				if iNth + 1 <= length then
					table.insert(indexedCalls, { iNth + 1, calls[iNth + 1] })
				end

				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("n: %s\n"):format(tostring(nth))
					.. ("Expected: never %s\n"):format(printExpectedArgs(expected))

				if not (#calls == 1 and stringify(calls[1]) == stringify(expected)) then
					retval = retval .. printReceivedCallsNegative(expected, indexedCalls, #calls == 1, iNth)
				end

				retval = retval .. ("\nNumber of calls: %s"):format(printReceived(#calls))

				return retval
			end
		else
			message = function()
				-- Display preceding and following calls:
				-- * nearest call that is equal to expected args
				-- * otherwise, adjacent call
				-- in case assertions fails because of index, especially off by one.
				local indexedCalls: Array<IndexedCall> = {}

				if iNth <= length then
					if iNth - 1 >= 1 then
						local i = iNth - 1
						-- Is there a preceding call that is equal to expected args?
						while i >= 1 and not isEqualCall(expected, calls[i]) do
							i = i - 1
						end

						if i < 1 then
							i = iNth - 1 -- otherwise, adjacent call
						end

						table.insert(indexedCalls, { i, calls[i] })
					end
					table.insert(indexedCalls, { iNth, calls[iNth] })

					if iNth + 1 <= length then
						local i = iNth + 1
						-- Is there a following call that is equal to expected args?
						while i <= length and not isEqualCall(expected, calls[i]) do
							i = i + 1
						end

						if i >= length then
							i = iNth + 1 -- otherwise, adjacent call
						end

						table.insert(indexedCalls, { i, calls[i] })
					end
				elseif length > 1 then
					-- Is there a call that is equal to expected args?
					local i = length - 1
					-- Is there a call that is equal to expected args?
					while i >= 1 and not isEqualCall(expected, calls[i]) do
						i = i - 1
					end

					if i < 1 then
						i = length - 1
					end

					table.insert(indexedCalls, { i, calls[i] })
				end

				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("n: %s\n"):format(tostring(nth))
					.. printExpectedReceivedCallsPositive(
						expected,
						indexedCalls,
						isExpand(this.expand),
						#calls == 1,
						iNth
					)
					.. ("\nNumber of calls: %s"):format(printReceived(#calls))
			end
		end

		return { message = message, pass = pass }
	end
end

local function createNthReturnedWithMatcher(matcherName: string): SyncExpectationResult
	return function(this: MatcherState, received: any, nth: number, expected: any)
		local expectedArgument = "n"
		local options: JestMatcherUtils.MatcherHintOptions = {
			expectedColor = function(arg)
				return arg
			end,
			isNot = this.isNot,
			promise = this.promise,
			secondArgument = "expected",
		}

		ensureMock(received, matcherName, expectedArgument, options)

		if not Number.isSafeInteger(nth) or nth < 1 then
			-- ROBLOX deviation: we don't use the Error polyfill because we encounter an error with TestEZ
			error(
				Error(
					matcherErrorMessage(
						matcherHint(matcherName, nil, expectedArgument, options),
						("%s must be a positive integer"):format(expectedArgument),
						printWithType(expectedArgument, nth, stringify)
					)
				)
			)
		end

		local receivedName = received.getMockName()
		local receivedMock = received.mock
		local calls = receivedMock.calls
		local results = receivedMock.results
		local length = #results
		local iNth = nth

		local pass = iNth <= length and isEqualReturn(expected, results[iNth])

		local message
		if pass then
			message = function()
				-- Display preceding and following results,
				-- in case assertions fails because index is off by one.
				local indexedResults: Array<IndexedResult> = {}
				if iNth - 1 >= 1 then
					table.insert(indexedResults, { iNth - 1, results[iNth - 1] })
				end
				table.insert(indexedResults, { iNth, results[iNth] })
				if iNth + 1 <= length then
					table.insert(indexedResults, { iNth + 1, results[iNth + 1] })
				end

				local retval = matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("n: %s\n"):format(tostring(nth))
					.. ("Expected: never %s\n"):format(printExpected(expected))

				if
					not (
						#results == 1
						and results[1].type == "return"
						and stringify(results[1].value) == stringify(expected)
					)
				then
					retval = retval
						.. printReceivedResults("Received:       ", expected, indexedResults, #results == 1, iNth)
				end
				retval = retval .. printNumberOfReturns(countReturns(results), #calls)

				return retval
			end
		else
			message = function()
				-- Display preceding and following results:
				-- * nearest result that is equal to expected value
				-- * otherwise, adjacent result
				-- in case assertions fails because of index, especially off by one.
				local indexedResults: Array<IndexedResult> = {}

				if iNth <= length then
					if iNth - 1 >= 1 then
						local i = iNth - 1
						-- Is there a preceding result that is equal to expected value?
						while i >= 1 and not isEqualReturn(expected, results[i]) do
							i = i - 1
						end

						if i < 1 then
							i = iNth - 1
						end

						table.insert(indexedResults, { i, results[i] })
					end

					table.insert(indexedResults, { iNth, results[iNth] })
					if iNth + 1 <= length then
						local i = iNth + 1
						-- Is there a following result that is equal to expected value?
						while i <= length and not isEqualReturn(expected, results[i]) do
							i = i + 1
						end

						if i > length then
							i = iNth + 1
						end

						table.insert(indexedResults, { i, results[i] })
					end
				elseif length > 0 then
					-- The number of received calls is fewer than the expected number.
					local i = length
					-- Is there a result that is equal to expected value?
					while i >= 1 and not isEqualReturn(expected, results[i]) do
						i = i - 1
					end

					if i < 1 then
						i = length - 1 -- otherwise, last result
					end

					table.insert(indexedResults, { i, results[i] })
				end

				return matcherHint(matcherName, receivedName, expectedArgument, options)
					.. "\n\n"
					.. ("n: %s\n"):format(tostring(nth))
					.. ("Expected: %s\n"):format(printExpected(expected))
					.. printReceivedResults("Received: ", expected, indexedResults, #results == 1, iNth)
					.. printNumberOfReturns(countReturns(results), #calls)
			end
		end

		return { message = message, pass = pass }
	end
end

-- ROBLOX deviation: matchersObject annotated as { [string]: any } for now rather than { [string]: RawMatcherFn }
-- because we cannot currently express RawMatcherFn as tuple
type MatchersObject = { [string]: any }

local spyMatchers: MatchersObject = {
	lastCalledWith = createLastCalledWithMatcher("lastCalledWith"),
	lastReturnedWith = createLastReturnedMatcher("lastReturnedWith"),
	nthCalledWith = createNthCalledWithMatcher("nthCalledWith"),
	nthReturnedWith = createNthReturnedWithMatcher("nthReturnedWith"),
	toBeCalled = createToBeCalledMatcher("toBeCalled"),
	toBeCalledTimes = createToBeCalledTimesMatcher("toBeCalledTimes"),
	toBeCalledWith = createToBeCalledWithMatcher("toBeCalledWith"),
	toHaveBeenCalled = createToBeCalledMatcher("toHaveBeenCalled"),
	toHaveBeenCalledTimes = createToBeCalledTimesMatcher("toHaveBeenCalledTimes"),
	toHaveBeenCalledWith = createToBeCalledWithMatcher("toHaveBeenCalledWith"),
	toHaveBeenLastCalledWith = createLastCalledWithMatcher("toHaveBeenLastCalledWith"),
	toHaveBeenNthCalledWith = createNthCalledWithMatcher("toHaveBeenNthCalledWith"),
	toHaveLastReturnedWith = createLastReturnedMatcher("toHaveLastReturnedWith"),
	toHaveNthReturnedWith = createNthReturnedWithMatcher("toHaveNthReturnedWith"),
	toHaveReturned = createToReturnMatcher("toHaveReturned"),
	toHaveReturnedTimes = createToReturnTimesMatcher("toHaveReturnedTimes"),
	toHaveReturnedWith = createToReturnWithMatcher("toHaveReturnedWith"),
	toReturn = createToReturnMatcher("toReturn"),
	toReturnTimes = createToReturnTimesMatcher("toReturnTimes"),
	toReturnWith = createToReturnWithMatcher("toReturnWith"),
}

function isMock(received: any)
	return received ~= nil and typeof(received) == "table" and received._isMockFunction == true
end

function isSpy(received: any)
	return received ~= nil
		and typeof(received) == "table"
		and received.calls ~= nil
		and typeof(received.calls.all) == "function"
		and typeof(received.calls.count) == "function"
end

-- ROBLOX deviation: we don't use the Error polyfill because we encounter an error with TestEZ
function ensureMockOrSpy(
	received: any,
	matcherName: string,
	expectedArgument: string,
	options: JestMatcherUtils.MatcherHintOptions
)
	if not isMock(received) and not isSpy(received) then
		error(
			Error(
				matcherErrorMessage(
					matcherHint(matcherName, nil, expectedArgument, options),
					("%s value must be a mock or spy function"):format(RECEIVED_COLOR("received")),
					printWithType("Received", received, printReceived)
				)
			)
		)
	end
end

-- ROBLOX deviation: we don't use the Error polyfill because we encounter an error with TestEZ
function ensureMock(
	received: any,
	matcherName: string,
	expectedArgument: string,
	options: JestMatcherUtils.MatcherHintOptions
)
	if not isMock(received) then
		error(
			Error(
				matcherErrorMessage(
					matcherHint(matcherName, nil, expectedArgument, options),
					("%s value must be a mock function"):format(RECEIVED_COLOR("received")),
					printWithType("Received", received, printReceived)
				)
			)
		)
	end
end

return spyMatchers
