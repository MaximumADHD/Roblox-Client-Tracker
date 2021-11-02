-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/matchers.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

local Workspace = script.Parent
local Modules = Workspace.Parent
local Packages = Modules.Parent.Parent

local Polyfills = require(Packages.LuauPolyfill)
local Array = Polyfills.Array
local Number = Polyfills.Number
local Object = Polyfills.Object
local RegExp = Polyfills.RegExp
local instanceof = Polyfills.instanceof

local JestGetType = require(Modules.JestGetType)
local getType = JestGetType.getType
local isPrimitive = JestGetType.isPrimitive

local JestMatcherUtils = require(Modules.JestMatcherUtils)
local DIM_COLOR = JestMatcherUtils.DIM_COLOR
local EXPECTED_COLOR = JestMatcherUtils.EXPECTED_COLOR
-- deviation: external type definition MatcherHintOptions omitted
local RECEIVED_COLOR = JestMatcherUtils.RECEIVED_COLOR
local SUGGEST_TO_CONTAIN_EQUAL = JestMatcherUtils.SUGGEST_TO_CONTAIN_EQUAL
local ensureExpectedIsNonNegativeInteger = JestMatcherUtils.ensureExpectedIsNonNegativeInteger
local ensureNoExpected = JestMatcherUtils.ensureNoExpected
local ensureNumbers = JestMatcherUtils.ensureNumbers
local getLabelPrinter = JestMatcherUtils.getLabelPrinter
local matcherErrorMessage = JestMatcherUtils.matcherErrorMessage
local matcherHint = JestMatcherUtils.matcherHint
local printDiffOrStringify = JestMatcherUtils.printDiffOrStringify
local printExpected = JestMatcherUtils.printExpected
local printReceived = JestMatcherUtils.printReceived
local printWithType = JestMatcherUtils.printWithType
local stringify = JestMatcherUtils.stringify

-- deviation: omitted external type definitions and defined MatcherState as any here for now
type MatcherState = any;

local Print = require(Workspace.print)
local printCloseTo = Print.printCloseTo
local printExpectedConstructorName = Print.printExpectedConstructorName
local printExpectedConstructorNameNot = Print.printExpectedConstructorNameNot
local printReceivedArrayContainExpectedItem = Print.printReceivedArrayContainExpectedItem
local printReceivedConstructorName = Print.printReceivedConstructorName
local printReceivedConstructorNameNot = Print.printReceivedConstructorNameNot
local printReceivedStringContainExpectedResult = Print.printReceivedStringContainExpectedResult
local printReceivedStringContainExpectedSubstring = Print.printReceivedStringContainExpectedSubstring

local Utils = require(Workspace.utils)
local getObjectSubset = Utils.getObjectSubset
local getPath = Utils.getPath
local iterableEquality = Utils.iterableEquality
local subsetEquality = Utils.subsetEquality
-- deviation: omitted imports for sparseArrayEquality and typeEquality

local equals = require(Workspace.jasmineUtils).equals

-- // Omit colon and one or more spaces, so can call getLabelPrinter.
local EXPECTED_LABEL = 'Expected'
local RECEIVED_LABEL = 'Received'
local EXPECTED_VALUE_LABEL = 'Expected value'
local RECEIVED_VALUE_LABEL = 'Received value'

-- // The optional property of matcher context is true if undefined.
-- deviation: upstream injects expand: false by default so we actually set to true if undefined
local function isExpand(expand: boolean?): boolean
	return not not expand
end

-- deviation: don't need any of the strict equality testers since we don't have added constraints for
-- strict equality in Lua compared to deep equality
-- local toStrictEqualTesters = {
-- 	iterableEquality,
-- 	typeEquality,
-- 	sparseArrayEquality,
-- }

-- deviation: upstream defines matchers as a single monolithic object but we split it up for readability

