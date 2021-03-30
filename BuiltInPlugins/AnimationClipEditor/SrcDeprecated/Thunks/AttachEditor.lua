--[[
	When the plugin is activated, return everything that is controlled
	by the AnimationClip editor to its pose.
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local StepAnimation = require(Plugin.SrcDeprecated.Thunks.Playback.StepAnimation)
local SetRootInstance = require(Plugin.SrcDeprecated.Actions.SetRootInstance)
local SetAnimationData = require(Plugin.SrcDeprecated.Actions.SetAnimationData)
local SetSelectedKeyframes = require(Plugin.SrcDeprecated.Actions.SetSelectedKeyframes)
local AddTrack = require(Plugin.SrcDeprecated.Thunks.AddTrack)
local SortAndSetTracks = require(Plugin.SrcDeprecated.Thunks.SortAndSetTracks)
local SetActive = require(Plugin.SrcDeprecated.Actions.SetActive)
local RigUtils = require(Plugin.SrcDeprecated.Util.RigUtils)

return function()
	return function(store)
		local state = store:getState()
		store:dispatch(SetActive(true))
		local rootInstance = state.Status.RootInstance
		local animationData = state.AnimationData

		local playhead = state.Status.Playhead
		local visualizeBones = state.Status.VisualizeBones

		ChangeHistoryService:SetEnabled(false)
		StudioService:CopyToClipboard("")

		-- If the old animation target is gone, reset to the start screen.
		-- User deleted it or moved it into storage when the plugin was closed.
		if (rootInstance == nil or rootInstance:FindFirstAncestorOfClass("Workspace") == nil)
			or (rootInstance and RigUtils.rigHasErrors(rootInstance)) then
			store:dispatch(SetRootInstance(Cryo.None))
			store:dispatch(SortAndSetTracks({}))
			store:dispatch(SetSelectedKeyframes({}))
			store:dispatch(SetAnimationData(nil))
			return
		end

		RigUtils.focusCamera(rootInstance)

		-- Make sure the tracks are synchronized in case the user renamed a part.
		local animationData = state.AnimationData
		if animationData then
			store:dispatch(SortAndSetTracks({}))
			for instanceName, instance in pairs(animationData.Instances) do
				for trackName, _ in pairs(instance.Tracks) do
					store:dispatch(AddTrack(instanceName, trackName))
				end
			end
		end

		RigUtils.clearMicrobones()
		if rootInstance and not animationData then
			RigUtils.updateMicrobones(rootInstance, visualizeBones)
		end
		store:dispatch(StepAnimation(playhead))
	end
end