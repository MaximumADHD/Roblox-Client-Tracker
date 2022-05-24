local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local Layouter = {}

function Layouter.getAssetsPerRow(width)
	return math.floor(
		(width + Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING)
			/ (Constants.ASSET_WIDTH_NO_PADDING + Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING)
	)
end

function Layouter.getSwimlaneWidth(width)
	local containerWidth = width - (2 * Constants.MAIN_VIEW_PADDING) - Constants.SCROLLBAR_PADDING
	local assetWidth = Constants.ASSET_WIDTH_NO_PADDING + Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING
	local assetPerRow = Layouter.getAssetsPerRow(containerWidth)
	return assetPerRow * assetWidth - Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING
end

function Layouter.getAssetCellHeightWithPadding(showPrices)
	local height = Constants.ASSET_HEIGHT
	if showPrices then
		height = height + Constants.PRICE_HEIGHT
	end
	return height + Constants.BETWEEN_ASSETS_VERTICAL_PADDING
end

function Layouter.calculateAssetsHeight(assetCount, maxWidth, showPrices)
	-- TODO CLIDEVSRVS-1587: All of this is terrible, make it better
	-- This calculates how tall to make the grid container based on how its
	-- going to layout the assets. First get how wide the container is, from
	-- that how many assets can we fit per row. So then how many rows are
	-- needed for all the assets and from that get the height of the
	-- container. In the future, this might be replaceable by
	-- SizeFromContents

	if assetCount == 0 or maxWidth == 0 then
		return 0
	end

	local assetsPerRow = Layouter.getAssetsPerRow(maxWidth)
	if assetsPerRow == 0 then
		return 0
	end

	local assetHeight = Layouter.getAssetCellHeightWithPadding(showPrices)

	local rowsNeeded = math.ceil(assetCount / assetsPerRow)
	local totalHeight = (assetHeight * rowsNeeded)
		- Constants.BETWEEN_ASSETS_VERTICAL_PADDING
		+ Constants.ASSET_VOTING_HEIGHT

	return totalHeight
end

function Layouter.sliceAssetsFromBounds(idsToRender, lowerBound, upperBound)
	local assetIds = {}

	lowerBound = lowerBound or 1
	upperBound = math.min(upperBound or #idsToRender, #idsToRender)

	if lowerBound > 0 and upperBound >= lowerBound then
		for i = lowerBound, upperBound, 1 do
			assetIds[#assetIds + 1] = { idsToRender[i], i }
		end
	end

	return assetIds
end

function Layouter.calculateRenderBoundsForScrollingFrame(scrollingFrame, containerWidth, headerHeight, showPrices)
	if not scrollingFrame then
		return 0, 0
	end

	-- TODO CLIDEVSRVS-1587: Tidy this up
	local assetsPerRow = Layouter.getAssetsPerRow(containerWidth)
	local assetHeight = Layouter.getAssetCellHeightWithPadding(showPrices)

	-- Top and range of the window
	local scrollDist = scrollingFrame.CanvasPosition.Y - headerHeight
	local displayHeight = scrollingFrame.AbsoluteSize.Y

	-- Adjust for padding
	local padding = Constants.SCROLLING_FRAME_VIEW_PADDING
	scrollDist = scrollDist - padding
	displayHeight = displayHeight + (2 * padding)

	-- Convert top and range from pixels to row bounds
	local lowerRowNumber = math.max(math.floor(scrollDist / assetHeight), 0)
	local upperRowNumber = lowerRowNumber + math.ceil(displayHeight / assetHeight)

	-- Rows to indicies
	local lowerBound = (lowerRowNumber * assetsPerRow) + 1
	local upperBound = (upperRowNumber + 1) * assetsPerRow

	return lowerBound, upperBound
end

function Layouter.calculateMainViewHeaderHeight(showTags, suggestionIntro, suggestions, containerWidth)
	local headerHeight = 0
	local headerToBodyPadding = 0

	if showTags then
		headerToBodyPadding = Constants.MAIN_VIEW_VERTICAL_PADDING
		headerHeight = headerHeight + Constants.SEARCH_TAGS_HEIGHT
	end

	headerHeight = math.max(headerHeight, Constants.MAIN_VIEW_NO_HEADER_HEIGHT)

	return headerHeight, headerToBodyPadding
end

return Layouter
