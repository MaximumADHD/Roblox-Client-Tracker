--[[
	Selects a single keyframe.
	If multiSelect is true, this keyframe will be added to the selection.
	Otherwise, it will replace the current selection.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

return function(instanceName, trackName, tck, multiSelect)
	return function(store)
		local state = store:getState()
		local status = state.Status
		if not status then
			return
		end

		local selectedKeyframes = status.SelectedKeyframes
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		if not selectedKeyframes then
			selectedKeyframes = {}
		end

		local instance = animationData.Instances[instanceName]
		if instance == nil then
			return
		end

		local tracks = instance.Tracks
		if tracks == nil then
			return
		end

		local track = tracks[trackName]
		if track == nil then
			return
		end

		if track.Data and track.Data[tck] then
			if not multiSelect then
				store:dispatch(SetSelectedKeyframes({
					[instanceName] = {
						[trackName] = {
							[tck] = true,
						},
					},
				}))
			else
				local newInstance = selectedKeyframes[instanceName] ~= nil and selectedKeyframes[instanceName] or {}
				local newTrack = newInstance[trackName] ~= nil and newInstance[trackName] or {}

				if not newTrack[tck] then
					local newKeyframes = Cryo.Dictionary.join(newTrack, {
						[tck] = true,
					})

					store:dispatch(SetSelectedKeyframes(Cryo.Dictionary.join(selectedKeyframes, {
						[instanceName] = Cryo.Dictionary.join(newInstance, {
							[trackName] = newKeyframes,
						}),
					})))
				end
			end
		end
	end
end
