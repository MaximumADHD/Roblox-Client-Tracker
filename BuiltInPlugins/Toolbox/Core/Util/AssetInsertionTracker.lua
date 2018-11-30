local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local StudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")
local StudioInsertCheckTimeSeconds = settings():GetFVariable("StudioInsertCheckTimeSeconds")

local function DEPRECATED_getAssetInsertDeletionCheckTime()
	return (settings():GetFVariable("StudioInsertDeletionCheckTimeMS") or 8000) / 1000
end

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

	if StudioLuaWidgetToolboxV2 then
		for _, time in pairs(insertionTimeCheckTable) do
			trackPostInsert(time, assetId, asset)
		end
	else
		delay(DEPRECATED_getAssetInsertDeletionCheckTime(), function()
			if not asset or not asset.Parent then
				Analytics.DEPRECATED_onAssetInsertDeleted(assetId)
			else
				Analytics.DEPRECATED_onAssetInsertRemains(assetId)
			end
		end)
	end
end



return AssetInsertionTracker
