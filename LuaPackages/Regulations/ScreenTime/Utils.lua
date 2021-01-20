--[[
	Provides utility methods for ScreenTime feature.
]]

local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.ArgCheck)
local Logging = require(CorePackages.Logging)

local TAG = "Utils"
-- This global key will be accessed by native code
local GLOBAL_KEY_LOCKED_OUT = "ScreenTime.lockedOut"
-- This string will be checked against in native code (Java, etc.)
local TRUE_VALUE = "true"

local Utils = {
	globalGetter = nil,
	globalSetter = nil,
}

--[[
	Create a new Utils object.

	@param dependencies injected dependencies to get and set global key values.
		The value should be accessible from native code.
		members & interfaces:
			globalGetter(string key) -> string
			globalSetter(string key, string value)
]]
function Utils:new(dependencies)
	ArgCheck.isType(dependencies.globalGetter, "function", "globalGetter")
	ArgCheck.isType(dependencies.globalSetter, "function", "globalSetter")
	local obj = {
		globalGetter = dependencies.globalGetter,
		globalSetter = dependencies.globalSetter,
	}
	setmetatable(obj, self)
	self.__index = self
	return obj
end

--[[
	Get the flag whether current user is locked out.
]]
function Utils:isLockedOut()
	ArgCheck.isType(self.globalGetter, "function", "globalGetter")
	return (self.globalGetter(GLOBAL_KEY_LOCKED_OUT) == TRUE_VALUE)
end

--[[
	Set the flag that current user is locked out.
	It will be reset after successful MSDK login.
]]
function Utils:setLockedOut()
	Logging.warn(TAG .. " setLockedOut")
	ArgCheck.isType(self.globalSetter, "function", "globalSetter")
	self.globalSetter(GLOBAL_KEY_LOCKED_OUT, TRUE_VALUE)
end

return Utils
