local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local StudioInsertCheckTimeSeconds = settings():GetFVariable("StudioInsertCheckTimeSeconds")
local FFlagStudioToolboxInsertAssetCategoryAnalytics = settings():GetFFlag("StudioToolboxInsertAssetCategoryAnalytics")

local AssetInsertionTracker = {}

local insertionTimeCheckTable = {}
for time in StudioInsertCheckTimeSeconds:gmatch("%d+") do
	table.insert(insertionTimeCheckTable, tonumber(time))
end

local function trackPostInsert(time, assetId, asset, currentCategoryName)
	delay(time, function()
		if not asset or not asset.Parent then
			Analytics.onAssetInsertDeleted(time, assetId, currentCategoryName)
		else
			Analytics.onAssetInsertRemains(time, assetId, currentCategoryName)
		end
	end)
end

function AssetInsertionTracker.trackInsert(assetId, asset, currentCategoryName)
	if type(asset) == "table" then
		for _, a in ipairs(asset) do
			AssetInsertionTracker.trackInsert(assetId, a, currentCategoryName)
		end
		return
	end

	for _, time in pairs(insertionTimeCheckTable) do
		if FFlagStudioToolboxInsertAssetCategoryAnalytics then
			trackPostInsert(time, assetId, asset, currentCategoryName)
		else
			trackPostInsert(time, assetId, asset)
		end
	end
end

return AssetInsertionTracker