local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local GameCard = require(Modules.LuaApp.Components.Games.GameCard)
local SectionHeaderWithSeeAll = require(Modules.LuaApp.Components.SectionHeaderWithSeeAll)

local GameCarousel = Roact.Component:extend("GameCarousel")

local CARD_DIMENSIONS = GameCard.getDimensions()
local SIDE_MARGIN = 15
local CARD_MARGIN = 12

function GameCarousel.height(title, width)
	return CARD_DIMENSIONS.cardHeight + SectionHeaderWithSeeAll.height(title, width)
end

function GameCarousel:render()
	local sort = self.props.sort
	local games = self.props.games
	local gamesInSort = self.props.gamesInSort
	local width = self.props.width
	local LayoutOrder = self.props.LayoutOrder

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = "LayoutOrder",
			FillDirection = "Horizontal",
			Padding = UDim.new(0, CARD_MARGIN),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
	}
	for index, gameId in ipairs(gamesInSort[sort.name]) do
		local game = games[gameId]
		children["Game_" .. game.universeId] = Roact.createElement("Frame", {
			Size = UDim2.new(0, CARD_DIMENSIONS.cardWidth, 0, CARD_DIMENSIONS.cardHeight),
			BackgroundTransparency = 1,
			LayoutOrder = index,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 0),
			}),
			Roact.createElement(GameCard, {
				game = game,
			}),
		})
	end

	local gameCount = #gamesInSort[sort.name]
	local scrollFrameWidth = CARD_DIMENSIONS.cardWidth * gameCount + CARD_MARGIN * (gameCount - 1) + SIDE_MARGIN * 2

	local totalHeight = GameCarousel.height(sort.displayName, width)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, totalHeight),
		LayoutOrder = LayoutOrder,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		Header = Roact.createElement(SectionHeaderWithSeeAll, {
			text = sort.displayName,
			width = width,
			onActivated = self.props.onSeeAll,
		}),
		Carousel = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 0, CARD_DIMENSIONS.cardHeight),
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			CanvasSize = UDim2.new(0, scrollFrameWidth, 0, CARD_DIMENSIONS.cardHeight),
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ClipsDescendants = false,
		}, children),
	})
end

return GameCarousel
