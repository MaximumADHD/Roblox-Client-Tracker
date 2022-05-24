-- ROBLOX upstream: https://github.com/facebook/jest/tree/v27.4.7/packages/jest-util/src/globsToMatcher.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
type Array<T> = LuauPolyfill.Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>

local exports = {}

local picomatch = require(Packages.Picomatch)
local typesModule = require(Packages.JestTypes)
type Config_Path = typesModule.Config_Path
type Config_Glob = typesModule.Config_Glob
-- local replacePathSepForGlob = require(script.Parent.replacePathSepForGlob).default

-- ROBLOX deviation START using Callable table to allow for properties on a function alternative
type CallableMatcher = typeof(setmetatable({
	state = {} :: any,
}, {
	__call = function(self: any, str: Config_Path): boolean
		return false
	end,
}))

type MatcherFn = (str: Config_Path) -> boolean
type Matcher = CallableMatcher
-- ROBLOX deviation END

local globsToMatchersMap = Map.new() :: Map<string, { isMatch: Matcher, negated: boolean }>

local picomatchOptions = { dot = true }

--[[*
 * Converts a list of globs into a function that matches a path against the
 * globs.
 *
 * Every time picomatch is called, it will parse the glob strings and turn
 * them into regexp instances. Instead of calling picomatch repeatedly with
 * the same globs, we can use this function which will build the picomatch
 * matchers ahead of time and then have an optimized path for determining
 * whether an individual path matches.
 *
 * This function is intended to match the behavior of `micromatch()`.
 *
 * @example
 * const isMatch = globsToMatcher(['*.js', '!*.test.js']);
 * isMatch('pizza.js'); // true
 * isMatch('pizza.test.js'); // false
 ]]
local function globsToMatcher(globs: Array<Config_Glob>): MatcherFn
	if #globs == 0 then
		-- Since there were no globs given, we can simply have a fast path here and
		-- return with a very simple function.
		return function()
			return false
		end
	end

	local matchers = Array.map(globs, function(glob)
		if not globsToMatchersMap:has(glob) then
			local isMatch = picomatch(glob, picomatchOptions, true) :: Matcher

			local matcher = {
				isMatch = isMatch,
				-- Matchers that are negated have different behavior than matchers that
				-- are not negated, so we need to store this information ahead of time.
				negated = isMatch.state.negated or Boolean.toJSBoolean(isMatch.state.negatedExtglob),
			}

			globsToMatchersMap:set(glob, matcher)
		end

		return globsToMatchersMap:get(glob) :: { isMatch: Matcher, negated: boolean }
	end)

	return function(path)
		-- ROBLOX FIXME START: implement replacePathSepForGlob
		local replacedPath = path
		-- local replacedPath = replacePathSepForGlob(path)
		-- ROBLOX FIXME END
		local kept = nil
		local negatives = 0

		for i = 1, #matchers do
			local isMatch, negated
			local ref = matchers[i]
			isMatch, negated = ref.isMatch, ref.negated

			if negated then
				negatives += 1
			end

			local matched = isMatch(replacedPath)

			if not matched and negated then
				-- The path was not matched, and the matcher is a negated matcher, so we
				-- want to omit the path. This means that the negative matcher is
				-- filtering the path out.
				kept = false
			elseif matched and not negated then
				-- The path was matched, and the matcher is not a negated matcher, so we
				-- want to keep the path.
				kept = true
			end
		end

		-- If all of the globs were negative globs, then we want to include the path
		-- as long as it was not explicitly not kept. Otherwise only include
		-- the path if it was kept. This allows sets of globs that are all negated
		-- to allow some paths to be matched, while sets of globs that are mixed
		-- negated and non-negated to cause the negated matchers to only omit paths
		-- and not keep them.
		return if negatives == #matchers then kept ~= false else Boolean.toJSBoolean(kept)
	end
end
exports.default = globsToMatcher

return exports
