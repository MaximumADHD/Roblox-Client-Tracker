-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/expect/src/index.ts

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
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local Promise = require(Packages.Promise)
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

local matcherUtils = require(Packages.JestMatcherUtils)

local AsymmetricMatchers = require(CurrentModule.asymmetricMatchers)
local any = AsymmetricMatchers.any
local anything = AsymmetricMatchers.anything
local arrayContaining = AsymmetricMatchers.arrayContaining
local arrayNotContaining = AsymmetricMatchers.arrayNotContaining
local closeTo = AsymmetricMatchers.closeTo
local notCloseTo = AsymmetricMatchers.notCloseTo
local nothing = AsymmetricMatchers.nothing
local objectContaining = AsymmetricMatchers.objectContaining
local objectNotContaining = AsymmetricMatchers.objectNotContaining
local stringContaining = AsymmetricMatchers.stringContaining
local stringMatching = AsymmetricMatchers.stringMatching
local stringNotContaining = AsymmetricMatchers.stringNotContaining
local stringNotMatching = AsymmetricMatchers.stringNotMatching
local extractExpectedAssertionsErrors = require(CurrentModule.extractExpectedAssertionsErrors).default
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
local toThrowMatchersModule = require(CurrentModule.toThrowMatchers)
local toThrowMatchers = toThrowMatchersModule.matchers
local createThrowMatcher = toThrowMatchersModule.createMatcher

local Types = require(CurrentModule.types)
type AsyncExpectationResult = Types.AsyncExpectationResult
export type Expect = Types.Expect_
export type ExpectObj = Types.ExpectObj<any>
type ExpectationResult = Types.ExpectationResult
type JestMatcherState = Types.MatcherState
type MatcherInterface<R> = Types.Matchers_<R>
type MatchersObject = Types.MatchersObject
type PromiseMatcherFn = Types.PromiseMatcherFn
type RawMatcherFn = Types.RawMatcherFn_
type SyncExpectationResult = Types.SyncExpectationResult
type ThrowingMatcherFn = Types.ThrowingMatcherFn

-- ROBLOX deviation START: add additional type exports
export type ExpectExtended<E, State = JestMatcherState> = Types.ExpectExtended<E, State>
-- ROBLOX deviation END

local utils = require(CurrentModule.utils)
local iterableEquality = utils.iterableEquality
local subsetEquality = utils.subsetEquality
-- ROBLOX deviation: Roblox Instance matchers
-- local instanceSubsetEquality = utils.instanceSubsetEquality

local makeThrowingMatcher, _validateResult

--[[
	ROBLOX deviation START: inline type as Lua doesn't support Omit utility type
	original code: Omit<SyncExpectationResult, 'message'>
]]
type Omit_SyncExpectationResult_message = {
	pass: boolean,
}

type JestAssertionError = Error & {
	matcherResult: Omit_SyncExpectationResult_message & { message: string },
}
-- ROBLOX deviation END
type JestAssertionError_statics = { new: (message: string?) -> JestAssertionError }
local JestAssertionError = (
	setmetatable({}, { __index = Error }) :: any
) :: JestAssertionError & JestAssertionError_statics;

(JestAssertionError :: any).__index = JestAssertionError
function JestAssertionError.new(message: string?): JestAssertionError
	local self = setmetatable(Error.new(message), JestAssertionError)
	return (self :: any) :: JestAssertionError
end

local function isPromise<T>(
	obj: any
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ obj is PromiseLike<T> ]]
	return not not Boolean.toJSBoolean(obj)
		and (typeof(obj) == "table" or typeof(obj) == "function")
		and typeof(obj.andThen) == "function"
end

local function createToThrowErrorMatchingSnapshotMatcher(matcher: RawMatcherFn)
	return function(self: JestMatcherState, received: any, testNameOrInlineSnapshot: string?)
		return matcher(self, table.unpack({ received, testNameOrInlineSnapshot, true }))
	end
end

local function getPromiseMatcher(name: string, matcher: any)
	if name == "toThrow" or name == "toThrowError" then
		return createThrowMatcher(name, true)
	elseif name == "toThrowErrorMatchingSnapshot" or name == "toThrowErrorMatchingInlineSnapshot" then
		return createToThrowErrorMatchingSnapshotMatcher(matcher)
	end
	return nil
end

