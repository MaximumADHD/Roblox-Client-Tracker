-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/expect/src/jestMatchersObject.ts
-- ROBLOX NOTE: extracted from jestMatchersObject.lua to avoid circular dependencies

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Symbol = LuauPolyfill.Symbol

local Types = require(CurrentModule.types)
type MatcherState = Types.MatcherState

-- Global matchers object holds the list of available matchers and
-- the state, that can hold matcher specific values that change over time.
local JEST_MATCHERS_OBJECT = Symbol.for_("$$jest-matchers-object")

--[[
	ROBLOX TODO: add default generic param when possible
	original code:
	export const getState = <State extends MatcherState = MatcherState>(): State =>
]]
local function getState<State>(): State
	return _G[JEST_MATCHERS_OBJECT].state
end

return {
	JEST_MATCHERS_OBJECT = JEST_MATCHERS_OBJECT,
	getState = getState,
}
