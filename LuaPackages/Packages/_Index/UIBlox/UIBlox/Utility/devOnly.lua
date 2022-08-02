--[[
	A wrapper for functions that should only be invoked in dev mode.

	Dev mode can be turned on by setting UIBloxConfig.devMode to true.

	Example usage:

		local validateProps = devOnly(t.strictInterface({
			screenSize = t.Vector2,
			position = t.optional(t.UDim2),
		}))

		function MyComponent(props)
			assert(validateProps(props))
			...
		end

	@param devModeFunction The function that will be invoked in dev mode only
	@param defaultReturnValue The value to return from the stub function used when dev mode is off.
		If no defaultReturnValue is given, `true` will be returned.

	@return	A function that will be either:

		1. [devMode == false] a no-op stub that returns the
		   specified default value (or `true` if no default is given)

		2. [devMode == true] the original function being wrapped
]]
local UIBlox = script.Parent.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local function devOnly(devModeFunction, defaultReturnValue)
	if UIBloxConfig.devMode then
		return devModeFunction
	else
		if defaultReturnValue == nil then
			-- Allow the return value to be passed directly to assert by default
			defaultReturnValue = true
		end

		return function()
			return defaultReturnValue
		end
	end
end

return devOnly
