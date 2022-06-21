-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/expect/src/index.ts

-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>

local AssertionError = LuauPolyfill.AssertionError

local matcherUtils = require(Packages.JestMatcherUtils)

local AsymmetricMatchers = require(CurrentModule.asymmetricMatchers)
local any = AsymmetricMatchers.any
local anything = AsymmetricMatchers.anything
local arrayContaining = AsymmetricMatchers.arrayContaining
local arrayNotContaining = AsymmetricMatchers.arrayNotContaining
local objectContaining = AsymmetricMatchers.objectContaining
local objectNotContaining = AsymmetricMatchers.objectNotContaining
local stringContaining = AsymmetricMatchers.stringContaining
local stringNotContaining = AsymmetricMatchers.stringNotContaining
local stringMatching = AsymmetricMatchers.stringMatching
local stringNotMatching = AsymmetricMatchers.stringNotMatching

local JasmineUtils = require(CurrentModule.jasmineUtils)
local equals = JasmineUtils.equals

local JestMatchersObject = require(CurrentModule.jestMatchersObject)
--local INTERNAL_MATCHER_FLAG = JestMatchersObject.INTERNAL_MATCHER_FLAG
local getMatchers = JestMatchersObject.getMatchers
local getState = JestMatchersObject.getState
local setMatchers = JestMatchersObject.setMatchers
local setState = JestMatchersObject.setState
local matchers = require(CurrentModule.matchers)
local spyMatchers = require(CurrentModule.spyMatchers)
local toThrowMatchers = require(CurrentModule.toThrowMatchers).matchers

local Types = require(CurrentModule.types)
type AsyncExpectationResult = Types.AsyncExpectationResult
type Expect = Types.Expect_
type ExpectationResult = Types.ExpectationResult
type JestMatcherState = Types.MatcherState
type MatcherInterface<R> = Types.Matchers_<R>
type MatchersObject<T> = Types.MatchersObject<T>
type PromiseMatcherFn = Types.PromiseMatcherFn
type RawMatcherFn = Types.RawMatcherFn_
type SyncExpectationResult = Types.SyncExpectationResult
type ThrowingMatcherFn = Types.ThrowingMatcherFn

local utils = require(CurrentModule.utils)
local iterableEquality = utils.iterableEquality
local subsetEquality = utils.subsetEquality
-- ROBLOX deviation: Roblox Instance matchers
-- local instanceSubsetEquality = utils.instanceSubsetEquality

local makeThrowingMatcher, _validateResult

--[[
	ROBLOX deviation START: inline type for JestAssertionError['matcherResult'] as Lua doesn't support Omit utility type
	original code:
	class JestAssertionError extends Error {
	  matcherResult?: Omit<SyncExpectationResult, 'message'> & {message: string};
	}
]]
type JestMatcherError_matcherResult = {
	pass: boolean,
	message: string,
}

type JestAssertionError = {
	matcherResult: JestMatcherError_matcherResult?,
}
-- ROBLOX deviation END

--[[
	ROBLOX deviation: skipped code
	original code lines 56 - 84
]]

local function expect_(_self, actual: any, ...): any
	local rest: Array<any> = { ... }

	if #rest ~= 0 then
		error("Expect takes at most one argument.")
	end

	local allMatchers = getMatchers()
	local expectation = {
		never = {},
		rejects = { never = {} },
		resolves = { never = {} },
	}

	for name, matcher in pairs(allMatchers) do
		--[[
			ROBLOX deviation: skipped unused variable declaration for promiseMatcher
			original code:
			const promiseMatcher = getPromiseMatcher(name, matcher) || matcher;
		]]
		expectation[name] = makeThrowingMatcher(matcher, false, "", actual)
		expectation.never[name] = makeThrowingMatcher(matcher, true, "", actual)

		--[[
			ROBLOX deviation: skipped code
			original code lines 106 - 134
		]]
	end

	return expectation
end

local function getMessage(message: (() -> string)?)
	return if message then message() else matcherUtils.RECEIVED_COLOR("No message was specified for this matcher.")
end

--[[
	ROBLOX deviation: skipped makeResolveMatcher, makeRejectMatcher
	original code lines 144 - 241
]]