local function toBe(this: MatcherState, received: any, expected: any)
	local matcherName = 'toBe'
	local options = {
		comment = 'shallow equality',
		isNot = this.isNot,
		promise = this.promise,
	}

	local pass = Object.is(received, expected)

	local message
	if pass then
		message = function()
			return matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format('Expected: never %s', printExpected(expected))
		end
	else
		message = function()
			local deepEqualityName = nil
			-- deviation: no map or set types for now so this check is always true so we omit it
			-- if expectedType ~= 'map' and expectedType ~= 'set' then
				-- // If deep equality passes when referential identity fails,
				-- // but exclude map and set until review of their equality logic.
			-- deviation: no strict equality in lua
			if equals(received, expected, {iterableEquality}) then
				deepEqualityName = 'toEqual'
			end
			-- end

			local retval = matcherHint(matcherName, nil, nil, options) .. '\n\n'
			if deepEqualityName ~= nil then
				retval = retval ..
					DIM_COLOR(
						string.format(
							'If it should pass with deep equality, replace "%s" with "%s"',
							matcherName,
							deepEqualityName
						)
					) .. '\n\n'
			end
			return retval .. printDiffOrStringify(
				expected,
				received,
				EXPECTED_LABEL,
				RECEIVED_LABEL,
				isExpand(this.expand)
			)
		end
	end

	-- // Passing the actual and expected objects so that a custom reporter
	-- // could access them, for example in order to display a custom visual diff,
	-- // or create a different error message
	return {actual = received, expected = expected, message = message, name = matcherName, pass = pass}
end

local function toBeCloseTo(
	this: MatcherState,
	received: number,
	expected: number,
	precision: number
)
	local secondArgument
	if precision then
		secondArgument = 'precision'
	else
		precision = 2
	end
	local matcherName = 'toBeCloseTo'
	local isNot = this.isNot
	local options = {
		isNot = isNot,
		promise = this.promise,
		secondArgument = secondArgument,
		secondArgumentColor = function(arg: string) return arg end
	}

	if typeof(expected) ~= 'number' then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must be a number', EXPECTED_COLOR('expected')),
				printWithType('Expected', expected, printExpected)
			)
		)
	end

	if typeof(received) ~= 'number' then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must be a number', RECEIVED_COLOR('received')),
				printWithType('Received', received, printReceived)
			)
		)
	end

	local pass = false
	local expectedDiff = 0
	local receivedDiff = 0

	if received == math.huge and expected == math.huge then
		pass = true -- // Infinity - Infinity is NaN
	elseif received == -math.huge and expected == -math.huge then
		pass = true -- // -Infinity - -Infinity is NaN
	else
		expectedDiff = (10 ^ -precision) / 2
		receivedDiff = math.abs(expected - received)
		pass = receivedDiff < expectedDiff
	end

	local message
	if pass then
		message = function()
			local retval = matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format('Expected: never %s\n', printExpected(expected))
			if receivedDiff == 0 then
				return retval
			end
			return retval ..
				string.format('Received:       %s\n', printReceived(received)) ..
				'\n' ..
				printCloseTo(receivedDiff, expectedDiff, precision, isNot)
		end
	else
		message = function()
			return matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format('Expected: %s\n', printExpected(expected)) ..
				string.format('Received: %s\n', printReceived(received)) ..
				'\n' ..
				printCloseTo(receivedDiff, expectedDiff, precision, isNot)
		end
	end

	return {message = message, pass = pass}
end

-- deviation: toBeDefined equivalent to never.toBeNil
local function toBeDefined(this: MatcherState, received: any, expected: nil)
	local matcherName = 'toBeDefined'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}
	ensureNoExpected(expected, matcherName, options)

	local pass = received ~= nil

	local message = function()
		return matcherHint(matcherName, nil, '', options) ..
			'\n\n' ..
			string.format('Received: %s', printReceived(received))
	end

	return {message = message, pass = pass}
end


-- deviation: toBeFalsy checks for Lua falsy values, not JS falsy values
local function toBeFalsy(this: MatcherState, received: any, expected: nil)
	local matcherName = 'toBeFalsy'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}
	ensureNoExpected(expected, matcherName, options)

	local pass = not received

	local message = function()
		return matcherHint(matcherName, nil, '', options) ..
			'\n\n' ..
			string.format('Received: %s', printReceived(received))
	end

	return {message = message, pass = pass}