-- ROBLOX deviation: Declaring this here because hoisting is not available in lua
local makeResolveMatcher, makeRejectMatcher

local function expect_(_self, actual: any, ...)
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

	local err = JestAssertionError.new()

	for name, matcher in pairs(allMatchers) do
		local ref = getPromiseMatcher(name, matcher)
		local promiseMatcher = Boolean.toJSBoolean(ref) and ref or matcher
		expectation[name] = makeThrowingMatcher(matcher, false, "", actual)
		expectation.never[name] = makeThrowingMatcher(matcher, true, "", actual)

		expectation.resolves[name] = makeResolveMatcher(name, promiseMatcher, false, actual, err)
		expectation.resolves.never[name] = makeResolveMatcher(name, promiseMatcher, true, actual, err)
		expectation.rejects[name] = makeRejectMatcher(name, promiseMatcher, false, actual, err)
		expectation.rejects.never[name] = makeRejectMatcher(name, promiseMatcher, true, actual, err)
	end

	return expectation
end

local function getMessage(message: (() -> string)?)
	return if message then message() else matcherUtils.RECEIVED_COLOR("No message was specified for this matcher.")
end

function makeResolveMatcher(
	matcherName: string,
	matcher: RawMatcherFn,
	isNot: boolean,
	actual: Promise<any>,
	outerErr: JestAssertionError
): PromiseMatcherFn
	return function(...)
		local args = { ... }
		local options = { isNot = isNot, promise = "resolves" }
		if not isPromise(actual) then
			error(
				JestAssertionError.new(
					matcherUtils.matcherErrorMessage(
						matcherUtils.matcherHint(matcherName, nil, "", options),
						("%s value must be a promise"):format(tostring(matcherUtils.RECEIVED_COLOR("received"))),
						matcherUtils.printWithType("Received", actual, matcherUtils.printReceived)
					)
				)
			)
		end
		local innerErr = JestAssertionError.new()
		return actual:andThen(function(result)
			return makeThrowingMatcher(matcher, isNot, "resolves", result, innerErr)(table.unpack(args))
		end, function(reason)
			outerErr.message = tostring(matcherUtils.matcherHint(matcherName, nil, "", options))
				.. "\n\n"
				.. "Received promise rejected instead of resolved\n"
				.. ("Rejected to value: %s"):format(matcherUtils.printReceived(reason))
			return Promise.reject(outerErr)
		end)
	end
end

function makeRejectMatcher(
	matcherName: string,
	matcher: RawMatcherFn,
	isNot: boolean,
	actual: Promise<any> | any --[[ ROBLOX TODO: Unhandled node for type: TSParenthesizedType ]] --[[ (() => Promise<any>) ]],
	outerErr: JestAssertionError
): PromiseMatcherFn
	return function(...)
		local args = { ... }
		local options = { isNot = isNot, promise = "rejects" }
		local actualWrapper: Promise<any> = if typeof(actual) == "function" then actual() else actual
		if not isPromise(actualWrapper) then
			error(
				JestAssertionError.new(
					matcherUtils.matcherErrorMessage(
						matcherUtils.matcherHint(matcherName, nil, "", options),
						("%s value must be a promise or a function returning a promise"):format(
							tostring(matcherUtils.RECEIVED_COLOR("received"))
						),
						matcherUtils.printWithType("Received", actual, matcherUtils.printReceived)
					)
				)
			)
		end
		local innerErr = JestAssertionError.new()
		return actualWrapper:andThen(function(result)
			outerErr.message = tostring(matcherUtils.matcherHint(matcherName, nil, "", options))
				.. "\n\n"
				.. "Received promise resolved instead of rejected\n"
				.. ("Resolved to value: %s"):format(matcherUtils.printReceived(result))
			return Promise.reject(outerErr)
		end, function(reason)
			return makeThrowingMatcher(matcher, isNot, "rejects", reason, innerErr)(table.unpack(args))
		end)
	end
end

