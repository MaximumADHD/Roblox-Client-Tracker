--[[
	Aligns the selected objects using the current alignment settings.
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Selection = game:GetService("Selection")

local Plugin = script.Parent.Parent.Parent

local getEngineFeatureActiveInstanceHighlight = require(Plugin.Src.Flags.getEngineFeatureActiveInstanceHighlight)

local SetAlignEnabled = require(Plugin.Src.Actions.SetAlignEnabled)
local RelativeTo = require(Plugin.Src.Utility.RelativeTo)
local alignObjects = require(Plugin.Src.Utility.alignObjects)

return function(analytics)
	return function(store)
		local state = store:getState()

		local objects = state.alignableObjects
		local mode = state.alignmentMode
		local space = state.alignmentSpace
		local axes = state.enabledAxes
		local relativeTo = state.relativeTo

		local target
		if getEngineFeatureActiveInstanceHighlight() and relativeTo == RelativeTo.Active then
			target = Selection.ActiveInstance
		end
		alignObjects(objects, space, axes, mode, target)

		analytics:report("useAlignTool", mode, axes, relativeTo, objects)

		ChangeHistoryService:SetWaypoint("Align Objects")
		store:dispatch(SetAlignEnabled(false))
	end
end
