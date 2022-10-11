--[[
	Prompts the user to select a FBX Animation to import, then
	imports to a KeyframeSequence from the FBX animation.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)

local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)

local GetFFlagAutomaticKeyframeReduction = require(Plugin.LuaFlags.GetFFlagAutomaticKeyframeReduction)

return function(plugin, animationClipDropdown, analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local function userChooseModelThenImportCB()
			animationClipDropdown:showImportAnimModelChoicePrompt()
		end

		local success, result = pcall(function()
			return game:GetService("AvatarImportService")
				:ImportFBXAnimationUserMayChooseModel(rootInstance, userChooseModelThenImportCB)
		end)

		if success then
			local newData = RigUtils.fromRigAnimation(result)
			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME

			if GetFFlagAutomaticKeyframeReduction() then
				AnimationData.clearTrackSequences(newData)
			end

			store:dispatch(LoadAnimationData(newData, analytics))
			store:dispatch(SetIsDirty(false))

			if result then
				result:Destroy()
			end

			analytics:report("onImportFbxAnimation")
		else
			warn(result)
		end
	end
end
