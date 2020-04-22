local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and require(Framework.Util) or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or require(Plugin.Src.Util.Signal)

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
			changed:Fire()
		end,
		changed = changed,
	}
end