end

local function toBeGreaterThan(
	this: MatcherState,
	received: number,
	expected: number
)
	local matcherName = 'toBeGreaterThan'
	local isNot = this.isNot
	local options = {
		isNot = isNot,
		promise = this.promise,
	}
	ensureNumbers(received, expected, matcherName, options)

	local pass = received > expected

	local message = function()
		return matcherHint(matcherName, nil, nil, options) ..
			'\n\n' ..
			string.format('Expected:%s > %s\n', isNot and ' never' or '', printExpected(expected)) ..
			string.format('Received:%s   %s', isNot and '      ' or '', printReceived(received))
	end

	return {message = message, pass = pass}
end

local function toBeGreaterThanOrEqual(
	this: MatcherState,
	received: number,
	expected: number
)
	local matcherName = 'toBeGreaterThanOrEqual'
	local isNot = this.isNot
	local options = {
		isNot = isNot,
		promise = this.promise,
	}
	ensureNumbers(received, expected, matcherName, options)

	local pass = received >= expected

	local message = function()
		return matcherHint(matcherName, nil, nil, options) ..
			'\n\n' ..
			string.format('Expected:%s >= %s\n', isNot and ' never' or '', printExpected(expected)) ..
			string.format('Received:%s    %s', isNot and '      ' or '', printReceived(received))
	end

	return {message = message, pass = pass}
end

-- deviation: toBeInstanceOf checks for Lua prototypical classes, major deviation from upstream
local function toBeInstanceOf(this: MatcherState, received: any, expected: any)
	local matcherName = 'toBeInstanceOf'
	local isNot = this.isNot
	local options = {
		isNot = isNot,
		promise = this.promise,
	}

	if typeof(expected) ~= 'table' then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must be a prototype class', EXPECTED_COLOR('expected')),
				printWithType('Expected', expected, printExpected)
			)
		)
	end

	local pass = instanceof(received, expected)
	local receivedPrototype = nil
	if typeof(getmetatable(received)) == "table" and typeof(getmetatable(received).__index) == 'table' then
		receivedPrototype = getmetatable(received).__index
	end

	local message
	if pass then
		message = function()
			local retval = matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				printExpectedConstructorNameNot('Expected constructor', expected)

			if receivedPrototype and receivedPrototype ~= expected then
				retval = retval .. printReceivedConstructorNameNot('Received constructor', receivedPrototype, expected)
			end

			return retval
		end
	else
		message = function()
			local retval = matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				printExpectedConstructorName('Expected constructor', expected)
			if isPrimitive(received) or receivedPrototype == nil then
				retval = retval .. string.format('\nReceived value has no prototype\nReceived value: %s', printReceived(received))
			else
				retval = retval ..printReceivedConstructorName('Received constructor', receivedPrototype)
			end

			return retval
		end
	end

	return {message = message, pass = pass}
end

local function toBeLessThan(
	this: MatcherState,
	received: number,
	expected: number
)
	local matcherName = 'toBeLessThan'
	local isNot = this.isNot
	local options = {
		isNot = isNot,
		promise = this.promise,
	}
	ensureNumbers(received, expected, matcherName, options)

	local pass = received < expected

	local message = function()
		return matcherHint(matcherName, nil, nil, options) ..
			'\n\n' ..
			string.format('Expected:%s < %s\n', isNot and ' never' or '', printExpected(expected)) ..
			string.format('Received:%s   %s', isNot and '      ' or '', printReceived(received))
	end

	return {message = message, pass = pass}
end

local function toBeLessThanOrEqual(
	this: MatcherState,
	received: number,
	expected: number
)
	local matcherName = 'toBeLessThanOrEqual'
	local isNot = this.isNot
	local options = {
		isNot = isNot,
		promise = this.promise,
	}
	ensureNumbers(received, expected, matcherName, options)

	local pass = received <= expected

	local message = function()
		return matcherHint(matcherName, nil, nil, options) ..
			'\n\n' ..
			string.format('Expected:%s <= %s\n', isNot and ' never' or '', printExpected(expected)) ..
			string.format('Received:%s    %s', isNot and '      ' or '', printReceived(received))
	end

	return {message = message, pass = pass}
