local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local function getAssetInsertDeletionCheckTime()
	return (settings():GetFVariable("StudioInsertDeletionCheckTimeMS") or 8000) / 1000
end

local AssetInsertionTracker = {}

function AssetInsertionTracker.trackInsert(assetId, asset)
	if type(asset) == "table" then
		for _, a in ipairs(asset) do
			AssetInsertionTracker.trackInsert(assetId, a)
		end
		return
	end

	delay(getAssetInsertDeletionCheckTime(), function()
		if not asset or not asset.Parent then
			Analytics.onAssetInsertDeleted(assetId)
		else
			Analytics.onAssetInsertRemains(assetId)
		end

	end)
end

return AssetInsertionTracker
