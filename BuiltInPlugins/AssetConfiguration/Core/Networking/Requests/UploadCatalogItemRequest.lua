local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagCMSUploadAccessoryMeshPartFormat2 = game:GetFastFlag("CMSUploadAccessoryMeshPartFormat2")
local FFlagCMSUploadFees = game:GetFastFlag("CMSUploadFees")

local SetAssetId = require(Plugin.Core.Actions.SetAssetId)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetCurrentScreen = require(Plugin.Core.Actions.SetCurrentScreen)
local UploadResult = require(Plugin.Core.Actions.UploadResult)

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances = require(Util.SerializeInstances)
local Analytics = require(Util.Analytics.Analytics)

local createMultipartFormDataBody = require(Util.createMultipartFormDataBody)

local ConfigureItemTagsRequest = require(Plugin.Core.Networking.Requests.ConfigureItemTagsRequest)
local UploadCatalogItemMeshPartFormatRequest = require(Plugin.Core.Networking.Requests.UploadCatalogItemMeshPartFormatRequest)

local function createConfigDataTable(nameWithoutExtension, assetTypeId, description)
	return {
		[nameWithoutExtension] = {
			type = assetTypeId.Name,
			name = nameWithoutExtension,
			description = description
		}
	}
end

local function createFormDataBody(configDataJsonBlob, nameWithoutExtension, extension, fileDataBlob, boundary)
	local result = "--" .. boundary .. "\r\n" ..
		"Content-Type: application/json\r\n" ..
		"Content-Disposition: form-data; name=\"config\"; filename=\"config.json\"\r\n" ..
		"\r\n" .. configDataJsonBlob .. "\r\n" ..
		"--" .. boundary .. "\r\n" ..
		"Content-Disposition: form-data; name=\"" .. nameWithoutExtension .. "\"; filename=\"" .. nameWithoutExtension .. "." .. extension .. "\"\r\n" ..
		"Content-Type: application/octet-stream\r\n" ..
		"\r\n" .. fileDataBlob .. "\r\n" ..
		"--" .. boundary .. "--\r\n"
	return result
end

return function(networkInterface, nameWithoutExtension, extension, description, assetTypeId, instances, tags)
	return function(store)
		-- this thunk should never be called if names and descriptions exceed their maximum lengths, so we don't need to trim the strings here (just precautionary)
		nameWithoutExtension = string.sub(nameWithoutExtension or "", 1, AssetConfigConstants.NAME_CHARACTER_LIMIT)
		description = string.sub(description or "", 1, AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT)

		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))

		local handlerFunc = function(responseRaw)
			local success, response = pcall(function()
				return HttpService:JSONDecode(responseRaw)
			end)

			if success and response and response.AssetDetails and #response.AssetDetails > 0 then
				local assetDetails = response.AssetDetails[1]
				if assetDetails.uploadAssetError then
					store:dispatch(NetworkError(assetDetails.uploadAssetError))
					store:dispatch(UploadResult(false))

					Analytics.incrementUploadeAssetFailure(assetTypeId)
					return
				elseif assetDetails.assetId then
					store:dispatch(SetAssetId(assetDetails.assetId))
					if FFlagCMSUploadAccessoryMeshPartFormat2 then
						store:dispatch(
							UploadCatalogItemMeshPartFormatRequest(
								networkInterface,
								assetDetails.assetId,
								assetTypeId,
								nameWithoutExtension,
								description,
								instances,
								tags
							)
						)
					else
						store:dispatch(ConfigureItemTagsRequest(networkInterface, assetDetails.assetId, {}, tags))
					end

					Analytics.incrementUploadAssetSuccess(assetTypeId)
					return
				end
			end

			store:dispatch(NetworkError("Unknown Error"))
			store:dispatch(UploadResult(false))
		end

		local errorFunc = function(response)
			if DebugFlags.shouldDebugWarnings() then
				warn(("Lua toolbox: Could not upload catalog item"))
			end
			store:dispatch(NetworkError(response))
			store:dispatch(UploadResult(false))

			Analytics.incrementUploadeAssetFailure(assetTypeId)
		end

		local fileDataString = SerializeInstances(instances)

		local configDataBlob = networkInterface:jsonEncode(createConfigDataTable(nameWithoutExtension, assetTypeId, description))

		if FFlagCMSUploadFees then
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
				}
			})
			networkInterface:uploadCatalogItem(formBodyData, AssetConfigConstants.MULTIPART_FORM_BOUNDARY):andThen(handlerFunc, errorFunc)
		else
			local boundary = "EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"
			local formBodyData = createFormDataBody(configDataBlob, nameWithoutExtension, extension, fileDataString, boundary)
			networkInterface:uploadCatalogItem(formBodyData, boundary):andThen(handlerFunc, errorFunc)
		end
	end
end
