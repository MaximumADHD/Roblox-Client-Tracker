--[[
	Prompts the user to select a FBX Animation to import, then
	imports to a KeyframeSequence from the FBX animation.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetDisplayFrameRate = require(Plugin.Src.Actions.SetDisplayFrameRate)
local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(plugin, analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local success, result = pcall(function()
			local _, isR15 = RigUtils.canUseIK(rootInstance)
			return plugin:get():ImportFbxAnimation(rootInstance, isR15)
		end)

		if success then
			local newData, frameRate
			if GetFFlagUseTicks() then
				newData, frameRate = RigUtils.fromRigAnimation(result)
			else
				frameRate = RigUtils.calculateFrameRate(result)
				newData = RigUtils.fromRigAnimation_deprecated(result, frameRate)
			end
			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
			store:dispatch(LoadAnimationData(newData, analytics))
			store:dispatch(SetIsDirty(false))
			if GetFFlagUseTicks() then
				store:dispatch(SetDisplayFrameRate(frameRate))
			end
			if result then
				result:Destroy()
			end

			analytics:report("onImportFbxAnimation")
		else
			warn(result)
		end
	end
end