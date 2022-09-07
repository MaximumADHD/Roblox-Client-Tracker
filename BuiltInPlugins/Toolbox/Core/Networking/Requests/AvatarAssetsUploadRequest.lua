local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagCMSUploadAccessoryMeshPartFormat2 = game:GetFastFlag("CMSUploadAccessoryMeshPartFormat2")
local FFlagAssetConfigLayeredClothingBoxCollisions = game:getFastFlag("AssetConfigLayeredClothingBoxCollisions")

local SetAssetId = require(Plugin.Core.Actions.SetAssetId)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetCurrentScreen = require(Plugin.Core.Actions.SetCurrentScreen)
local UploadResult = require(Plugin.Core.Actions.UploadResult)

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local getUserId = require(Util.getUserId)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances = require(Util.SerializeInstances)
local Analytics = require(Util.Analytics.Analytics)
local createMultipartFormDataBody = require(Util.createMultipartFormDataBody)
local isLayeredClothing = require(Util.isLayeredClothing)
local fixMeshPartAccessory = require(Util.fixMeshPartAccessory)

local ConfigureItemTagsRequest = require(Plugin.Core.Networking.Requests.ConfigureItemTagsRequest)
local UploadCatalogItemMeshPartFormatRequest = require(
	Plugin.Core.Networking.Requests.UploadCatalogItemMeshPartFormatRequest
)

local function createConfigDataTable(nameWithoutExtension, assetTypeId, description, groupId)
	return {
		name = nameWithoutExtension,
		description = description,
		creatorType = groupId ~= nil and "Group" or "User",
		creatorTargetId = groupId ~= nil and groupId or getUserId(),
	}
end

return function(networkInterface, nameWithoutExtension, extension, description, assetTypeId, instances, tags, groupId)
	return function(store, services)
		nameWithoutExtension = string.sub(nameWithoutExtension or "", 1, AssetConfigConstants.NAME_CHARACTER_LIMIT)
		description = string.sub(description or "", 1, AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT)

		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))

		local handlerFunc = function(response)
			local success, body = pcall(function()
				return HttpService:JSONDecode(response.Body)
			end)

			if success and body.assetId then
				store:dispatch(SetAssetId(body.assetId))
				if FFlagCMSUploadAccessoryMeshPartFormat2 then
					store:dispatch(
						UploadCatalogItemMeshPartFormatRequest(
							networkInterface,
							body.assetId,
							assetTypeId,
							nameWithoutExtension,
							description,
							instances,
							tags
						)
					)
				else
					store:dispatch(ConfigureItemTagsRequest(networkInterface, body.assetId, {}, tags))
				end

				Analytics.incrementUploadAssetSuccess(assetTypeId)
				return
			end

			warn("Unexpected AvatarAssetsUploadRequest response body:", response.Body)
			store:dispatch(NetworkError("Unknown Error"))
			store:dispatch(UploadResult(false))
		end

		local function onSerializeFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Lua toolbox: SerializeInstances failed")
			end

			store:dispatch(NetworkError(tostring(result)))
			store:dispatch(UploadResult(false))

			Analytics.incrementUploadAssetFailure(assetTypeId)
		end

		local errorFunc = function(response)
			if DebugFlags.shouldDebugWarnings() then
				warn("Lua toolbox: Could not upload catalog item")
			end
			store:dispatch(NetworkError(response.Body))
			store:dispatch(UploadResult(false))

			Analytics.incrementUploadAssetFailure(assetTypeId)
		end

		if FFlagAssetConfigLayeredClothingBoxCollisions then
			local accessory = instances[1]
			if isLayeredClothing(accessory) then
				fixMeshPartAccessory(accessory)
			end
		end

		return SerializeInstances(instances, services.StudioAssetService):andThen(function(fileDataString)
			local configDataTable = createConfigDataTable(nameWithoutExtension, assetTypeId, description, groupId)
			local configDataBlob = networkInterface:jsonEncode(configDataTable)

			local formBodyData = createMultipartFormDataBody({
				{
					type = "application/json",
					disposition = {
						name = "config",
						filename = "config.json",
					},
					value = configDataBlob,
				},
				{
					type = "application/octet-stream",
					disposition = {
						name = nameWithoutExtension,
						filename = nameWithoutExtension .. "." .. extension,
					},
					value = fileDataString,
				},
			})

			return networkInterface
				:avatarAssetsUpload(assetTypeId, formBodyData, AssetConfigConstants.MULTIPART_FORM_BOUNDARY)
				:andThen(handlerFunc, errorFunc)
		end, onSerializeFail)
	end
end
