local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent

local SetUploadFee = require(Plugin.Core.Actions.SetUploadFee)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local UploadResult = require(Plugin.Core.Actions.UploadResult)

local StatusCodes = require(Plugin.Libs.Http.StatusCodes)

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances_Deprecated = require(Util.SerializeInstances_Deprecated)
local SerializeInstances = require(Util.SerializeInstances)

local DebugFlags = require(Util.DebugFlags)

local createMultipartFormDataBody = require(Util.createMultipartFormDataBody)

local FFlagStudioSerializeInstancesOffUIThread = game:GetFastFlag("StudioSerializeInstancesOffUIThread2")

local function createConfigDataTable()
	return {
		name = "",
		description = "",
	}
end

return function(networkInterface, assetTypeId, instances)
	return function(store, services)
		local handlerFunc = function(response)
			local success, body = pcall(function()
				return HttpService:JSONDecode(response.Body)
			end)
			if success and body.price ~= nil and body.canAfford ~= nil then
				store:dispatch(SetUploadFee(true, body.price, body.canAfford))
			else
				warn("Unexpected AvatarAssetsGetUploadFee response body:", response.Body)
				store:dispatch(SetUploadFee(false))
			end
		end

		local function onSerializeFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Lua toolbox: SerializeInstances failed")
			end

			store:dispatch(NetworkError(tostring(result)))
			store:dispatch(UploadResult(false))
		end

		local errorFunc = function(response)
			-- if backend returns SERVICE_UNAVAILABLE, we should disable upload fees and use the old endpoints
			-- this allows backend settings to control the usage of this feature per user, accessory type, etc.
			if response.StatusCode == StatusCodes.SERVICE_UNAVAILABLE then
				store:dispatch(SetUploadFee(false))
			else
				store:dispatch(NetworkError(response.Body))
				store:dispatch(UploadResult(false))
			end
		end

		if FFlagStudioSerializeInstancesOffUIThread then
			return SerializeInstances(instances, services.StudioAssetService):andThen(function(fileDataBlob)
				local configDataBlob = networkInterface:jsonEncode(createConfigDataTable())

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
							name = "accessory",
							filename = "accessory.rbxm",
						},
						value = fileDataBlob,
					},
				})

				return networkInterface
					:avatarAssetsGetUploadFee(assetTypeId, formBodyData, AssetConfigConstants.MULTIPART_FORM_BOUNDARY)
					:andThen(handlerFunc, errorFunc)
			end, onSerializeFail)
		else
			local fileDataBlob = SerializeInstances_Deprecated(instances)
			local configDataBlob = networkInterface:jsonEncode(createConfigDataTable())

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
						name = "accessory",
						filename = "accessory.rbxm",
					},
					value = fileDataBlob,
				},
			})

			networkInterface
				:avatarAssetsGetUploadFee(assetTypeId, formBodyData, AssetConfigConstants.MULTIPART_FORM_BOUNDARY)
				:andThen(handlerFunc, errorFunc)
		end
	end
end
