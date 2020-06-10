--[[
	Aligns the selected objects using the current alignment settings.
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Plugin = script.Parent.Parent.Parent

local SetAlignEnabled = require(Plugin.Src.Actions.SetAlignEnabled)
local alignObjects = require(Plugin.Src.Utility.alignObjects)

return function()
	return function(store)
		local state = store:getState()

		local objects = state.alignableObjects
		local mode = state.alignmentMode
		local axes = state.enabledAxes

		alignObjects(objects, axes, mode)
		ChangeHistoryService:SetWaypoint("Align Objects")
		store:dispatch(SetAlignEnabled(false))
	end
end