end

local function toBeNan(this: MatcherState, received: any, expected: nil)
	local matcherName = 'toBeNan'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}
	ensureNoExpected(expected, matcherName, options)

	local pass = Number.isNaN(received)

	local message = function()
		return matcherHint(matcherName, nil, '', options) ..
			'\n\n' ..
			string.format('Received: %s', printReceived(received))
	end

	return {message = message, pass = pass}
end

local function toBeNil(this: MatcherState, received: any, expected: nil)
	local matcherName = 'toBeNil'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}
	ensureNoExpected(expected, matcherName, options)

	local pass = received == nil

	local message = function()
		return matcherHint(matcherName, nil, '', options) ..
			'\n\n' ..
			string.format('Received: %s', printReceived(received))
	end

	return {message = message, pass = pass}
end

local function toBeTruthy(this: MatcherState, received: any, expected: nil)
	local matcherName = 'toBeTruthy'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}
	ensureNoExpected(expected, matcherName, options)

	local pass = not not received

	local message = function()
		return matcherHint(matcherName, nil, '', options) ..
			'\n\n' ..
			string.format('Received: %s', printReceived(received))
	end

	return {message = message, pass = pass}
end

-- deviation: toBeUndefined equivalent to toBeNil
local function toBeUndefined(this: MatcherState, received: any, expected: nil)
	local matcherName = 'toBeUndefined'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}
	ensureNoExpected(expected, matcherName, options)

	local pass = received == nil

	local message = function()
		return matcherHint(matcherName, nil, '', options) ..
			'\n\n' ..
			string.format('Received: %s', printReceived(received))
	end

	return {message = message, pass = pass}
end

local function toContain(
	this: MatcherState,
	received: any,
	expected: any
)
	local matcherName = 'toContain'
	local isNot = this.isNot
	local options = {
		comment = 'string.find or table.find',
		isNot = isNot,
		promise = this.promise,
	}

	if received == nil then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must not be nil', RECEIVED_COLOR('received')),
				printWithType('Received', received, printReceived)
			)
		)
	end

	if typeof(received) == 'string' then
		local index = received:find(tostring(expected), 1, true)
		local pass = index ~= nil

		local message = function()
			local labelExpected = string.format(
				'Expected %s',
				typeof(expected) == 'string' and 'substring' or 'value'
			)
			local labelReceived = 'Received string'
			local printLabel = getLabelPrinter(labelExpected, labelReceived)

			return matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format(
					'%s%s%s\n',
					printLabel(labelExpected),
					isNot and 'never ' or '',
					printExpected(expected)
				) ..
				string.format(
					'%s%s%s',
					printLabel(labelReceived),
					isNot and '      ' or '',
					isNot and printReceivedStringContainExpectedSubstring(
						received,
						index,
						#tostring(expected)
					) or printReceived(received)
				)
		end

		return {message = message, pass = pass}
	end

	local indexable = received
	local index = table.find(indexable, expected)
	local pass = index ~= nil

	local message = function()
		local labelExpected = 'Expected value'
		local labelReceived = string.format('Received %s', getType(received))
		local printLabel = getLabelPrinter(labelExpected, labelReceived)

		local retval = matcherHint(matcherName, nil, nil, options) ..
			'\n\n' ..
			string.format(
				'%s%s%s\n',
				printLabel(labelExpected),
				isNot and 'never ' or '',
				printExpected(expected)
			) ..
			string.format(
				'%s%s',
				printLabel(labelReceived),
				isNot and '      ' or ''
			)
			if isNot and Array.isArray(received) then
				retval = retval .. printReceivedArrayContainExpectedItem(received, index)
			else
				retval = retval .. printReceived(received)
			end
			if not isNot and Array.findIndex(received,
				function(item)
					return equals(item, expected, {iterableEquality})
				end) ~= -1
			then
				retval = retval .. string.format('\n\n%s', SUGGEST_TO_CONTAIN_EQUAL)
			end

			return retval
	end

	return {message = message, pass = pass}
