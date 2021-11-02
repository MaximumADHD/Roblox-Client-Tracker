-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

type Array<T> = { T };

type SyncExpectationResult = {
	pass: boolean,
	message: () -> string
};

type JestAssertionError = {
	matcherResult: SyncExpectationResult?
}

local Workspace = script
local Modules = Workspace.Parent
local Packages = Modules.Parent.Parent

local Polyfill = require(Packages.LuauPolyfill)
local Object = Polyfill.Object

local matcherUtils = require(Modules.JestMatcherUtils)

local matchers = require(Workspace.matchers)
local spyMatchers = require(Workspace.spyMatchers)
local toThrowMatchers = require(Workspace.toThrowMatchers).matchers

local JasmineUtils = require(Workspace.jasmineUtils)
local equals = JasmineUtils.equals

local AsymmetricMatchers = require(Workspace.asymmetricMatchers)
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

local JestMatchersObject = require(Workspace.jestMatchersObject)
--local INTERNAL_MATCHER_FLAG = JestMatchersObject.INTERNAL_MATCHER_FLAG
local getMatchers = JestMatchersObject.getMatchers
local getState = JestMatchersObject.getState
local setMatchers = JestMatchersObject.setMatchers
--local setState = JestMatchersObject.setState

local makeThrowingMatcher, _validateResult

local function expect_(self, actual: any, ...): any
	local rest: Array<any> = {...}

	if #rest ~= 0 then
		error("Expect takes at most one argument.")
	end

	local allMatchers = getMatchers()
	local expectation = {
		never = {},
		rejects = {never = {}},
		resolves = {never = {}}
	}

	for name, matcher in pairs(allMatchers) do
		expectation[name] = makeThrowingMatcher(matcher, false, '', actual)
		expectation.never[name] = makeThrowingMatcher(matcher, true, '', actual)
	end

	return expectation
end

local function getMessage(message: any?)
	if message then
		return message()
	else
		return matcherUtils.RECEIVED_COLOR("No message was specified for this matcher.")
	end
end

-- deviation: matcher does not have RawMatcherFn type annotation and the
-- the function return is not annotated with ThrowingMatcherFn
function makeThrowingMatcher(
	matcher,
	isNot: boolean,
	promise: string,
	actual: any,
	err: any?
)
	return function(...)
		local args = {...}
		local throws = true
		local utils = Object.assign({}, matcherUtils, iterableEquality, subsetEquality)

		local matcherContext = {
			-- // When throws is disabled, the matcher will not throw errors during test
			-- // execution but instead add them to the global matcher state. If a
			-- // matcher throws, test execution is normally stopped immediately. The
			-- // snapshot matcher uses it because we want to log all snapshot
			-- // failures in a test.
			dontThrow = function() throws = false end,
			equals = equals,
			error = err,
			isNot = isNot,
			promise = promise,
			utils = utils
		}
		Object.assign(matcherContext, getState())

		local function processResult(
			result: SyncExpectationResult,
			asyncError: JestAssertionError?
		)
			_validateResult(result)

			getState().assertionCalls = getState().assertionCalls + 1

			if (result.pass and isNot) or (not result.pass and not isNot) then
				-- // XOR
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

				-- // Passing the result of the matcher with the error so that a custom
				-- // reporter could access the actual and expected objects of the result
				-- // for example in order to display a custom visual diff
				error_.matcherResult = result

				if throws then
					error(message)
				else
					table.insert(getState().suppressedErrors, error)
				end
			end
		end

		local potentialResult

		local ok, result = pcall(function()
			-- ROBLOX TODO: Implement INTERNAL_MATCHER_FLAG cases
			potentialResult = matcher(matcherContext, actual, unpack(args))

			local syncResult = potentialResult

			return processResult(syncResult)
		end)

		if not ok then
			error(result)
		end
	end
end

function _validateResult(result: any)
	if
		typeof(result) ~= "table" or
		typeof(result.pass) ~= "boolean" or
		(result.message and
			typeof(result.message) ~= "string" and
			typeof(result.message) ~= "function")
	then
		error("Unexpected return from a matcher function.\n" ..
			"Matcher functions should " ..
			"return an object in the following format:\n" ..
			"  {message?: string | function, pass: boolean}\n" ..
			matcherUtils.stringify(result) .. " was returned"
		)
	end
end

local Expect = {}

Expect.extend = function(matchers): ()
	setMatchers(matchers, false, Expect)
end

Expect.anything = anything
Expect.any = any

-- deviation: not is a reserved keyword in Lua, we use never instead
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

-- // add default jest matchers
setMatchers(matchers, true, Expect)
setMatchers(spyMatchers, true, Expect)
setMatchers(toThrowMatchers, true, Expect)

setmetatable(Expect, {__call = expect_})
return Expect