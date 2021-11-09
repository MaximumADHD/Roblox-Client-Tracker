--[[
	Utility functions for the selection data structure introduced with channel animations.
]]

local plugin = script.Parent.Parent.Parent
local Cryo = require(plugin.Packages.Cryo)

local SelectionUtils = {}

-- This traverses the selection data structure and the dataTrack (from animationData)
-- in parallel, calling the provided functions during each step. dataTrack is optional.

function SelectionUtils.traverse(selectionTrack, dataTrack, preOrderFunc, postOrderFunc, relPath)
	if preOrderFunc then
		preOrderFunc(selectionTrack, dataTrack, relPath or {})
	end

	if selectionTrack.Components then
		for componentName, selectionComponent in pairs(selectionTrack.Components) do
			local componentPath = Cryo.List.join(relPath or {}, {componentName})
			SelectionUtils.traverse(selectionComponent,
				dataTrack and dataTrack.Components[componentName] or nil,
				preOrderFunc, postOrderFunc, componentPath)
		end
	end

	if postOrderFunc then
		postOrderFunc(selectionTrack, dataTrack, relPath or {})
	end
end

return SelectionUtils