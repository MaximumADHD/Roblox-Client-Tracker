--[[
	Prompts the user to select an Animation asset to upload, then
	imports the KeyframeSequence from the Roblox asset id.
]]

game:DefineFastFlag("UseGetKeyframeSequenceIgnoreCache", false)
local KeyframeSequenceProvider = game:GetService("KeyframeSequenceProvider")

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)

local SetNotification = require(Plugin.Src.Actions.SetNotification)

local UseCustomFPS = require(Plugin.LuaFlags.GetFFlagAnimEditorUseCustomFPS)
local GetFFlagAddImportFailureToast = require(Plugin.LuaFlags.GetFFlagAddImportFailureToast)

return function(plugin)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local id = plugin:PromptForExistingAssetId("Animation")
		if id and tonumber(id) > 0 then
			local anim
			if GetFFlagAddImportFailureToast() then
				local status = pcall(function()
					anim = KeyframeSequenceProvider:GetKeyframeSequenceById(id, false)
				end)

				if not status then
					store:dispatch(SetNotification("InvalidAnimation", true))
				end

				if not anim then
					return
				end
			else
				if game:GetFastFlag("UseGetKeyframeSequenceIgnoreCache") then
					anim = KeyframeSequenceProvider:GetKeyframeSequenceById(id, false)
				else
					anim = KeyframeSequenceProvider:GetKeyframeSequenceAsync("rbxassetid://" .. id)
				end
			end

			local newData
			if UseCustomFPS() then
				local frameRate = RigUtils.calculateFrameRate(anim)
				newData = RigUtils.fromRigAnimation(anim, frameRate)
			else
				newData = RigUtils.fromRigAnimation(anim, Constants.DEFAULT_FRAMERATE)
			end
			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
			store:dispatch(LoadAnimationData(newData))
			store:dispatch(SetIsDirty(false))

			state.Analytics:onImportAnimation(id)
		end
	end
end