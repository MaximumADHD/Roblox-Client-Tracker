--[[
	Prompts the user to select a location to export, then
	exports the current animation to a Roblox asset id.
]]

local Selection = game:GetService("Selection")

local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local SaveAnimation = require(Plugin.Src.Thunks.Exporting.SaveAnimation)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagFacsAnimationExportAnalytics = require(Plugin.LuaFlags.GetFFlagFacsAnimationExportAnalytics)

return function(plugin, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local rootInstance = state.Status.RootInstance
		if not (animationData and rootInstance) then
			return
		end

		local animName = animationData.Metadata.Name
		store:dispatch(SaveAnimation(animName, analytics))
		local animSaves = RigUtils.getAnimSavesFolder(rootInstance)
		local exported = animSaves and animSaves:FindFirstChild(animName)
		if animSaves and exported then
			local selectionChanged
			selectionChanged = Selection.SelectionChanged:Connect(function(selected)
				selectionChanged:Disconnect()
				plugin:get():SaveSelectedToRoblox()
			end)

			Selection:Set({exported})

			local hasFacs = false
			local animationType

			if GetFFlagFacsAnimationExportAnalytics() then
				hasFacs = AnimationData.hasFacsData(animationData)
			end

			animationType = if AnimationData.isChannelAnimation(animationData)
				then Constants.ANIMATION_TYPE.CurveAnimation
				else Constants.ANIMATION_TYPE.KeyframeSequence

			analytics:report("onExportAnimation", hasFacs, animationType)
		end
	end
end
