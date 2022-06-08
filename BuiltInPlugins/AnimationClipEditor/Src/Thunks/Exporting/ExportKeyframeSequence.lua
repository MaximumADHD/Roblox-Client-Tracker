--[[
	Prompts the user to select a location to export, then
	exports the current animation to a Roblox asset id.
]]

-- TODO: Remove when GetFFlagChannelAnimations() is ON
local Selection = game:GetService("Selection")

local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local SaveKeyframeSequence = require(Plugin.Src.Thunks.Exporting.SaveKeyframeSequence)
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
		store:dispatch(SaveKeyframeSequence(animName, analytics))
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
			if GetFFlagFacsAnimationExportAnalytics() then
				hasFacs = AnimationData.hasFacsData(animationData)
			end
			analytics:report("onExportAnimation", hasFacs, Constants.ANIMATION_TYPE.KeyframeSequence)
		end
	end
end
