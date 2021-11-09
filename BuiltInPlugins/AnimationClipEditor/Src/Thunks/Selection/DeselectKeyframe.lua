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

local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

if GetFFlagChannelAnimations() then
	-- Recursively traverse the selectedInstance to find the track corresponding to the path
	local function findTrack(selectedInstance, path)
		local track = selectedInstance
		for index, pathPart in ipairs(path) do
			track = track[pathPart]
			if not track then
				return nil
			elseif index < #path then
				track = track.Components
			end
		end

		return track
	end

	local function isTrackEmpty(track)
		return (track.Components == nil or isEmpty(track.Components)) and
			(track.Selection == nil or isEmpty(track.Selection))
	end

	return function(instanceName, path, tick)
		return function(store)
			local state = store:getState()

			-- Before we start deepcopying selection data, we need to make sure that
			-- we are have something to deselect
			local status = state.Status or {}
			local selectedKeyframes = status.SelectedKeyframes or {}
			local selectedInstance = selectedKeyframes[instanceName] ~= nil and selectedKeyframes[instanceName] or {}

			local selectedTrack = findTrack(selectedInstance, path)

			-- There is no tick here that we can deselect. Bail out.
			if not (selectedTrack and selectedTrack.Selection[tick]) then
				return
			end

			-- Make shallow copies of the selectedKeyframe and Instance levels. The track level will be deepCopied
			-- This is a tradeoff between complexity and surgically deepcopying whatever we need.
			-- We also need to find the "new" selectedTrack in the new hierarchy
			local newSelectedKeyframes = Cryo.Dictionary.join(selectedKeyframes, {})
			newSelectedKeyframes[instanceName] = Cryo.Dictionary.join(newSelectedKeyframes[instanceName], {})
			newSelectedKeyframes[instanceName][path[1]] = deepCopy(newSelectedKeyframes[instanceName][path[1]])
			selectedTrack = findTrack(newSelectedKeyframes[instanceName], path)

			-- Traverse the selectedTrack components to delete the tick in all components
			SelectionUtils.traverse(selectedTrack, nil, function(selectedTrack)
				if not selectedTrack.Selection then
					return
				end
				selectedTrack.Selection[tick] = nil
				if isEmpty(selectedTrack.Selection) then
					selectedTrack.Selection = nil
				end
			end)

			-- Traverse the entire track hierarchy post-order to deselect composite tracks if at least one of their
			-- components is deselected
			local topTrack = newSelectedKeyframes[instanceName][path[1]]
			SelectionUtils.traverse(topTrack, nil, nil, function(track)
				local hasSelectedComponent = true
				if track.Components then
					for _, component in pairs(track.Components) do
						if component.Selection then
							hasSelectedComponent = component.Selection and component.Selection[tick] and hasSelectedComponent
						end
					end
				end

				if not hasSelectedComponent then
					track.Selection[tick] = nil
					if isEmpty(track.Selection) then
						track.Selection = nil
					end
				end
			end)

			-- Traverse it again to prune components that have no selection or components of their own.
			-- Prune the top level track.
			SelectionUtils.traverse(topTrack, nil, nil, function(track)
				for componentName, component in pairs(track.Components or {}) do
					if isTrackEmpty(component) then
						track.Components[componentName] = nil
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
else
	return function(instanceName, trackName, tick)
		return function(store)
			local state = store:getState()
			local status = state.Status
			if not status then
				return
			end

			local selectedKeyframes = status.SelectedKeyframes
			if not selectedKeyframes then
				selectedKeyframes = {}
			end

			local newInstance = selectedKeyframes[instanceName] ~= nil and selectedKeyframes[instanceName] or {}
			local newTrack = newInstance[trackName] ~= nil and newInstance[trackName] or {}

			if newTrack[tick] then
				local newKeyframes = Cryo.Dictionary.join(newTrack, {
					[tick] = Cryo.None,
				})

				if isEmpty(newKeyframes) then
					newInstance = Cryo.Dictionary.join(newInstance, {
						[trackName] = Cryo.None,
					})
				else
					newInstance = Cryo.Dictionary.join(newInstance, {
						[trackName] = newKeyframes,
					})
				end

				if isEmpty(newInstance) then
					selectedKeyframes = Cryo.Dictionary.join(selectedKeyframes, {
						[instanceName] = Cryo.None,
					})
				else
					selectedKeyframes = Cryo.Dictionary.join(selectedKeyframes, {
						[instanceName] = newInstance,
					})
				end

				store:dispatch(SetSelectedKeyframes(selectedKeyframes))
			end
		end
	end
end