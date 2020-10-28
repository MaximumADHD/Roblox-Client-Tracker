local Plugin = script.Parent.Parent.Parent.Parent

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local UploadResult = require(Plugin.Core.Actions.UploadResult)

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances = require(Util.SerializeInstances)
local convertSpecialMeshAccessory = require(Util.convertSpecialMeshAccessory)

local ConfigureItemTagsRequest = require(Plugin.Core.Networking.Requests.ConfigureItemTagsRequest)

return function(networkInterface, assetId, assetTypeEnum, name, description, instances, tags)
	return function(store)
		local handlerFunc = function(responseRaw)
			store:dispatch(ConfigureItemTagsRequest(networkInterface, assetId, {}, tags))
		end

		local errorFunc = function(response)
			store:dispatch(NetworkError(response))
			store:dispatch(UploadResult(false))
		end

		local meshPartAccessory = convertSpecialMeshAccessory(instances[1])
		local instanceData = SerializeInstances({ meshPartAccessory })

		networkInterface:uploadCatalogItemFormat(
			assetId,
			assetTypeEnum.Name,
			name,
			description,
			true,
			AssetConfigConstants.AVATAR_MESHPART_ACCESSORY_FORMAT,
			instanceData
		):andThen(handlerFunc, errorFunc)
	end
end
