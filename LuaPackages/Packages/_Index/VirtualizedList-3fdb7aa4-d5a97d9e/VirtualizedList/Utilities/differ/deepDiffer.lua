-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Utilities/differ/deepDiffer.js
--[[
	Copyright (c) Meta Platforms, Inc. and affiliates.
 
  This source code is licensed under the MIT license found in the
  LICENSE file in the root directory of this source tree.
]]
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean

local logListeners

type LogListeners = {
	onDifferentFunctionsIgnored: (nameOne: string?, nameTwo: string?) -> (),
}

type Options = { unsafelyIgnoreFunctions: boolean? }

local function unstable_setLogListeners(listeners: LogListeners?)
	logListeners = listeners
end

--[[
 * @returns {bool} true if different, false if equal
 ]]
local function deepDiffer(one: any, two: any, maxDepthOrOptions_: (Options | number)?, maybeOptions: Options?): boolean
	local maxDepthOrOptions = if maxDepthOrOptions_ ~= nil then maxDepthOrOptions_ else -1

	local options = if typeof(maxDepthOrOptions) == "number" then maybeOptions else maxDepthOrOptions

	local maxDepth = if typeof(maxDepthOrOptions) == "number" then maxDepthOrOptions else -1

	if maxDepth == 0 then
		return true
	end

	if one == two then
		-- Short circuit on identical object references instead of traversing them.
		return false
	end
	if typeof(one) == "function" and typeof(two) == "function" then
		-- We consider all functions equal unless explicitly configured otherwise
		-- ROBLOX deviation: Added this to handle checking for optional members in options
		local optionsContainsUnsafelyIgnoreFunctions = if options == nil
			then false
			else options["unsafelyIgnoreFunctions"] ~= nil

		local unsafelyIgnoreFunctions = if options ~= nil and optionsContainsUnsafelyIgnoreFunctions
			then options.unsafelyIgnoreFunctions
			else nil

		if unsafelyIgnoreFunctions == nil then
			if
				logListeners ~= nil
				and Boolean.toJSBoolean(logListeners.onDifferentFunctionsIgnored)
				and (not Boolean.toJSBoolean(options) or not optionsContainsUnsafelyIgnoreFunctions)
			then
				logListeners.onDifferentFunctionsIgnored(debug.info(one, "n"), debug.info(two, "n"))
			end
			unsafelyIgnoreFunctions = true
		end
		return not unsafelyIgnoreFunctions
	end
	if typeof(one) ~= "table" or one == nil then
		-- Primitives can be directly compared
		return one ~= two
	end
	if typeof(two) ~= "table" or two == nil then
		-- We know they are different because the previous case would have triggered
		-- otherwise.
		return true
	end

	if Array.isArray(one) ~= Array.isArray(two) then
		return true
	end
	if Array.isArray(one) then
		-- We know two is also an array because the constructors are equal
		if #two ~= #one then
			return true
		end

		for ii = 1, #one do
			if deepDiffer(one[ii], two[ii], maxDepth - 1, options) then
				return true
			end
		end
	else
		for key in pairs(one) do
			if deepDiffer(one[key], two[key], maxDepth - 1, options) then
				return true
			end
		end

		for key in pairs(two) do
			if one[key] == nil and two[key] ~= nil then
				return true
			end
		end
	end
	return false
end

local exports = setmetatable({
	unstable_setLogListeners = unstable_setLogListeners,
}, {
	__call = function(_self, one: any, two: any, maxDepthOrOptions_: (Options | number)?, maybeOptions: Options?): boolean
		return deepDiffer(one, two, maxDepthOrOptions_, maybeOptions)
	end,
})

return exports
