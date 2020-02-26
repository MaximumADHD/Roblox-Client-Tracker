local Plugin = script.Parent.Parent.Parent
local Signal = require(Plugin.Src.Util.Signal)

--[[
Wrapper to encapsulate a value with get/set methods and a changed signal
]]
return function(initialValue)
	local value = initialValue
	local changed = Signal.new()

	return {
		get = function()
			return value
		end,
		set = function(newValue)
			value = newValue
			changed:fire()
		end,
		changed = changed,
	}
end
