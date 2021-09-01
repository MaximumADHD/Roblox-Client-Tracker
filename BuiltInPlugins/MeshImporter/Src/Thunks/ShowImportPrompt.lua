--[[
	Prompt to import an asset using the AssetImportService.
]]
local AssetImportService = game:GetService("AssetImportService")

local Plugin = script.Parent.Parent.Parent

local SetAssetSettings = require(Plugin.Src.Actions.SetAssetSettings)
local SetFilename = require(Plugin.Src.Actions.SetFilename)
local SetInstanceMap = require(Plugin.Src.Actions.SetInstanceMap)
local SetSelectedSettingsItem = require(Plugin.Src.Actions.SetSelectedSettingsItem)

return function(promptClosedHandler)
	return function(store)
		local settings, filename = AssetImportService:ImportMeshWithPrompt()

		if settings and filename then
			local instanceMap = AssetImportService:GetCurrentImportMap()

			store:dispatch(SetInstanceMap(instanceMap))
			store:dispatch(SetAssetSettings(settings))
			store:dispatch(SetFilename(filename))
			store:dispatch(SetSelectedSettingsItem(settings))
		end

		if promptClosedHandler then
			local succeeded = settings ~= nil and filename ~= nil
			promptClosedHandler(succeeded)
		end
	end
end
