local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local GameCard = require(Modules.LuaApp.Components.Games.GameCard)

local GameGrid = Roact.Component:extend("GameGrid")

-- Use default size as the smallest we want to go - we'll scale up from here:
local DEFAULT_CARD_DIMENSIONS = GameCard.getDimensions()
local MARGIN_CARD = 6 -- Actual outside margin on our cards.
local MARGIN_DESIRED = 15 -- Desired outside margin on our cards.

-- Calculate how much smaller we need to make the card to fit our desired
-- margins, given that it already has built-in margins:
local WIDTH_REDUCE = ((MARGIN_DESIRED - MARGIN_CARD) * 2)

function GameGrid:render()
	local games = self.props.games
	local gameIDs = self.props.gameIDs
	if not games or not gameIDs then
		return nil
	end

	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local size = self.props.Size or UDim2.new(1, 0, 1, 0)

	local parentSize = self.props.ParentSize

	-- Calculate the actual size (width) of the game card that we want to use -
	-- screen width, less margins, etc:
	local minCardPaddedWidth = DEFAULT_CARD_DIMENSIONS.cardWidth + (MARGIN_CARD * 2)
	local usableScreenWidth = parentSize.x - WIDTH_REDUCE

	-- Calculate how much free space we'll have across the screen with the
	-- default card size:
	local cardsAcross = math.floor(usableScreenWidth / minCardPaddedWidth)
	local sparePixels = usableScreenWidth - (cardsAcross * minCardPaddedWidth)
	sparePixels = math.floor(sparePixels / cardsAcross)

	-- Increase the size of our cards so that they cleanly fit within the
	-- available screen space:
	local desiredCardSize = DEFAULT_CARD_DIMENSIONS.cardWidth + sparePixels
	local cardPaddedWidth = desiredCardSize + (MARGIN_CARD * 2)
	local cardPaddedHeight = (DEFAULT_CARD_DIMENSIONS.cardHeight - DEFAULT_CARD_DIMENSIONS.cardWidth)
		+ desiredCardSize + (MARGIN_CARD * 2)

	local iconSize = desiredCardSize
	local cardSize = UDim2.new(0, cardPaddedWidth, 0, cardPaddedHeight)

	local gameGrid = {}
	gameGrid["Layout"] = Roact.createElement("UIGridLayout", {
		CellPadding = UDim2.new(0, 0, 0, 0),
		CellSize = cardSize,
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	for index, gameID in ipairs(gameIDs) do
		local game = games[gameID]
		local newGameCard = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = index,
			Size = cardSize,
		}, {
			GameCard = Roact.createElement(GameCard, {
				game = game,
				iconSize = iconSize,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})
		gameGrid[index] = newGameCard
	end

	return Roact.createElement(FitChildren.FitFrame, {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
		fitFields = {
			Size = FitChildren.FitAxis.Height,
		},
	}, gameGrid)
end

return GameGrid