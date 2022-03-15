local FFlagToolboxPrivatePublicAudioAssetConfig3 = game:GetFastFlag("ToolboxPrivatePublicAudioAssetConfig3")
local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)

local TrySaveSalesAndThumbnailRequest = require(Plugin.Core.Networking.Requests.TrySaveSalesAndThumbnailRequest)

local Packages = Plugin.Packages
local Promise = require(Packages.Framework).Util.Promise

local PermissionTypes = require(Plugin.Core.Types.PermissionTypes)
local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

-- patchInfo is a table contains the following:
--networkInterface
--assetId
--name
--description
--genres
--commentOn
--copyOn
--locale
--localName
--localDescription
--saleStatus
--price
--iconFile
return function(patchInfo)
	return function(store)
		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))

		local function onPatchSuccess(result)
			patchInfo.assetType = store:getState().assetTypeEnum.Name
			store:dispatch(TrySaveSalesAndThumbnailRequest(patchInfo))
		end

		local function onPatchFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(NetworkError(result))
			store:dispatch(UploadResult(false))
		end

		if FFlagToolboxPrivatePublicAudioAssetConfig3 then
			local function onPatchAssetPermissionsSuccess()
				return patchInfo.networkInterface
					:patchAsset(
						patchInfo.assetId,
						patchInfo.name,
						patchInfo.description,
						patchInfo.genres,
						patchInfo.commentOn,
						patchInfo.copyOn,
						patchInfo.locale,
						patchInfo.localName,
						patchInfo.localDescription
					)
					:andThen(onPatchSuccess, onPatchFail)
			end

			local permissionPatchData
			if patchInfo.isAssetPublic then
				local publicPermission: PermissionTypes.PermissionResultList = {
					{
						action = webKeys.UseAction,
						subjectId = "",
						subjectType = webKeys.All,
					}
				}
				permissionPatchData = {
					requests = publicPermission,
				}
			end

			if permissionPatchData then
				return patchInfo.networkInterface
					:grantAssetPermissions(
						patchInfo.assetId,
						permissionPatchData
					)
					:andThen(onPatchAssetPermissionsSuccess, onPatchFail)
			else
				return onPatchAssetPermissionsSuccess()
			end
		else
			return patchInfo.networkInterface
				:patchAsset(
					patchInfo.assetId,
					patchInfo.name,
					patchInfo.description,
					patchInfo.genres,
					patchInfo.commentOn,
					patchInfo.copyOn,
					patchInfo.locale,
					patchInfo.localName,
					patchInfo.localDescription
				)
				:andThen(onPatchSuccess, onPatchFail)
		end
	end
end