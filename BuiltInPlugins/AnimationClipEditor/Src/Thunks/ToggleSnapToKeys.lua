--[[
	Toggles whether or not the scrubber should attempt to snap
	to the nearest keyframe if it is close enough.
]]

local Plugin = script.Parent.Parent.Parent
local SetSnapToKeys = require(Plugin.Src.Actions.SetSnapToKeys)

return function()
	return function(store)
		local snapToKeys = store:getState().Status.SnapToKeys
		store:dispatch(SetSnapToKeys(not snapToKeys))
	end
end