end

local function toContainEqual(
	this: MatcherState,
	received: any,
	expected: any
)
	local matcherName = 'toContainEqual'
	local isNot = this.isNot
	local options = {
		comment = 'deep equality',
		isNot = isNot,
		promise = this.promise,
	}

	if received == nil then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must not be nil', RECEIVED_COLOR('received')),
				printWithType('Received', received, printReceived)
			)
		)
	end

	local index = Array.findIndex(received,
		function(item)
			return equals(item, expected, {iterableEquality})
		end
	)
	local pass = index ~= -1

	local message = function()
		local labelExpected = 'Expected value'
		local labelReceived = string.format('Received %s', getType(received))
		local printLabel = getLabelPrinter(labelExpected, labelReceived)

		local retval = matcherHint(matcherName, nil, nil, options) ..
			'\n\n' ..
			string.format(
				'%s%s%s\n',
				printLabel(labelExpected),
				isNot and 'never ' or '',
				printExpected(expected)
			) ..
			string.format(
				'%s%s',
				printLabel(labelReceived),
				isNot and '      ' or ''
			)
		if isNot and Array.isArray(received) then
			retval = retval .. printReceivedArrayContainExpectedItem(received, index)
		else
			retval = retval .. printReceived(received)
		end

		return retval
	end

	return {message = message, pass = pass}
end

local function toEqual(this: MatcherState, received: any, expected: any)
	local matcherName = 'toEqual'
	local options = {
		comment = 'deep equality',
		isNot = this.isNot,
		promise = this.promise,
	}

	local pass = equals(received, expected, {iterableEquality})

	local message
	if pass then
		message = function()
			local retval = matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format('Expected: never %s\n', printExpected(expected))
			if stringify(expected) ~= stringify(received) then
				retval = retval .. string.format(
					'Received:       %s',
					printReceived(received)
				)
			end
			return retval
		end
	else
		message = function()
			return matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				printDiffOrStringify(
					expected,
					received,
					EXPECTED_LABEL,
					RECEIVED_LABEL,
					isExpand(this.expand)
				)
		end
	end

	-- // Passing the actual and expected objects so that a custom reporter
	-- // could access them, for example in order to display a custom visual diff,
	-- // or create a different error message
	return {actual = received, expected = expected, message = message, name = matcherName, pass = pass}
end

local function toHaveLength(this: MatcherState, received: any, expected: number)
	local matcherName = 'toHaveLength'
	local isNot = this.isNot
	local options = {
		isNot = isNot,
		promise = this.promise,
	}

	-- deviation: only strings and array-like tables have a well defined built in length in Lua
	-- we also allow for objects that have a length property
	local hasLengthProperty = typeof(received) == 'table' and typeof(received.length) == 'number'
	if not Array.isArray(received) and
		typeof(received) ~= 'string' and
		not hasLengthProperty
	then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format(
					'%s value must have a length property whose value must be a number',
					RECEIVED_COLOR('received')
				),
				printWithType('Received', received, printReceived)
			)
		)
	end

	ensureExpectedIsNonNegativeInteger(expected, matcherName, options)

	local pass
	local receivedLength
	if received.length ~= nil then
		receivedLength = received.length
		pass = receivedLength == expected
	else
		receivedLength = #received
		pass = receivedLength == expected
	end

	local message = function()
		local labelExpected = 'Expected length'
		local labelReceivedLength = 'Received length'
		local labelReceivedValue = string.format('Received %s', getType(received))
		local printLabel = getLabelPrinter(
			labelExpected,
			labelReceivedLength,
			labelReceivedValue
		)

		local retval = matcherHint(matcherName, nil, nil, options) ..
			'\n\n' ..
			string.format(
				'%s%s%s\n',
				printLabel(labelExpected),
				isNot and 'never ' or '',
				printExpected(expected)
			)
		if not isNot then
			retval = retval .. string.format(
				'%s%s\n',
				printLabel(labelReceivedLength),
				printReceived(receivedLength)
			)
		end

		return retval .. string.format(
			'%s%s%s',
			printLabel(labelReceivedValue),
			isNot and '      ' or '' ,
			printReceived(received)
		)
	end

	return {message = message, pass = pass}
