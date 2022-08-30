local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetPublishingRequirements = require(Actions.SetPublishingRequirements)

local AssetSubTypes = require(Plugin.Core.Types.AssetSubTypes)
local PublishingRequirementsType = require(Plugin.Core.Types.PublishingRequirementsType)

return function(
	networkInterface,
	assetId: number,
	assetType: Enum.AssetType?,
	assetSubType: AssetSubTypes.AssetSubType?
)
	return function(store)
		local formattedAssetType = assetType
		if assetType == Enum.AssetType.Image then
			assetType = Enum.AssetType.Decal
		elseif assetType == Enum.AssetType.Mesh then
			assetType = Enum.AssetType.MeshPart
		end

		return networkInterface:getPublishingRequirements(assetId, assetType, assetSubType):andThen(function(result)
			local response: PublishingRequirementsType.PublishingRequirements = result.responseBody
			if response then
				store:dispatch(SetPublishingRequirements(response))
			else
				if DebugFlags.shouldDebugWarnings() then
					warn("Fetching publishing requirement response body is empty")
				end
				store:dispatch(NetworkError(result))
			end
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Fetching publishing requirement was unsuccessful")
				tostring(result)
			end
			store:dispatch(NetworkError(result))
		end)
	end
end