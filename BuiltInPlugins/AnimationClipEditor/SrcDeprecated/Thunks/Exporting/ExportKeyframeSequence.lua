--[[
	Prompts the user to select a location to export, then
	exports the current animation to a Roblox asset id.
]]

local Selection = game:GetService("Selection")

local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.SrcDeprecated.Util.RigUtils)
local SaveKeyframeSequence = require(Plugin.SrcDeprecated.Thunks.Exporting.SaveKeyframeSequence)

return function(plugin)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local rootInstance = state.Status.RootInstance
		if not (animationData and rootInstance) then
			return
		end

		local animName = animationData.Metadata.Name
		store:dispatch(SaveKeyframeSequence(animName))
		local animSaves = RigUtils.getAnimSavesFolder(rootInstance)
		local exported = animSaves and animSaves:FindFirstChild(animName)
		if animSaves and exported then
			local selectionChanged
			selectionChanged = Selection.SelectionChanged:Connect(function(selected)
				selectionChanged:Disconnect()
				plugin:SaveSelectedToRoblox()
			end)

			Selection:Set({exported})

			state.Analytics:onExportAnimation()
		end
	end
end