end

local function toHaveProperty(
	this: MatcherState,
	received: any,
	expectedPath: any,
	expectedValue: any?
)
	local matcherName = 'toHaveProperty'
	local expectedArgument = 'path'
	local hasValue = expectedValue ~= nil
	local options = {
		isNot = this.isNot,
		promise = this.promise,
		secondArgument = hasValue and 'value' or '',
	}

	if received == nil then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, expectedArgument, options),
				string.format('%s value must not be nil', RECEIVED_COLOR('received')),
				printWithType('Received', received, printReceived)
			)
		)
	end

	local expectedPathType = getType(expectedPath)

	if expectedPathType ~= 'string' and expectedPathType ~= 'table' then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, expectedArgument, options),
				string.format('%s path must be a string or array', EXPECTED_COLOR('expected')),
				printWithType('Expected', expectedPath, printExpected)
			)
		)
	end

	local expectedPathLength
	if typeof(expectedPath) == 'string' then
		expectedPathLength = #expectedPath:split('.')
	else
		expectedPathLength = #expectedPath
	end

	if expectedPathType == 'table' and expectedPathLength == 0 then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, expectedArgument, options),
				string.format('%s path must not be an empty array', EXPECTED_COLOR('expected')),
				printWithType('Expected', expectedPath, printExpected)
			)
		)
	end

	local result = getPath(received, expectedPath)
	local lastTraversedObject = result.lastTraversedObject
	local hasEndProp = result.hasEndProp
	local receivedPath = result.traversedPath
	local hasCompletePath = #receivedPath == expectedPathLength

	local receivedValue
	if hasCompletePath then
		receivedValue = result.value
	else
		receivedValue = lastTraversedObject
	end

	local pass
	if hasValue then
		pass = equals(result.value, expectedValue, {iterableEquality})
	else
		pass = not not hasEndProp -- // theoretically undefined if empty path
	end
	-- // Remove type cast if we rewrite getPath as iterative algorithm.

	-- deviation: omit code block for dealing with upstream edge case with undefined expectedValues

	local message
	if pass then
		message = function()
			local retval = matcherHint(matcherName, nil, expectedArgument, options) .. '\n\n'
			if hasValue then
				retval = retval ..
					string.format('Expected path: %s\n\n', printExpected(expectedPath)) ..
					string.format('Expected value: never %s', printExpected(expectedValue))
				if stringify(expectedValue) ~= stringify(receivedValue) then
					return retval ..
						string.format('\nReceived value:       %s', printReceived(receivedValue))
				end
				return retval
			else
				return retval ..
					string.format('Expected path: never %s\n\n', printExpected(expectedPath)) ..
					string.format('Received value: %s', printReceived(receivedValue))
			end
		end
	else
		message = function()
			local retval = matcherHint(matcherName, nil, expectedArgument, options) ..
				'\n\n' ..
				string.format('Expected path: %s\n', printExpected(expectedPath))
			if hasCompletePath then
				return retval .. '\n' ..
					printDiffOrStringify(
						expectedValue,
						receivedValue,
						EXPECTED_VALUE_LABEL,
						RECEIVED_VALUE_LABEL,
						isExpand(this.expand)
					)
			end
			retval = retval .. 'Received path: '

			if expectedPathType == 'table' or #receivedPath == 0 then
				retval = retval .. string.format('%s\n\n', printReceived(receivedPath))
			else
				retval = retval .. string.format('%s\n\n', printReceived(table.concat(receivedPath, '.')))
			end

			if hasValue then
				retval = retval .. string.format('Expected value: %s\n', printExpected(expectedValue))
			end

			return retval .. string.format('Received value: %s', printReceived(receivedValue))
		end
	end

	return {message = message, pass = pass}
end

