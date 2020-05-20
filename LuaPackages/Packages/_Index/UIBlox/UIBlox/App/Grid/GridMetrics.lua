--[[
	Documentation:
	https://confluence.roblox.com/display/DESIGN/Grid+Systems
	https://docs.google.com/spreadsheets/d/1zLNqGop2ha2Y4Twcvh3w_LwuAr2CwkM-AvTlhPrz7WU/edit?usp=sharing
]]

local GridRoot = script.Parent
local AppRoot = GridRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent
local t = require(Packages.t)

local mediumSettings = {
	minimumItemsPerRow = 2,
	minimumItemWidth = 160,
}

local largeSettings = {
	minimumItemsPerRow = 1,
	minimumItemWidth = 332,
}

local function getItemMetrics(containerWidth, horizontalPadding, settingsTable)
	local itemsPerRow = math.floor(
		(containerWidth + horizontalPadding) / (settingsTable.minimumItemWidth + horizontalPadding))
	itemsPerRow = math.max(settingsTable.minimumItemsPerRow, itemsPerRow)
	local itemWidth = math.floor((containerWidth - (itemsPerRow - 1) * horizontalPadding) / itemsPerRow)

	return {
		itemsPerRow = itemsPerRow,
		itemWidth = itemWidth,
	}
end

local GridMetrics = {}

local isMetricsSettings = t.strictInterface({
	minimumItemsPerRow = t.intersection(t.integer, t.numberMin(1)),
	minimumItemWidth = t.numberMin(0),
})

local isGetterFunctionArgs = t.tuple(
	t.numberMin(0), -- containerWidth
	t.number -- horizontalPadding
)

function GridMetrics.makeCustomMetricsGetter(settings)
	assert(isMetricsSettings(settings))

	return function(containerWidth, horizontalPadding)
		assert(isGetterFunctionArgs(containerWidth, horizontalPadding))
		return getItemMetrics(containerWidth, horizontalPadding, settings)
	end
end

GridMetrics.getLargeMetrics = GridMetrics.makeCustomMetricsGetter(largeSettings)
GridMetrics.getMediumMetrics = GridMetrics.makeCustomMetricsGetter(mediumSettings)

function GridMetrics.getSmallMetrics(containerWidth, horizontalPadding)
	-- The small metrics are specifically defined to be one card more than the
	-- medium metrics, so we grab that and then compute item width manually.
	local mediumItemsPerRow = GridMetrics.getMediumMetrics(containerWidth, horizontalPadding).itemsPerRow
	local itemsPerRow = mediumItemsPerRow + 1
	local itemWidth = math.floor((containerWidth - (itemsPerRow - 1) * horizontalPadding) / itemsPerRow)

	return {
		itemsPerRow = itemsPerRow,
		itemWidth = itemWidth,
	}
end

return GridMetrics