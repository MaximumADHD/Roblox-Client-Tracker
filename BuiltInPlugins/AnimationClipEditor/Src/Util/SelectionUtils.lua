--!strict
--[[
	Utility functions for the selection data structure introduced with channel animations.

	Selection is of the form:
	{
		Root: {
			Head: {
				Selection = { 1: true, 15: true, 2400: true },
				Components = {
					Position: {
						Selection = {...},
						Components = {...}
					}
				}
			}
		}
	}
]]

local plugin = script.Parent.Parent.Parent
local Cryo = require(plugin.Packages.Cryo)
local PathUtils = require(plugin.Src.Util.PathUtils)

export type SelectedTicks = {[number]: boolean}
export type SelectedComponents = {[string]: SelectedTrack}
export type SelectedTrack = {
	Selection: SelectedTicks?,
	Components: SelectedComponents?,
}
export type Selection = {[string]: SelectedComponents}

local SelectionUtils = {}

-- This traverses the selection data structure and the dataTrack (from animationData)
-- in parallel, calling the provided functions during each step. dataTrack is optional.

function SelectionUtils.traverse(selectionTrack: SelectedTrack, dataTrack: any,
		preOrderFunc: ((SelectedTrack, any, PathUtils.Path) -> ())?,
		postOrderFunc: ((SelectedTrack, any, PathUtils.Path) -> ())?,
		relPath: PathUtils.Path?): ()

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