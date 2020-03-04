--[[
	Resets the Animation Editor state and loads a new animation.
]]

local Plugin = script.Parent.Parent.Parent
local isEmpty = require(Plugin.Src.Util.isEmpty)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetFuture = require(Plugin.Src.Actions.SetFuture)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetClipboard = require(Plugin.Src.Actions.SetClipboard)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetNotification = require(Plugin.Src.Actions.SetNotification)
local UpdateEditingLength = require(Plugin.Src.Thunks.UpdateEditingLength)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)

local allowPasteKeysBetweenAnimations = require(Plugin.LuaFlags.GetFFlagAllowPasteKeysBetweenAnimations)

return function(animationData)
	return function(store)
		-- Remove potential change history waypoints
		store:dispatch(SetPast({}))
		store:dispatch(SetFuture({}))

		-- Reset all hanging data
		store:dispatch(SetSelectedKeyframes({}))
		if not allowPasteKeysBetweenAnimations() then
			store:dispatch(SetClipboard({}))
		end
		store:dispatch(SortAndSetTracks({}))

		for instanceName, instance in pairs(animationData.Instances) do
			for trackName, _ in pairs(instance.Tracks) do
				store:dispatch(AddTrack(instanceName, trackName))
			end
		end

		store:dispatch(UpdateAnimationData(animationData))
		store:dispatch(StepAnimation(0))
		store:dispatch(SetIsDirty(true))
		store:dispatch(UpdateEditingLength(animationData.Metadata.EndFrame))
		store:dispatch(SetShowEvents(not isEmpty(animationData.Events.Keyframes)))

		local isQuantized = AnimationData.isQuantized(animationData)
		store:dispatch(SetNotification("QuantizeWarning", not isQuantized))
	end
end