-- ROBLOX upstream: https://github.com/TheBrainFamily/wait-for-expect/blob/v3.0.0/src/helpers.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout

local exports = {}

-- Used to avoid using Jest's fake timers and Date.now mocks
-- See https://github.com/TheBrainFamily/wait-for-expect/issues/4 and
-- https://github.com/TheBrainFamily/wait-for-expect/issues/12 for more info

-- ROBLOX deviation: globalObj is only used for setTimeout. We are importing
-- setTimeout from LuauPolyfill.
--[[
	local globalObj = (function()
		if typeof(window) == "undefined" then
			return global
		else
			return window
		end
	end)()
]]

-- Currently this fn only supports jest timers, but it could support other test runners in the future.
local function runWithRealTimers(callback: any)
	-- ROBLOX deviation: our setTimeout is from LuauPolyfill, which doesn't have _isMockFunction
	-- Should return false
	--[[
	local usingJestFakeTimers = (function()
		if Boolean.toJSBoolean((setTimeout :: any)._isMockFunction) then
			return typeof(jest) ~= "nil"
		else
			return (setTimeout :: any)._isMockFunction
		end
	end)()
	]]

	-- ROBLOX deviation: doesn't ever execute, usingJestFakeTimers = false
	--[[
	if Boolean.toJSBoolean(usingJestFakeTimers) then
		jest:useRealTimers()
	end
	]]

	local callbackReturnValue = callback()

	-- ROBLOX deviation: doesn't ever execute, usingJestFakeTimers = false
	--[[
	if Boolean.toJSBoolean(usingJestFakeTimers) then
		jest:useFakeTimers()
	end
	]]

	return callbackReturnValue
end

local function getSetTimeoutFn()
	return runWithRealTimers(function()
		return setTimeout
	end)
end
exports.getSetTimeoutFn = getSetTimeoutFn

return exports
