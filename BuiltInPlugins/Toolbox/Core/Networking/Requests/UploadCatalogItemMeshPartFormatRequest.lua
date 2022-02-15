local Plugin = script.Parent.Parent.Parent.Parent

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local UploadResult = require(Plugin.Core.Actions.UploadResult)

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local SerializeInstances_Deprecated = require(Util.SerializeInstances_Deprecated)
local SerializeInstances = require(Util.SerializeInstances)
local convertSpecialMeshAccessory = require(Util.convertSpecialMeshAccessory)

local ConfigureItemTagsRequest = require(Plugin.Core.Networking.Requests.ConfigureItemTagsRequest)

local FFlagStudioSerializeInstancesOffUIThread = game:GetFastFlag("StudioSerializeInstancesOffUIThread2")

return function(networkInterface, assetId, assetTypeEnum, name, description, instances, tags)
	return function(store, services)
		local handlerFunc = function(responseRaw)
			store:dispatch(ConfigureItemTagsRequest(networkInterface, assetId, {}, tags))
		end

		local serializeFailedFunc = function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Lua toolbox: SerializeInstances failed")
			end

			store:dispatch(NetworkError(tostring(result)))
			store:dispatch(UploadResult(false))
		end

		local errorFunc = function(response)
			store:dispatch(NetworkError(response))
			store:dispatch(UploadResult(false))
		end

		local meshPartAccessory = convertSpecialMeshAccessory(instances[1])

		if FFlagStudioSerializeInstancesOffUIThread then
			return SerializeInstances({ meshPartAccessory }, services.StudioAssetService):andThen(function(instanceData)
				return networkInterface
					:uploadCatalogItemFormat(
						assetId,
						assetTypeEnum.Name,
						name,
						description,
						true,
						AssetConfigConstants.AVATAR_MESHPART_ACCESSORY_FORMAT,
						instanceData
					)
					:andThen(handlerFunc, errorFunc)
			end, serializeFailedFunc)
		else
			local instanceData = SerializeInstances_Deprecated({ meshPartAccessory })

			networkInterface
				:uploadCatalogItemFormat(
					assetId,
					assetTypeEnum.Name,
					name,
					description,
					true,
					AssetConfigConstants.AVATAR_MESHPART_ACCESSORY_FORMAT,
					instanceData
				)
				:andThen(handlerFunc, errorFunc)
		end
	end
end