-- deviation: toMatch accepts Lua string patterns or RegExp polyfill but not simple substring
local function toMatch(this: MatcherState, received: string, expected: string | RegExp)
	local matcherName = 'toMatch'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}

	if typeof(received) ~= 'string' then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must be a string', RECEIVED_COLOR('received')),
				printWithType('Received', received, printReceived)
			)
		)
	end

	if typeof(expected) ~= 'string' and
		getType(expected) ~= 'regexp' then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must be a string or regular expression', EXPECTED_COLOR('expected')),
				printWithType('Expected', expected, printExpected)
			)
		)
	end

	local pass
	if typeof(expected) == 'string' then
		pass = received:find(expected) ~= nil
	else
		pass = expected:test(received)
	end


	-- deviation: We print "expected pattern" in both cases because this function
	-- treats strings as Lua patterns
	local message
	if pass then
		message = function()
			local retval = matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format('Expected pattern: never %s\n', printExpected(expected))
			if getType(expected) == 'string' then
				retval = retval .. string.format('Received string:        %s', printReceivedStringContainExpectedSubstring(received, received:find(expected), #expected))
			else
				retval = retval .. string.format('Received string:        %s', printReceivedStringContainExpectedResult(received, expected:exec(received)))
			end

			return retval
		end
	else
		message = function()
			local labelExpected = 'Expected pattern'
			local labelReceived = 'Received string'
			local printLabel = getLabelPrinter(labelExpected, labelReceived)

			return matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format('%s%s\n', printLabel(labelExpected), printExpected(expected)) ..
				string.format('%s%s', printLabel(labelReceived), printReceived(received))
		end
	end

	return {message = message, pass = pass}
end

local function toMatchObject(this: MatcherState, received: any, expected: any)
	local matcherName = 'toMatchObject'
	local options = {
		isNot = this.isNot,
		promise = this.promise,
	}

	if typeof(received) ~= 'table' or received == nil then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must be a non-nil object', RECEIVED_COLOR('received')),
				printWithType('Received', received, printReceived)
			)
		)
	end

	if typeof(expected) ~= 'table' or expected == nil then
		error(
			matcherErrorMessage(
				matcherHint(matcherName, nil, nil, options),
				string.format('%s value must be a non-nil object', EXPECTED_COLOR('expected')),
				printWithType('Expected', expected, printExpected)
			)
		)
	end

	-- ROBLOX TODO: Revisit usage of subsetEquality
	local pass = equals(received, expected, {subsetEquality})

	local message
	if pass then
		message = function()
			local retval = matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				string.format('Expected: never %s', printExpected(expected))
			if stringify(expected) ~= stringify(received) then
				return retval .. string.format('\nReceived:       %s', printReceived(received))
			end
			return retval
		end
	else
		message = function()
			return matcherHint(matcherName, nil, nil, options) ..
				'\n\n' ..
				printDiffOrStringify(
					expected,
					getObjectSubset(received, expected),
					EXPECTED_LABEL,
					RECEIVED_LABEL,
					isExpand(this.expand)
				)
		end
	end

	return {message = message, pass = pass}
end

-- deviation: toStrictEqual omitted, no strict equality in Lua

return {
	toBe = toBe,
	toBeCloseTo = toBeCloseTo,
	toBeDefined = toBeDefined,
	toBeFalsy = toBeFalsy,
	toBeGreaterThan = toBeGreaterThan,
	toBeGreaterThanOrEqual = toBeGreaterThanOrEqual,
	toBeInstanceOf = toBeInstanceOf,
	toBeLessThan = toBeLessThan,
	toBeLessThanOrEqual = toBeLessThanOrEqual,
	toBeNan = toBeNan,
	toBeNaN = toBeNan, -- deviation: aliased to toBeNan
	toBeNil = toBeNil,
	toBeNull = toBeNil, -- deviation: aliased to toBeNil
	toBeTruthy = toBeTruthy,
	toBeUndefined = toBeUndefined,
	toContain = toContain,
	toContainEqual = toContainEqual,
	toEqual = toEqual,
	toHaveLength = toHaveLength,
	toHaveProperty = toHaveProperty,
	toMatch = toMatch,
	toMatchObject = toMatchObject,
	-- toStrictEqual = toStrictEqual,
}