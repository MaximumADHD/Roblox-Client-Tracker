local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local memoize = require(Modules.Common.memoize)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local GameCard = require(Modules.LuaApp.Components.Games.GameCard)
local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)
local RoactRodux = require(Modules.Common.RoactRodux)

-- Use default size as the smallest we want to go - we'll scale up from here:
local DEFAULT_CARD_DIMENSIONS = GameCard.getDimensions()
local PAGE_PADDING = Constants.GAME_GRID_PADDING
local CARD_GAP = Constants.GAME_GRID_CHILD_PADDING
local TITLE_GRID_PADDING = 14 - CARD_GAP/2 -- Slightly smaller than design specs for letters dropping down below line

local MIN_CARD_WIDTH = Constants.MIN_CARD_WIDTH_TABLE
local CARD_NUM = Constants.CARD_NUM_TABLE
local math_floor = math.floor

local function getCardWidth(pageWidth)
	if pageWidth then
		local cardNum = CARD_NUM[#CARD_NUM]
		for i = 2, #MIN_CARD_WIDTH do
			local minPageWidth = MIN_CARD_WIDTH[i]*CARD_NUM[i] + math_floor(CARD_NUM[i])*CARD_GAP + PAGE_PADDING
			if pageWidth < minPageWidth then
				cardNum = math_floor(CARD_NUM[i-1])
				break
			end
		end

		local totalCardWidth = pageWidth - PAGE_PADDING*2 - CARD_GAP*(cardNum-1)
		local cardWidth = totalCardWidth/cardNum

		return cardWidth
	end
	return nil
end

local GameGrid = Roact.PureComponent:extend("GameGrid")

function GameGrid:init()
	self.state = {
		pageWidth = 0,
		cardWidth = DEFAULT_CARD_DIMENSIONS.cardWidth,
	}
	self.onAbsoluteSizeChanged = function(rbx)
		if self.state.pageWidth ~= rbx.AbsoluteSize.X then
			local newPageWidth = rbx.AbsoluteSize.X
			local newCardWidth = getCardWidth(newPageWidth)
			self:setState({
				pageWidth = newPageWidth,
				cardWidth = newCardWidth,
			})
		end
	end
	self.getMaxGridIndex = memoize(function(pageWidth, cardWidth, numberOfGamesInSort, desiredNumberOfRows)
		local numberOfCardsOnRow = math.floor(pageWidth / cardWidth)
		local numberOfFullRows = math.floor(numberOfGamesInSort / numberOfCardsOnRow)
		desiredNumberOfRows = math.min(desiredNumberOfRows, numberOfFullRows)
		return numberOfCardsOnRow * desiredNumberOfRows
	end)

	self.reportGameDetailOpened = function(index)
		local sort = self.props.sort
		local entries = self.props.entries
		local analytics = self.props.analytics

		local sortName = sort.name
		local itemsInSort = #entries
		local indexInSort = index
		local entry = entries[index]
		local placeId = entry.placeId
		local isAd = entry.isSponsored

		analytics.reportOpenGameDetailFromSeeAll(
			placeId,
			sortName,
			indexInSort,
			itemsInSort,
			isAd)
	end
end

function GameGrid:render()
	local entries = self.props.entries
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size or UDim2.new(1, 0, 1, 0)
	local sort = self.props.sort
	local numberOfRowsToShow = self.props.numberOfRowsToShow
	local pageWidth = self.state.pageWidth
	local cardWidth = self.state.cardWidth

	local cardDimensions = GameCard.getDimensions(cardWidth)
	local cardHeight = cardDimensions.cardHeight

	-- Calculate the number of game cards to spawn if certain number
	-- of rows should be generated for the grid view.
	local maxGridIndex = numberOfRowsToShow and self.getMaxGridIndex(pageWidth, cardWidth, #entries, numberOfRowsToShow)
						or nil

	local gameGrid = {
		Layout = Roact.createElement("UIGridLayout", {
			CellPadding = UDim2.new(0, CARD_GAP, 0, CARD_GAP),
			CellSize = UDim2.new(0, cardWidth, 0, cardHeight),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}

	for index, entry in ipairs(entries) do
		gameGrid[index] = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = index,
		}, {
			Card = Roact.createElement(GameCard, {
				entry = entry,
				iconSize = cardWidth,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				reportGameDetailOpened = self.reportGameDetailOpened,
				index = index
			}),
		})
		if maxGridIndex and index >= maxGridIndex then
			break
		end
	end

	return Roact.createElement(FitChildren.FitFrame, {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Size = size,
		fitFields = {
			Size = FitChildren.FitAxis.Height,
		},
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChanged,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, TITLE_GRID_PADDING),
		}),
		Header = Roact.createElement(FitChildren.FitFrame, {
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			fitFields = {
				Size = FitChildren.FitAxis.Height,
			},
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, PAGE_PADDING),
				PaddingRight = UDim.new(0, PAGE_PADDING),
			}),
			Title = Roact.createElement(SectionHeader, {
				LayoutOrder = 1,
				text = sort.displayName,
				width = UDim.new(1, 0),
			}),
		}),
		GameGrid = Roact.createElement(FitChildren.FitFrame, {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			fitFields = {
				Size = FitChildren.FitAxis.Height,
			},
		}, gameGrid)
	})
end

GameGrid = RoactRodux.connect(function(store, props)
	local state = store:getState()
	local sort = props.sort or state.GameSorts[props.sortName]
	return {
		sort = sort,
		entries = state.EntriesInSort[sort.name],
	}
end)(GameGrid)

return GameGrid