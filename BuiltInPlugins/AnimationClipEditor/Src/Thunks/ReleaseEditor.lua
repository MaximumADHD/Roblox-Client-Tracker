--[[
	When the plugin is deactivated, clear all values being controlled
	by the AnimationClip editor.
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local SetActive = require(Plugin.Src.Actions.SetActive)
local SetPlayState = require(Plugin.Src.Actions.SetPlayState)
local SaveKeyframeSequence = require(Plugin.Src.Thunks.Exporting.SaveKeyframeSequence)
local SaveAnimation = require(Plugin.Src.Thunks.Exporting.SaveAnimation)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

return function(analytics)
	return function(store)
		local state = store:getState()
		store:dispatch(SetActive(false))
		store:dispatch(SetPlayState(Constants.PLAY_STATE.Pause))
		local animationData = state.AnimationData
		local targetInstance = state.Status.RootInstance

		ChangeHistoryService:SetEnabled(true)

		if not animationData or not targetInstance then
			return
		end

		local instances = animationData.Instances
		if instances then
			for _, instance in pairs(instances) do
				if instance.Type == Constants.INSTANCE_TYPES.Rig then
					RigUtils.clearPose(targetInstance)
				end
			end
		end

		-- Autosave if there was an existing animation
		if animationData.Metadata and animationData.Instances and animationData.Instances.Root
			and animationData.Instances.Root.Type == Constants.INSTANCE_TYPES.Rig
			and state.Status.IsDirty then
			if GetFFlagChannelAnimations() then
				store:dispatch(SaveAnimation(Constants.DEFAULT_AUTOSAVE_NAME, analytics))
			else
				store:dispatch(SaveKeyframeSequence(Constants.DEFAULT_AUTOSAVE_NAME, analytics))
			end
		end

		RigUtils.clearMicrobones()
	end
end