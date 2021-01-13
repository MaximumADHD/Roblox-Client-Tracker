--[[
	Prompts the user to select a FBX Animation to import, then
	imports to a KeyframeSequence from the FBX animation.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)

local UseCustomFPS = require(Plugin.LuaFlags.GetFFlagAnimEditorUseCustomFPS)

return function(plugin, analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local success, result = pcall(function()
			return plugin:get():ImportFbxAnimation(rootInstance)
		end)

		if success then
			local newData
			if UseCustomFPS() then
				local frameRate = RigUtils.calculateFrameRate(result)
				newData = RigUtils.fromRigAnimation(result, frameRate)
			else
				newData = RigUtils.fromRigAnimation(result, Constants.DEFAULT_FRAMERATE)
			end
			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
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