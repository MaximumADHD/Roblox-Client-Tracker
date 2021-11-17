--[[
	Prompts the user to select a FBX Animation to import, then
	imports to a KeyframeSequence from the FBX animation.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetFrameRate = require(Plugin.Src.Actions.SetFrameRate)

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
			local newData, frameRate = RigUtils.fromRigAnimation(result)
			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
			store:dispatch(LoadAnimationData(newData, analytics))
			store:dispatch(SetIsDirty(false))
			store:dispatch(SetFrameRate(frameRate))
			if result then
				result:Destroy()
			end

			analytics:report("onImportFbxAnimation")
		else
			warn(result)
		end
	end
end