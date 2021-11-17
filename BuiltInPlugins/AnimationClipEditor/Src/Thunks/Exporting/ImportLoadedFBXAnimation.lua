--[[
	Imports into the workspace the loadedFbx animation, based on either the selected model or the loadedFbx model.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)

return function(plugin, useFbxModel, analytics)
	return function(store)
		local success, result = pcall(function()
			return game:GetService("AvatarImportService"):ImportLoadedFBXAnimation(useFbxModel)
		end)

		if success then
			local newData = RigUtils.fromRigAnimation(result)
			newData.Metadata.Name = Constants.DEFAULT_IMPORTED_NAME
			store:dispatch(LoadAnimationData(newData, analytics))
			store:dispatch(SetIsDirty(false))

			if result then
				result:Destroy()
			end

			analytics:report("onImportFbxAnimation")
			if (useFbxModel) then
				analytics:report("onUserChoseFBXModelForAnimImport")
			else
				analytics:report("onUserChoseSelectedModelForAnimImport")
			end

			warn(result)
		end
	end
end