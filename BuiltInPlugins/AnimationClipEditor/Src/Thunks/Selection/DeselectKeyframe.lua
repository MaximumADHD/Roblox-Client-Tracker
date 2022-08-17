--!strict
--[[
	Removes a single keyframe from the current selection.

	If there are no more selected keyframes at the track, then the entire
	track is also removed from the selection. If there are no selected
	tracks for an instance, that instance is removed from the selection.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

local function findTrack(selectedInstance: SelectionUtils.SelectedComponents, path: PathUtils.Path): (SelectionUtils.SelectedTrack?)
	local tracks = selectedInstance
	local currentTrack

	for index, pathPart in ipairs(path) do
		currentTrack = tracks[pathPart]

		if not currentTrack then
			return nil
		elseif index < #path then
			if currentTrack.Components then
				tracks = currentTrack.Components
			else
				return nil
			end
		end
	end

	return currentTrack
end

local function isTrackEmpty(track: SelectionUtils.SelectedTrack): (boolean)
	return (track.Components == nil or isEmpty(track.Components)) and
		(track.Selection == nil or isEmpty(track.Selection))
end

return function(instanceName: string, path: PathUtils.Path, tck: number): ((any) -> ())
	return function(store: any): ()
		local state = store:getState()
		local animationData = state.AnimationData

		-- Before we start deepcopying selection data, we need to make sure that
		-- we are have something to deselect
		local status: {SelectedKeyframes: SelectionUtils.Selection?} = state.Status or {}
		local selectedKeyframes: SelectionUtils.Selection = status.SelectedKeyframes or {}
		local selectedInstance = selectedKeyframes[instanceName] or {}

		local selectedTrack = findTrack(selectedInstance, path)

		-- There is no tick here that we can deselect. Bail out.
		if not (selectedTrack and (not selectedTrack.Selection or selectedTrack.Selection[tck])) then
			return
		end

		-- Make shallow copies of the selectedKeyframe and Instance levels. The track level will be deepCopied
		-- This is a tradeoff between complexity and surgically deepcopying whatever we need.
		-- We also need to find the "new" selectedTrack in the new hierarchy
		local newSelectedKeyframes = Cryo.Dictionary.join(selectedKeyframes, {})
		newSelectedKeyframes[instanceName] = Cryo.Dictionary.join(newSelectedKeyframes[instanceName], {})
		newSelectedKeyframes[instanceName][path[1]] = deepCopy(newSelectedKeyframes[instanceName][path[1]])

		-- Traverse the selectedTrack components to delete the tick in all components
		selectedTrack = findTrack(newSelectedKeyframes[instanceName], path)
		if selectedTrack then
			SelectionUtils.traverse(selectedTrack, nil, function(track: SelectionUtils.SelectedTrack): ()
				if track.Selection then
					track.Selection[tck] = nil
					if isEmpty(track.Selection) then
						track.Selection = nil
					end
				end
			end)
		end

		-- Traverse the entire track hierarchy to deselect composite tracks if at least one of their
		-- components is deselected
		local topTrack = newSelectedKeyframes[instanceName][path[1]]

		local topDataTrack = animationData.Instances[instanceName].Tracks[path[1]]
		SelectionUtils.traverse(topTrack, topDataTrack, function(track: SelectionUtils.SelectedTrack, dataTrack: any, relPath): ()
			-- If the datatrack has a keyframe for the tick, but the selectedTrack has no selection, or at least not for that tick
			if dataTrack and dataTrack.Data and dataTrack.Data[tck] and (not track.Selection or not track.Selection[tck]) then
				local currentTrack = topTrack
				for _, pathPart in ipairs(relPath) do
					if currentTrack then
						if currentTrack.Selection then
							currentTrack.Selection[tck] = nil
						end
						currentTrack = currentTrack.Components[pathPart]
					end
				end
			end
		end, function(track: SelectionUtils.SelectedTrack): ()
			if track.Selection and isEmpty(track.Selection) then
				track.Selection = nil
			end
		end)

		-- Traverse it again to prune components that have no selection or components of their own.
		-- Prune the top level track.
		SelectionUtils.traverse(topTrack, nil, nil, function(track: SelectionUtils.SelectedTrack): ()
			if track.Components then
				for componentName, component in pairs(track.Components or {}) do
					if isTrackEmpty(component) then
						track.Components[componentName] = nil
					end
				end
			end
		end)

		if isTrackEmpty(topTrack) then
			newSelectedKeyframes[instanceName][path[1]] = nil
			if isEmpty(newSelectedKeyframes[instanceName]) then
				newSelectedKeyframes[instanceName] = nil
			end
		end

		store:dispatch(SetSelectedKeyframes(newSelectedKeyframes))
	end
end
