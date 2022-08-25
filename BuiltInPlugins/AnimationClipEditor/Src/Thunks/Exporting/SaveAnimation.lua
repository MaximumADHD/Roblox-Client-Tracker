--[[
	Saves the current animation under the current name,
	into the AnimSaves folder under the currently selected rig.
]]

local CollectionService = game:GetService("CollectionService")

local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)

local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetNotification = require(Plugin.Src.Actions.SetNotification)

return function(name, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local rootInstance = state.Status.RootInstance
		if not (animationData and rootInstance) then
			return
		end

		local newData = deepCopy(animationData)
		newData.Metadata.Name = name
		store:dispatch(SetAnimationData(newData))

		local animSaves = RigUtils.getAnimSavesFolder(rootInstance, true)
		local animationAsset
		local numKeyframes, numPoses, numEvents

		if AnimationData.isChannelAnimation(newData) then
			animationAsset, numKeyframes, numPoses, numEvents = RigUtils.toCurveAnimation(newData, rootInstance)
		else
			animationAsset, numKeyframes, numPoses, numEvents = RigUtils.toRigAnimation(newData, rootInstance)
		end

		animationAsset.Name = newData.Metadata.Name

		-- TODO: There probably is an issue if there are multiple instances called "name"
		-- For instance, if the user manually created some.
		if animSaves:FindFirstChild(name) then
			animSaves[name]:Destroy()
		end
		animationAsset.Parent = animSaves

		-- Tag the KeyframeSequence with the time so that loading can
		-- bring up the animation with the most recent timestamp
		local tags = CollectionService:GetTags(animationAsset)
		for _, tag in ipairs(tags) do
			CollectionService:RemoveTag(animationAsset, tag)
		end
		CollectionService:AddTag(animationAsset, tostring(os.time()))

		store:dispatch(SetIsDirty(false))
		store:dispatch(SetNotification("Saved", name))

		local animationType = if AnimationData.isChannelAnimation(newData)
			then Constants.ANIMATION_TYPE.CurveAnimation
			else Constants.ANIMATION_TYPE.KeyframeSequence

		analytics:report("onSaveAnimation", name, numKeyframes, numPoses, numEvents, animationType)
	end
end
