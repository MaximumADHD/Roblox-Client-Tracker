local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)
local memoize = require(Modules.Common.memoize)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local GameGrid = require(Modules.LuaApp.Components.Games.GameGrid)
local GameCarousel = require(Modules.LuaApp.Components.Games.GameCarousel)
local Device = require(Modules.LuaChat.Device)

local INTERNAL_PADDING = 15
local CAROUSEL_PADDING_DIM = UDim.new(0, Constants.GAME_CAROUSEL_PADDING)

local FTUE_NUMBER_OF_ROWS_FOR_GRID = {
	[Device.FormFactor.PHONE] = 4,
	[Device.FormFactor.TABLET] = 2,
}

local PAGE_PADDING = Constants.GAME_CAROUSEL_PADDING
local CARD_GAP = Constants.GAME_CAROUSEL_CHILD_PADDING
local MIN_CARD_WIDTH = Constants.MIN_CARD_WIDTH_TABLE
local CARD_NUM = Constants.CARD_NUM_TABLE
local math_floor = math.floor
local math_max = math.max

local function getCardWidth(pageWidth)
	if pageWidth then
		local cardNum, minCardWidth = CARD_NUM[#CARD_NUM], MIN_CARD_WIDTH[#MIN_CARD_WIDTH]
		for i = 2, #MIN_CARD_WIDTH do
			local minPageWidth = MIN_CARD_WIDTH[i]*CARD_NUM[i] + math_floor(CARD_NUM[i])*CARD_GAP + PAGE_PADDING
			if pageWidth < minPageWidth then
				cardNum = CARD_NUM[i-1]
				minCardWidth = MIN_CARD_WIDTH[i-1]
				break
			end
		end

		local totalCardWidth = pageWidth - PAGE_PADDING - CARD_GAP*math_floor(cardNum)
		local cardWidth = math_max(totalCardWidth/cardNum, minCardWidth)

		return cardWidth
	end
	return nil
end

local GameCarousels = Roact.PureComponent:extend("GameCarousels")

function GameCarousels:init()
	self.state = {
		cardWidth = nil,
	}
	self.onAbsoluteSizeChanged = function(rbx)
		if self.pageWidth ~= rbx.AbsoluteSize.X then
			self.pageWidth = rbx.AbsoluteSize.X
			local newCardWidth = getCardWidth(self.pageWidth)
			self:setState({
				cardWidth = newCardWidth,
			})
		end
	end
end

function GameCarousels:render()
	local layoutOrder = self.props.LayoutOrder
	local sorts = self.props.sorts
	local onSelected = self.props.onSelected
	local formFactor = self.props.formFactor
	local analytics = self.props.analytics
	local cardWidth = self.state.cardWidth

	--[[
		If only one sort was displayed, assume this is a first time user
		We want to display it in a gamelist.
	]]
	if #sorts == 1 then
		return Roact.createElement(GameGrid, {
			LayoutOrder = layoutOrder,
			onSelected = onSelected,
			Size = UDim2.new(1, 0, 1, 0),
			sortName = sorts[1],
			numberOfRowsToShow = FTUE_NUMBER_OF_ROWS_FOR_GRID[formFactor],
		})
	end

	local carousels = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, INTERNAL_PADDING),
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = CAROUSEL_PADDING_DIM,
			PaddingBottom = CAROUSEL_PADDING_DIM,
			PaddingLeft = CAROUSEL_PADDING_DIM,
			PaddingRight = CAROUSEL_PADDING_DIM,
		}),
	}

	for sortLayoutOrder, sortName in ipairs(sorts) do
		carousels[sortLayoutOrder] = Roact.createElement(GameCarousel, {
			sortName = sortName,
			onSelected = onSelected,
			LayoutOrder = sortLayoutOrder,
			iconSize = cardWidth,
			analytics = analytics,
		})
	end

	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(1, 0, 0, 0),
		fitFields = { Size = FitChildren.FitAxis.Height },
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,

		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChanged,
	}, carousels)
end

return RoactRodux.connect(function(store, props)
	local state = store:GetState()
	return {
		formFactor = state.FormFactor,
		sorts = state.GameSortGroups[props.gameSortGroup].sorts
	}
end)(GameCarousels)