-- ROBLOX deviation: matcher does not have RawMatcherFn type annotation and the
-- the function return is not annotated with ThrowingMatcherFn
function makeThrowingMatcher(
	matcher: RawMatcherFn,
	isNot: boolean,
	promise: string,
	actual: any,
	err: JestAssertionError?
): ThrowingMatcherFn
	return function(...)
		local throws = true
		local utils = Object.assign({
			iterableEquality = iterableEquality,
			subsetEquality = subsetEquality,
			-- ROBLOX deviation: Roblox Instance matchers
			-- instanceSubsetEquality = instanceSubsetEquality
		}, matcherUtils)

		local matcherContext = {
			-- When throws is disabled, the matcher will not throw errors during test
			-- execution but instead add them to the global matcher state. If a
			-- matcher throws, test execution is normally stopped immediately. The
			-- snapshot matcher uses it because we want to log all snapshot
			-- failures in a test.
			dontThrow = function()
				throws = false
			end,
			equals = equals,
			error = err,
			isNot = isNot,
			promise = promise,
			utils = utils,
		}
		Object.assign(matcherContext, getState())

		local function processResult(result: SyncExpectationResult, asyncError: JestAssertionError?)
			_validateResult(result)

			getState().assertionCalls = getState().assertionCalls + 1

			if (result.pass and isNot) or (not result.pass and not isNot) then
				-- XOR
				local message = getMessage(result.message)
				local error_

				if err then
					error_ = err
					error_.message = message
				elseif asyncError then
					error("Currently async is not implemented")
				else
					error_ = {}
					error_.message = message
				end

				-- Passing the result of the matcher with the error so that a custom
				-- reporter could access the actual and expected objects of the result
				-- for example in order to display a custom visual diff
				error_.matcherResult = Object.assign({}, result, { message = message })

				if throws then
					error(AssertionError.new({ message = message }))
				else
					table.insert(getState().suppressedErrors, error)
				end
			end
		end

		local potentialResult, preservedStack, result

		local ok = xpcall(function(...)
			-- ROBLOX TODO: Implement INTERNAL_MATCHER_FLAG cases
			potentialResult = matcher(matcherContext, actual, ...)

			local syncResult = potentialResult

			return processResult(syncResult)
		end, function(e)
			preservedStack = debug.traceback(nil, 7)
			result = e
		end, ...)

		if not ok then
			if typeof(result) == "table" and typeof(result.message) == "string" then
				local errorTable = AssertionError.new({ message = result.message })
				errorTable.stack = preservedStack
				error(errorTable)
			else
				local errorTable = AssertionError.new({ message = result })
				errorTable.stack = preservedStack
				error(errorTable)
			end
		end
	end
end

function _validateResult(result: any)
	if
		typeof(result) ~= "table"
		or typeof(result.pass) ~= "boolean"
		or (result.message and typeof(result.message) ~= "string" and typeof(result.message) ~= "function")
	then
		error(
			"Unexpected return from a matcher function.\n"
				.. "Matcher functions should "
				.. "return an object in the following format:\n"
				.. "  {message?: string | function, pass: boolean}\n"
				.. matcherUtils.stringify(result)
				.. " was returned"
		)
	end
end

local Expect = {}

--[[
	ROBLOX FIXME: add extends and default generic param when supported
	original code:
	expect.extend = <T extends JestMatcherState = JestMatcherState>(
]]
Expect.extend = function<T>(matchers: MatchersObject<T>): ()
	setMatchers(matchers, false, Expect)
end

Expect.anything = anything
Expect.any = any

-- ROBLOX deviation: not is a reserved keyword in Lua, we use never instead
Expect.never = {
	arrayContaining = arrayNotContaining,
	objectContaining = objectNotContaining,
	stringContaining = stringNotContaining,
	stringMatching = stringNotMatching,
}

Expect.objectContaining = objectContaining
Expect.arrayContaining = arrayContaining
Expect.stringContaining = stringContaining
Expect.stringMatching = stringMatching

--[[
	ROBLOX deviation: skipped code
	original code lines: 376 - 416
]]

-- add default jest matchers
setMatchers(matchers, true, Expect)
setMatchers(spyMatchers, true, Expect)
setMatchers(toThrowMatchers, true, Expect)

-- ROBLOX deviation START: defining addSnapshotSerializer override here
local plugins = require(Packages.JestSnapshot).plugins
Expect.addSnapshotSerializer = plugins.addSerializer
-- ROBLOX deviation END
-- ROBLOX deviation: exposing our custom resetSnapshotSerializers
Expect.resetSnapshotSerializers = plugins.resetSerializers
-- ROBLOX deviation START: skipped
-- Expect.assertions = assertions
-- Expect.hasAssertions = hasAssertions
-- ROBLOX deviation END
Expect.getState = getState
Expect.setState = setState
-- ROBLOX deviation: skipped
-- Expect.extractExpectedAssertionsErrors = extractExpectedAssertionsErrors

-- ROBLOX TODO: ADO-1554 clean up the following deviations and move them to the
-- appropriate locations
-- ROBLOX deviation START: for now we extend the snapshot matchers in the Expect file instead
-- of jest-jasmine2/jestExpect
local JestSnapshot = require(Packages.JestSnapshot)
local toMatchSnapshot = JestSnapshot.toMatchSnapshot
local toThrowErrorMatchingSnapshot = JestSnapshot.toThrowErrorMatchingSnapshot
setMatchers({
	toMatchSnapshot = toMatchSnapshot,
	toThrowErrorMatchingSnapshot = toThrowErrorMatchingSnapshot,
}, false, Expect)
-- ROBLOX deviation END

setmetatable(Expect, { __call = expect_ })

-- ROBLOX deviation START: exporting types without a namespace prefix
export type MatcherState = JestMatcherState
export type Matcher<R> = MatcherInterface<R>
-- ROBLOX deviation END

return Expect
