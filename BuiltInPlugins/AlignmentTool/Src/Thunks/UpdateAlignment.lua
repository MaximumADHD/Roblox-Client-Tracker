--[[
	Aligns the selected objects using the current alignment settings.
]]
local FFlagAlignToolImprovedAnalytics = game:GetFastFlag("AlignToolImprovedAnalytics")

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Selection = game:GetService("Selection")

local Plugin = script.Parent.Parent.Parent

local SetAlignEnabled = require(Plugin.Src.Actions.SetAlignEnabled)
local RelativeTo = require(Plugin.Src.Utility.RelativeTo)
local alignObjects = require(Plugin.Src.Utility.alignObjects)

local Types = require(Plugin.Src.Types)

return function(analytics)
	return function(store)
		local state = store:getState()

		local objects = state.alignableObjects
		local mode = state.alignmentMode
		local space = state.alignmentSpace
		local axes = state.enabledAxes
		local relativeTo = state.relativeTo

		local target
		if relativeTo == RelativeTo.Active then
			target = Selection.ActiveInstance
		end
		alignObjects(objects, space, axes, mode, target)

		if FFlagAlignToolImprovedAnalytics then
			local alignSettings: Types.AlignSettings = {
				Mode = mode,
				Axes = axes,
				CoordinateSpace = space,
				RelativeTo = relativeTo,
			}
			analytics:report("useAlignTool", objects, alignSettings)
		else
			analytics:report("DEPRECATED_useAlignTool", mode, axes, relativeTo, objects)
		end

		ChangeHistoryService:SetWaypoint("Align Objects")
		store:dispatch(SetAlignEnabled(false))
	end
end
