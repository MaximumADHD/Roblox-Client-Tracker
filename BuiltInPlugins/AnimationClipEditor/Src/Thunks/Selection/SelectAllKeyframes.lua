--[[
	Selects all keyframes across all tracks.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Packages.Cryo)

local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

return function()
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local selectedKeyframes = {}

		for instanceName, instance in pairs(animationData.Instances) do
			selectedKeyframes[instanceName] = {}
			for trackName, track in pairs(instance.Tracks) do
				selectedKeyframes[instanceName][trackName] = {}

				if GetFFlagChannelAnimations() then
					-- Recursively traverse the components of the dataTrack. On the way back, populate the
					-- parent track's selection with the union of the track components' selection
					local function traverse(selectionTrack, dataTrack)
						local trackType = dataTrack.Type

						selectionTrack.Selection = {}
						if Constants.COMPONENT_TRACK_TYPES[trackType] then
							selectionTrack.Components = {}
							for _, componentName in pairs(Constants.COMPONENT_TRACK_TYPES[dataTrack.Type]._Order) do
								selectionTrack.Components[componentName] = {}
								selectionTrack.Selection = Cryo.Dictionary.join(selectionTrack.Selection,
									traverse(selectionTrack.Components[componentName], dataTrack.Components[componentName]))
							end
						end

						if dataTrack.Data then
							for tick, _ in pairs(dataTrack.Data) do
								selectionTrack.Selection[tick] = true
							end
						end

						return selectionTrack.Selection
					end

					local selectionTrack = selectedKeyframes[instanceName][trackName]
					traverse(selectionTrack, track)
				else
					for _, tick in ipairs(track.Keyframes) do
						selectedKeyframes[instanceName][trackName][tick] = true
					end
				end
			end
		end

		store:dispatch(SetSelectedKeyframes(selectedKeyframes))
	end
end