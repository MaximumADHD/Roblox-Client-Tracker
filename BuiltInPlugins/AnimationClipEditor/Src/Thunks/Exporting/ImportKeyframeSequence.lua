--[[
	Prompts the user to select an Animation asset to upload, then
	imports the KeyframeSequence from the Roblox asset id.
]]

local KeyframeSequenceProvider = game:GetService("KeyframeSequenceProvider")
local AnimationClipProvider = game:GetService("AnimationClipProvider")

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetFrameRate = require(Plugin.Src.Actions.SetFrameRate)
local SetNotification = require(Plugin.Src.Actions.SetNotification)

local FFlagUserNotLoggedIn = game:DefineFastFlag("ACEUserNotLoggedIn", false)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

return function(plugin, analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local status, id

		if FFlagUserNotLoggedIn then
			status, id = pcall(function()
				return plugin:get():PromptForExistingAssetId("Animation")
			end)
			-- PromptForExistingAssetId will display a dialog box and an error in the Output window, no need to report
			-- the error as an additional notification. Just bail out.
			if not status then
				return
			end
		else
			id = plugin:get():PromptForExistingAssetId("Animation")
		end

		if id and tonumber(id) > 0 then
			local anim
			status = pcall(function()
				if GetFFlagChannelAnimations() then
					anim = AnimationClipProvider:GetAnimationClipById(id, false)
				else
					anim = KeyframeSequenceProvider:GetKeyframeSequenceById(id, false)
				end
			end)

			if not status then
				store:dispatch(SetNotification("InvalidAnimation", true))
			end

			if not anim then
				return
			end

			local newData, frameRate
			if GetFFlagChannelAnimations() then
				if anim:IsA("KeyframeSequence") then
					newData, frameRate = RigUtils.fromRigAnimation(anim)
				else
					newData = RigUtils.fromCurveAnimation(anim)
					frameRate = Constants.DEFAULT_FRAMERATE
				end
			else
				newData, frameRate = RigUtils.fromRigAnimation(anim)
			end

			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
			store:dispatch(LoadAnimationData(newData, analytics))
			store:dispatch(SetIsDirty(false))
			store:dispatch(SetFrameRate(frameRate))

			if analytics then
				analytics:report("onImportAnimation", id)
			end
		end
	end
end
