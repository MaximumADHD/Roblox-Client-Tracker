--[[
	Prompt to import an asset using the AssetImportService.
]]
local AssetImportService = game:GetService("AssetImportService")

local Plugin = script.Parent.Parent.Parent

local SetAssetSettings = require(Plugin.Src.Actions.SetAssetSettings)
local SetFilename = require(Plugin.Src.Actions.SetFilename)
local SetInstanceMap = require(Plugin.Src.Actions.SetInstanceMap)
local SetSelectedSettingsItem = require(Plugin.Src.Actions.SetSelectedSettingsItem)
local SetTreeChecked = require(Plugin.Src.Actions.SetTreeChecked)
local SetImportStatuses = require(Plugin.Src.Actions.SetImportStatuses)

local UpdateChecked = require(Plugin.Src.Thunks.UpdateChecked)

local getFFlagAssetImportHandleFileCancel = require(Plugin.Src.Flags.getFFlagAssetImportHandleFileCancel)

return function(promptClosedHandler)
	return function(store)
		local settings, filename, statuses = AssetImportService:ImportMeshWithPrompt()

		if settings and filename then
			local instanceMap = AssetImportService:GetCurrentImportMap()

			local checked = {}

			local function recurse(generation)
				for _, child in pairs(generation) do
					checked[child] = child["ShouldImport"]

					local children = child:GetChildren()
					if children then
						recurse(children)
					end
				end
			end

			recurse(settings:GetChildren())
			checked[settings] = true

			store:dispatch(SetInstanceMap(instanceMap))
			store:dispatch(SetAssetSettings(settings))
			store:dispatch(SetFilename(filename))
			store:dispatch(SetSelectedSettingsItem(settings))
			store:dispatch(UpdateChecked(checked))
		end

		store:dispatch(SetImportStatuses(statuses))

		if promptClosedHandler then
			if getFFlagAssetImportHandleFileCancel() then
				local success = settings ~= nil and filename ~= nil
				-- An empty string is returned if no file was selected
				local closed = filename == ""
				promptClosedHandler(success, closed)
			else
				local success = settings ~= nil and filename ~= nil
				promptClosedHandler(success)
			end
		end
	end
end
