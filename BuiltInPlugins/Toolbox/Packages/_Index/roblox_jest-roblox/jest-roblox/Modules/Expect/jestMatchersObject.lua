-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/jestMatchersObject.ts
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

local Polyfill = require(Packages.LuauPolyfill)
local Symbol = Polyfill.Symbol
local Object = Polyfill.Object

local AsymmetricMatcher = require(Workspace.asymmetricMatchers).AsymmetricMatcher

-- deviation: omitted external type definitions

-- // Global matchers object holds the list of available matchers and
-- // the state, that can hold matcher specific values that change over time.
local JEST_MATCHERS_OBJECT = Symbol.for_("$$jest-matchers-object")

-- // Notes a built-in/internal Jest matcher.
-- // Jest may override the stack trace of Errors thrown by internal matchers.
local INTERNAL_MATCHER_FLAG = Symbol.for_("$$jest-internal-matcher")

if not _G[JEST_MATCHERS_OBJECT] then
	local defaultState = {
		assertionCalls = 0,
		expectedAssertionsNumber = nil, -- doesn't have significance in Lua but kept for translation
		isExpectingAssertions = false,
		suppressedErrors = {}
	}

	_G[JEST_MATCHERS_OBJECT] = {
		matchers = {},
		state = defaultState
	}
end

local function getState()
	return _G[JEST_MATCHERS_OBJECT].state
end

local function setState(state): ()
	Object.assign(_G[JEST_MATCHERS_OBJECT].state, state)
end

local function getMatchers()
	return _G[JEST_MATCHERS_OBJECT].matchers
end

-- deviation: matchers does not have MatchersObject type annotation and expect
-- does not have Expect type annotation
local function setMatchers(
	matchers,
	isInternal: boolean,
	expect
): ()
	for key, matcher in pairs(matchers) do
		-- ROBLOX TODO: assign INTERNAL_MATCHER_FLAG to matchers
		if not isInternal then
			local CustomMatcher = {}
			CustomMatcher.__index = CustomMatcher
			setmetatable(CustomMatcher, AsymmetricMatcher)

			CustomMatcher.new = function(inverse: boolean, ...)
				local self = AsymmetricMatcher.new({...})
				self.inverse = inverse
				setmetatable(self, CustomMatcher)
				return self
			end

			CustomMatcher.asymmetricMatch = function(self, other: any)
				local result
				-- deviation: first argument is nil, no need to pass on matcherContext in asymmetricMatch
				result = matcher(nil, other, unpack(self.sample))

				if self.inverse then
					return not result.pass
				end
				return result.pass
			end

			CustomMatcher.toString = function(self)
				if self.inverse then
					return string.format("never.%s", key)
				end
				return tostring(key)
			end

			CustomMatcher.getExpectedType = function(self)
				return "any"
			end

			CustomMatcher.toAsymmetricMatcher = function(self)
				local sample = self.sample
				local i = 1
				local printval = ''
				while i < #sample do
					printval = printval .. tostring(sample[i]) .. ', '
					i += 1
				end
				printval = printval .. tostring(sample[i])
				return string.format(
					"%s<%s>",
					self:toString(),
					printval
				)
			end

			expect[key] = function(...)
				return CustomMatcher.new(false, ...)
			end
			if not expect.never then
				expect.never = {}
			end
			expect.never[key] = function(...)
				return CustomMatcher.new(true, ...)
			end
		end
	end

	Object.assign(_G[JEST_MATCHERS_OBJECT].matchers, matchers)
end

return {
	INTERNAL_MATCHER_FLAG = INTERNAL_MATCHER_FLAG,
	getState = getState,
	setState = setState,
	getMatchers = getMatchers,
	setMatchers = setMatchers
}