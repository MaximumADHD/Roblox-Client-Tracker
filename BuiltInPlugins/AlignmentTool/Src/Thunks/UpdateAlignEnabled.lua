--[[
	Updates the align enabled state. Align is enabled when one or more objects
	are selected and there is at least one axis to align on.
]]

local Plugin = script.Parent.Parent.Parent

local SetAlignEnabled = require(Plugin.Src.Actions.SetAlignEnabled)

local function hasEnabledAxis(axes)
	return axes.WorldX or axes.WorldY or axes.WorldZ
end

return function()
	return function(store)
		local state = store:getState()

		local objects = state.alignableObjects
		local axes = state.enabledAxes

		local alignEnabled = #objects > 0 and hasEnabledAxis(axes)

		store:dispatch(SetAlignEnabled(alignEnabled))
	end
end
