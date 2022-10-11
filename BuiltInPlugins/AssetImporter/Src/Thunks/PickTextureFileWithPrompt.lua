--[[
	Prompt to choose and apply a texture file in asset importer using AssetImportService 
]]
local AssetImportService = game:GetService("AssetImportService")
local Plugin = script.Parent.Parent.Parent

local GetErrorChecked = require(Plugin.Src.Utility.GetErrorChecked)
local SetErrorNodeChecked = require(Plugin.Src.Actions.SetErrorNodeChecked)
local SetTreeChecked = require(Plugin.Src.Actions.SetTreeChecked)
local SetInstanceMap = require(Plugin.Src.Actions.SetInstanceMap)
local UpdatePreviewInstance = require(Plugin.Src.Thunks.UpdatePreviewInstance)

local getFFlagAssetImportSessionCleanup = require(Plugin.Src.Flags.getFFlagAssetImportSessionCleanup)


return function(settingsInstance, propertyName)
    return function(store)
        local fileName = AssetImportService:PickFileWithPrompt()
        local state = store:getState()
        local session = state.assetImportSession
        if fileName and fileName ~= '' then
            settingsInstance[propertyName] = fileName;
            local isErrorChecked = GetErrorChecked(state.assetSettings)
            store:dispatch(SetErrorNodeChecked(isErrorChecked))
            store:dispatch(SetTreeChecked({[settingsInstance] = settingsInstance.ShouldImport}))
			if getFFlagAssetImportSessionCleanup() then
                store:dispatch(UpdatePreviewInstance(session:GetInstance(settingsInstance.Id)))
			else
                store:dispatch(SetInstanceMap(session:GetCurrentImportMap()))
			end
        end
    end
end

