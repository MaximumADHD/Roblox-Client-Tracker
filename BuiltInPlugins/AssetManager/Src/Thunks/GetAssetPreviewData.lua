local Plugin = script.Parent.Parent.Parent

local Players = game:GetService("Players")
local GroupService = game:GetService("GroupService")

local GetRootTreeViewInstance = require(Plugin.Src.Thunks.GetRootTreeViewInstance)

local SetAssetPreviewData = require(Plugin.Src.Actions.SetAssetPreviewData)
local SetAssetOwnerName = require(Plugin.Src.Actions.SetAssetOwnerName)

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport
local enableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).enableVideoImport

local sendResultToKibana = require(Plugin.Packages.Framework).Util.sendResultToKibana

local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")

return function(apiImpl, assetIds)
	return function(store)
		local assetPreviewDataLoading = {}
		for _, assetId in ipairs(assetIds) do
			assetPreviewDataLoading[assetId] = true
		end
		store:dispatch(SetAssetPreviewData(assetPreviewDataLoading))

		apiImpl.Develop.V1.Assets.assets(assetIds):makeRequest()
		:andThen(function(response)
			if FFlagNewPackageAnalyticsWithRefactor2 then
				sendResultToKibana(response)
			end
			local body = response.responseBody
			if not body or #body.data == 0 then
				return
			end

			local assetPreviewData = {}
			for _, assetData in ipairs(body.data) do
				local assetId = assetData.id
				local ownerId = assetData.creator.targetId

				local assetName = assetData.name
				local assetTypeId = assetData.typeId

				if assetTypeId == Enum.AssetType.Image.Value and string.find(assetData.name, "Images/") then
					assetName = string.gsub(assetData.name, "Images/", "")
				elseif assetTypeId == Enum.AssetType.MeshPart.Value and string.find(assetData.name, "Meshes/") then
					assetName = string.gsub(assetData.name, "Meshes/", "")
				elseif assetTypeId == Enum.AssetType.Lua.Value and string.find(assetData.name, "Scripts/") then
					assetName = string.gsub(assetData.name, "Scripts/", "")
				elseif enableAudioImport() and assetTypeId == Enum.AssetType.Audio.Value and string.find(assetData.name, "Audio/") then
					assetName = string.gsub(assetData.name, "Audio/", "")
				elseif enableVideoImport() and assetTypeId == Enum.AssetType.Video.Value and string.find(assetData.name, "Video/") then
					assetName = string.gsub(assetData.name, "Video/", "")
				elseif (FFlagAssetManagerEnableModelAssets and assetTypeId == Enum.AssetType.Model.Value and string.find(assetData.Name, "Models/")) then
					assetName = string.gsub(assetData.Name, "Models/", "")
				end

				local created = assetData.created
				local updated = assetData.updated

				assetPreviewData[assetId] = {
					Asset = {
						Id = assetData.id,
						Type = assetData.type,
						TypeId = assetTypeId,
						Name = assetName,
						Description = assetData.description,
						AssetGenres = assetData.genres,
						Created = created,
						Updated = updated,
					},
					Creator = {
						Type = assetData.creator.type,
						TypeId = assetData.creator.typeId,
						TargetId = assetData.creator.targetId,
						Name = "",
					},
				}
				spawn(function()
					if assetData.creator.type == "Group" then
						local groupMetadata = GroupService:GetGroupInfoAsync(ownerId)
						local groupName = groupMetadata.Name
						if groupName then
							store:dispatch(SetAssetOwnerName(assetId, groupName))
						end
					elseif assetData.creator.type == "User" then
						local username = Players:GetNameFromUserIdAsync(ownerId)
						if username then
							store:dispatch(SetAssetOwnerName(assetId, username))
						end
					end
				end)

				store:dispatch(GetRootTreeViewInstance(assetId, assetData.typeId))
			end

			store:dispatch(SetAssetPreviewData(assetPreviewData))
			return response
		end, function(response)
			if FFlagNewPackageAnalyticsWithRefactor2 then
				sendResultToKibana(response)
			end
			error("Failed to load data for Asset Preview")
		end)
	end
end
