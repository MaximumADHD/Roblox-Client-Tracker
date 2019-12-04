local FFlagFixToolboxPluginScaling = game:GetFastFlag("FixToolboxPluginScaling")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local Sort = require(Plugin.Core.Types.Sort)
local Suggestion = require(Plugin.Core.Types.Suggestion)

local SuggestionsButton = require(Plugin.Core.Components.Suggestions.SuggestionsButton)
local SuggestionsLabel = require(Plugin.Core.Components.Suggestions.SuggestionsLabel)

local Layouter = {}

function Layouter.getAssetsPerRow(width)
	return math.floor((width + Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING)
		/ (Constants.ASSET_WIDTH_NO_PADDING + Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING))
end

function Layouter.getAssetCellHeightWithPadding(showPrices)
	if not FFlagFixToolboxPluginScaling then
		showPrices = false
	end

	local height = Constants.ASSET_HEIGHT
	if showPrices then
		height = height + Constants.PRICE_HEIGHT
	end
	return height + Constants.BETWEEN_ASSETS_VERTICAL_PADDING
end

function Layouter.calculateAssetsHeight(assetCount, maxWidth, showPrices)
	if not FFlagFixToolboxPluginScaling then
		showPrices = false
	end

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
	local totalHeight = (assetHeight * rowsNeeded) - Constants.BETWEEN_ASSETS_VERTICAL_PADDING

	if FFlagFixToolboxPluginScaling then
		totalHeight = totalHeight + Constants.ASSET_VOTING_HEIGHT
	end

	return totalHeight
end

function Layouter.sliceAssetsFromBounds(idsToRender, lowerBound, upperBound)
	local assetIds = {}

	lowerBound = lowerBound or 1
	upperBound = math.min(upperBound or #idsToRender, #idsToRender)

	if lowerBound > 0 and upperBound >= lowerBound then
		for i = lowerBound, upperBound, 1 do
			assetIds[#assetIds + 1] = {idsToRender[i], i}
		end
	end

	return assetIds
end

function Layouter.calculateRenderBoundsForScrollingFrame(scrollingFrame, containerWidth, headerHeight, showPrices)
	if not FFlagFixToolboxPluginScaling then
		showPrices = false
	end

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


function Layouter.calculateSuggestionsHeight(initialText, suggestions, maxWidth)
	local rowCount = 0
	local rowWidth = 0

	-- Starts at 0, not 1
	for index = 0, #suggestions, 1 do
		local text = (index == 0) and initialText or suggestions[index].name
		local textWidth = Constants.getTextSize(text).x
		if (rowWidth + Constants.SUGGESTIONS_INNER_PADDING + textWidth > maxWidth) then
			rowCount = rowCount + 1
			rowWidth = textWidth
		else
			rowWidth = rowWidth + Constants.SUGGESTIONS_INNER_PADDING + textWidth
		end
	end

	if (rowWidth > 0) then
		rowCount = rowCount + 1
	end

	return (rowCount * Constants.SUGGESTIONS_ROW_HEIGHT)
		+ (2 * Constants.SUGGESTIONS_OUTER_PADDING)
end

local function insertRow(state)
	-- Can't check #row as its a dictionary so #state.row == 0
	if (state.rowWidth > 0) then
		state.row.UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, Constants.SUGGESTIONS_INNER_PADDING),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
		state.rows[("Row%d"):format(state.rowCount)] = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, Constants.SUGGESTIONS_ROW_HEIGHT),
			LayoutOrder = state.rowCount,
		}, state.row)

		state.rowCount = state.rowCount + 1
	end

	-- Reset variables for next row
	state.row = {}
	state.rowWidth = 0
end

local function addInitial(state, initialText)
	state.row[initialText] = Roact.createElement(SuggestionsLabel, {
		Text = initialText,
	})

	state.rowWidth = Constants.getTextSize(initialText).x
end

local function addButton(state, index, text, search, maxWidth, onSuggestionSelected)
	local textWidth = Constants.getTextSize(text).x

	-- If adding this text won't fit then add the row we have so far and start a new row
	if (state.rowWidth + Constants.SUGGESTIONS_INNER_PADDING + textWidth > maxWidth) then
		insertRow(state)
	end

	state.row[search] = Roact.createElement(SuggestionsButton, {
		Text = text,
		LayoutOrder = index,
		onClicked = onSuggestionSelected,
	})

	state.rowWidth = state.rowWidth + Constants.SUGGESTIONS_INNER_PADDING + textWidth
end

function Layouter.layoutSuggestions(initialText, suggestions, maxWidth, onSuggestionSelected)
	-- Keep track of the current layout that gets updated by helper functions
	local state = {
		rowCount = 0,
		rows = {},
		rowWidth = 0,
		row = {},
	}

	state.rows.UIPadding = Roact.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, Constants.SUGGESTIONS_OUTER_PADDING),
		PaddingLeft = UDim.new(0, 0),
		PaddingRight = UDim.new(0, 0),
		PaddingTop = UDim.new(0, Constants.SUGGESTIONS_OUTER_PADDING),
	})

	state.rows.UIListLayout = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	addInitial(state, initialText)

	for index, suggestion in ipairs(suggestions) do
		local text = suggestion.name
		local search = suggestion.search
		addButton(state, index, text, search, maxWidth, onSuggestionSelected)
	end

	insertRow(state)

	return state.rows
end

return Layouter
