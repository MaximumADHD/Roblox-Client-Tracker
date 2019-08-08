local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local StudioInsertCheckTimeSeconds = settings():GetFVariable("StudioInsertCheckTimeSeconds")

local AssetInsertionTracker = {}

local insertionTimeCheckTable = {}
for time in StudioInsertCheckTimeSeconds:gmatch("%d+") do
	table.insert(insertionTimeCheckTable, tonumber(time))
end

local function trackPostInsert(time, assetId, asset)
	delay(time, function()
		if not asset or not asset.Parent then
			Analytics.onAssetInsertDeleted(time, assetId)
		else
			Analytics.onAssetInsertRemains(time, assetId)
		end
	end)
end

function AssetInsertionTracker.trackInsert(assetId, asset)
	if type(asset) == "table" then
		for _, a in ipairs(asset) do
			AssetInsertionTracker.trackInsert(assetId, a)
		end
		return
	end

	for _, time in pairs(insertionTimeCheckTable) do
		trackPostInsert(time, assetId, asset)
	end
end

return AssetInsertionTracker