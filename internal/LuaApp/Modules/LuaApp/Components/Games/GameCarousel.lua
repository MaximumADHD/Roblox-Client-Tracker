local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local Constants = require(Modules.LuaApp.Constants)

local SectionHeaderWithSeeAll = require(Modules.LuaApp.Components.SectionHeaderWithSeeAll)
local Carousel = require(Modules.LuaApp.Components.Carousel)
local GameCard = require(Modules.LuaApp.Components.Games.GameCard)

local CARD_MARGIN = Constants.GAME_CAROUSEL_CHILD_PADDING

local GameCarousel = Roact.PureComponent:extend("GameCarousel")

function GameCarousel:render()
	local sort = self.props.sort
	local games = self.props.games
	local gamesInSort = self.props.gamesInSort
	local LayoutOrder = self.props.LayoutOrder
	local onSeeAll = self.props.onSeeAll

	local gameCards = {}
	for index, gameId in ipairs(gamesInSort[sort.name]) do
		local game = games[gameId]
		gameCards["Card " .. game.name] = Roact.createElement(GameCard, {
			game = game,
			LayoutOrder = index,
		})
	end

	return Roact.createElement(FitChildren.FitFrame, {
		LayoutOrder = LayoutOrder,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		fitFields = {
			Size = FitChildren.FitAxis.Height
		}
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		Title = Roact.createElement(SectionHeaderWithSeeAll, {
			LayoutOrder = 1,
			text = sort.displayName,
			onActivated = function() onSeeAll(sort.displayName) end,
		}),
		Carousel = Roact.createElement(Carousel, {
			LayoutOrder = 2,
			childPadding = CARD_MARGIN,
		}, gameCards),
	})
end

return GameCarousel