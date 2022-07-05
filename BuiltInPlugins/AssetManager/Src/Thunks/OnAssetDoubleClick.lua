local Plugin = script.Parent.Parent.Parent

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport
local enableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).enableVideoImport

local AssetManagerService = game:GetService("AssetManagerService")

local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")

return function(analytics, assetData, isAssetPreviewInsertButton)
	return function(store)
		local isFolder = assetData.ClassName == "Folder"
		if isFolder then
			analytics:report("openFolder", assetData.Screen.Path)
			store:dispatch(SetScreen(assetData.Screen))
		else
			local assetType = assetData.assetType
			if assetType == Enum.AssetType.Place then
				AssetManagerService:OpenPlace(assetData.id)
			elseif assetType == Enum.AssetType.Package then
				AssetManagerService:InsertPackage(assetData.id)
			elseif assetType == Enum.AssetType.Image then
				AssetManagerService:InsertImage(assetData.id)
			elseif assetType == Enum.AssetType.MeshPart then
				AssetManagerService:InsertMesh("Meshes/".. assetData.name, false)
			elseif assetType == Enum.AssetType.Lua then
				if isAssetPreviewInsertButton then
					AssetManagerService:InsertLinkedSourceAsScript("Scripts/".. assetData.name)
				else
					AssetManagerService:OpenLinkedSource("Scripts/" .. assetData.name)
				end
			elseif enableAudioImport() and assetType == Enum.AssetType.Audio then
				AssetManagerService:InsertAudio(assetData.id, assetData.name)
			elseif enableVideoImport() and assetType == Enum.AssetType.Video then
				AssetManagerService:InsertVideo(assetData.id, assetData.name)
			elseif FFlagAssetManagerEnableModelAssets and assetType == Enum.AssetType.Model then
				AssetManagerService:InsertModel(assetData.id)
			end
			analytics:report("doubleClickInsert")
			local state = store:getState()
			local searchTerm = state.AssetManagerReducer.searchTerm
			if utf8.len(searchTerm) ~= 0 then
				analytics:report("insertAfterSearch")
			end
		end
	end
end