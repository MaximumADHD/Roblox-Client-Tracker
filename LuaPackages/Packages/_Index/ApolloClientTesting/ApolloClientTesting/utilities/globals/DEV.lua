-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/globals/DEV.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local global = require(script.Parent.Parent.common.global).default

--[[
// To keep string-based find/replace minifiers from messing with __DEV__ inside
// string literals or properties like global.__DEV__, we construct the "__DEV__"
// string in a roundabout way that won't be altered by find/replace strategies.
]]
local __ = "__"
local GLOBAL_KEY = __ .. "DEV" .. __

local function getDEV(): boolean
	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		local _ok, result = xpcall(function()
			return Boolean.toJSBoolean(_G.__DEV__)
		end, function()
			-- ROBLOX deviation: Roblox doesn't have a concept of process.env. Because we already checked _G.__DEV, defaults to true
			--[[
 Object.defineProperty(global, GLOBAL_KEY, {
	 // In a buildless browser environment, maybe(() => process.env.NODE_ENV)
	// evaluates as undefined, so __DEV__ becomes true by default, but can be
	// initialized to false instead by a script/module that runs earlier.
      value: maybe(() => process.env.NODE_ENV) !== "production",
      enumerable: false,
      configurable: true,
      writable: true,
    });
]]
			global[GLOBAL_KEY] = true
			--[[
	// Using computed property access rather than global.__DEV__ here prevents
	// string-based find/replace strategies from munging this to global.false:
	]]
			return global[GLOBAL_KEY]
		end)
		return result
	end
end
exports.default = getDEV()
return exports