-- ROBLOX deviation: matcher does not have RawMatcherFn type annotation and the
-- the function return is not annotated with ThrowingMatcherFn
function makeThrowingMatcher(
	matcher: RawMatcherFn,
	isNot: boolean,
	promise: string,
	actual: any,
	err: JestAssertionError?
): ThrowingMatcherFn
	local function throwingMatcher(...)
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

			getState().assertionCalls = (getState().assertionCalls :: number) + 1

			if (result.pass and isNot) or (not result.pass and not isNot) then
				-- XOR
				local message = getMessage(result.message)
				local error_

				if err then
					error_ = err
					error_.message = message
				elseif asyncError then
					-- ROBLOX deviation START: Currently async is not implemented
					error("Currently async is not implemented")
					-- ROBLOX deviation END
				else
					error_ = JestAssertionError.new(message)

					--[[
						ROBLOX deviation: skipped code
						original code lines 291 - 295
					]]
				end

				-- Passing the result of the matcher with the error so that a custom
				-- reporter could access the actual and expected objects of the result
				-- for example in order to display a custom visual diff
				error_.matcherResult = Object.assign({}, result, { message = message })

				if throws then
					error(error_)
				else
					table.insert(getState().suppressedErrors, error_)
				end
			end
		end

		local function handleError(error_)
			if
				-- ROBLOX deviation START: adjusted condition
				-- matcher[INTERNAL_MATCHER_FLAG] == true
				-- and not instanceof(error_, JestAssertionError)
				-- and error_.name ~= "PrettyFormatPluginError"
				-- -- Guard for some environments (browsers) that do not support this feature.
				-- and
				Error.captureStackTrace and typeof(error_) == "table"
				-- ROBLOX deviation END
			then
				-- Try to remove this and deeper functions from the stack trace frame.
				Error.captureStackTrace(error_, throwingMatcher)
			end
			error(error_)
		end

		local ok, result = pcall(function(...)
			-- ROBLOX TODO: Implement INTERNAL_MATCHER_FLAG cases
			local potentialResult = matcher(matcherContext, actual, ...)

			local syncResult = potentialResult :: SyncExpectationResult

			processResult(syncResult)
		end, ...)

		if not ok then
			handleError(result)
		end
	end
	return throwingMatcher
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

local Expect = {} :: Expect

--[[
	ROBLOX FIXME: add extends and default generic param when supported
	original code:
	expect.extend = <T extends JestMatcherState = JestMatcherState>(
]]
Expect.extend = function(matchers: MatchersObject): ()
	setMatchers(matchers, false, Expect)
end

Expect.anything = anything
Expect.any = any
Expect.nothing = nothing

-- ROBLOX deviation: not is a reserved keyword in Lua, we use never instead
Expect.never = {
	arrayContaining = arrayNotContaining,
	closeTo = notCloseTo,
	objectContaining = objectNotContaining,
	stringContaining = stringNotContaining,
	stringMatching = stringNotMatching,
}

Expect.objectContaining = objectContaining
Expect.arrayContaining = arrayContaining
Expect.closeTo = closeTo
Expect.stringContaining = stringContaining
Expect.stringMatching = stringMatching

--[[
	ROBLOX deviation: skipped code
	original code lines: 376 - 392
]]

local function assertions(expected: number)
	local error_ = Error.new()
	if Error.captureStackTrace then
		Error.captureStackTrace(error_, assertions)
	end
	setState({ expectedAssertionsNumber = expected, expectedAssertionsNumberError = error_ })
end
local function hasAssertions(...: any)
	local args = { ... }
	local error_ = Error.new()
	if Error.captureStackTrace then
		Error.captureStackTrace(error_, hasAssertions)
	end
	matcherUtils.ensureNoExpected(args[1], ".hasAssertions")
	setState({ isExpectingAssertions = true, isExpectingAssertionsError = error_ })
end

-- add default jest matchers
setMatchers(matchers, true, Expect)
setMatchers(spyMatchers, true, Expect)
setMatchers(toThrowMatchers, true, Expect)

-- ROBLOX deviation START: defining addSnapshotSerializer override here
local plugins = require(Packages.JestSnapshot).plugins
Expect.addSnapshotSerializer = plugins.addSerializer
-- ROBLOX deviation END
Expect.assertions = assertions
Expect.hasAssertions = hasAssertions
Expect.getState = getState
Expect.setState = setState
Expect.extractExpectedAssertionsErrors = extractExpectedAssertionsErrors

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
local expectExport = (Expect :: any) :: Expect

-- ROBLOX deviation START: exporting types without a namespace prefix
export type MatcherState = JestMatcherState
export type Matcher<R> = MatcherInterface<R>
-- ROBLOX deviation END

return expectExport
