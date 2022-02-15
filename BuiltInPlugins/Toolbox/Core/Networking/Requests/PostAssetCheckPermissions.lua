--[[
	A Post used to determine what current user's permission level is for a list of assetIds.

    For POST need JSON body with list of assets AND list of desired actions to query.
    e.g. if want to see if asset 29 has Use or Edit Permissions, you'll get 2 objects specifying status for each action
    Request Body format is:
    {
        actions: List<AssetConsumerAction>,
        assetIds: List<long>
    }
	where action is Edit, Use, GrantAssetPermissions

    Response format is:
    {
        results: [ {
            action: AssetConsumerAction enum,
            assetId: long,
            status: PermissionStatus enum
        } ]
    }
    where [AssetConsumerAction enum] is either "Edit", "Use"
    and [PermissionStatus enum] is either "UnknownError", "HasPermission", "NoPermission", "AssetNotFound"

	Then we parse the request to form a table with the following format:
	{
		id1 = action1, 
		id2 = action2,
	}

	an "id" is the assetId of that package.
	an "action" can be any of the following values "UseView", "Own", "Edit", "Revoked".
	The current user can have the same action for multiple assetIds. e.g. I have permission to "edit"
	two differrent packages.

	Params:
		networkInterface = The NetworkInterface impl.
		assetIds = A list of asset ids, that must be all packages.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Packages
else
	Libs = Plugin.Libs
end
local Cryo = require(Libs.Cryo)

local SetPackagePermission = require(Plugin.Core.Actions.SetPackagePermission)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local KeyConverter = require(Plugin.Core.Util.Permissions.KeyConverter)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local Promise = require(Libs.Framework).Util.Promise

--[[
	response comes in batches of objects with different objects for different permission levels for same object, so need to filter

	{
		["action"] = "Edit",
		["assetId"] = 738,
		["status"] = "HasPermission"
	},
	{
		["action"] = "Use",
		["assetId"] = 738,
		["status"] = "HasPermission"
	},
	{
		["action"] = "GrantAssetPermissions",
		["assetId"] = 738,
		["status"] = "HasPermission"
	}

	1. If it has GrantAssetPermissions (highest level) --> assign
	2. If has Edit permission and if it doesn't already have GrantAssetPermissions --> assign
	3. if has Use Permission and doesn't have anything else --> assign

]]

local function isHigherPermission(current, newPerm)
	if current == nil then
		return newPerm
	end

	local ranking = {}
	ranking[PermissionsConstants.OwnKey] = 4
	ranking[PermissionsConstants.EditKey] = 3
	ranking[PermissionsConstants.UseViewKey] = 2
	ranking[PermissionsConstants.NoAccessKey] = 1

	if ranking[newPerm] > ranking[current] then
		return newPerm
	else
		return current
	end
end

local function deserializeResults(results)
	local idToPermissionsTable = {}
	for _, data in ipairs(results) do
		local newPermLevel = KeyConverter.resolveActionPermission(data.action, data.status, data.assetId)

		local higherPermission = isHigherPermission(idToPermissionsTable[data.assetId], newPermLevel)

		idToPermissionsTable = Cryo.Dictionary.join(idToPermissionsTable, {
			[data.assetId] = higherPermission,
		})
	end

	return idToPermissionsTable
end

return function(networkInterface, assetIds)
	return function(store)
		local noAccessTable = {}
		for _, assetId in pairs(assetIds) do
			noAccessTable[assetId] = PermissionsConstants.NoAccessKey
		end
		store:dispatch(SetPackagePermission(noAccessTable))

		local actions = { "Edit", "Use", "GrantAssetPermissions" }

		local resultData = {}
		local promises = {}

		local batchSize = game:GetFastInt("MaxPackageAssetIdsPerPermissionRequest")

		for i = 1, #assetIds, batchSize do --batch because network call can handle only 50 assetIds at once max
			local batch = { table.unpack(assetIds, i, i + (batchSize - 1)) }
			table.insert(
				promises,
				networkInterface:postAssetCheckPermissions(actions, batch):andThen(function(result)
					Analytics.sendResultToKibana(result)
					resultData = Cryo.List.join(resultData, result.responseBody.results)
				end, function(err)
					Analytics.sendResultToKibana(err)
					store:dispatch(NetworkError(err))
				end)
			)
		end

		Promise.all(promises):andThen(function()
			if #resultData ~= 0 then
				local deserializeResultData = deserializeResults(resultData)
				store:dispatch(SetPackagePermission(deserializeResultData))
			end
		end)
	end
end
