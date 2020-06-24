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

return function()
	return function(store)
		local state = store:getState()

		local objects = state.alignableObjects
		local mode = state.alignmentMode
		local axes = state.enabledAxes


		if getEngineFeatureActiveInstanceHighlight() then
			local relativeTo = state.relativeTo
			local target = relativeTo == RelativeTo.Active and Selection.ActiveInstance or nil

			alignObjects(objects, axes, mode, target)
		else
			alignObjects(objects, axes, mode)
		end

		ChangeHistoryService:SetWaypoint("Align Objects")
		store:dispatch(SetAlignEnabled(false))
	end
end
