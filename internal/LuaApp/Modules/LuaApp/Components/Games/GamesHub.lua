local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local Carousel = require(Modules.LuaApp.Components.Carousel)
local GamesList = require(Modules.LuaApp.Components.Games.GamesList)
local StringsLocale = require(Modules.LuaApp.StringsLocale)
local FitChildren = require(Modules.LuaApp.FitChildren)
local TopBar = require(Modules.LuaApp.Components.TopBar)
local GameCard = require(Modules.LuaApp.Components.Games.GameCard)
local SectionHeaderWithSeeAll = require(Modules.LuaApp.Components.SectionHeaderWithSeeAll)
local memoize = require(Modules.Common.memoize)

local GamesHub = Roact.PureComponent:extend("GamesHub")

local INTERNAL_PADDING = 15
local CAROUSEL_AND_HEADER_HEIGHT = 187

local onSeeAll

function GamesHub:init()
	onSeeAll = function(sort)
		self:setState({
			seeAllSort = sort
		})
	end
end

function GamesHub:render()
	local sorts = self.props.sorts
	local seeAllSort = self.state.seeAllSort

	-- TODO: Could use a state stack to move to the games list page, but for now
	-- this is all we need to get the base-level functionality:
	if seeAllSort then
		return Roact.createElement(GamesList, {
			showSort = seeAllSort,
			onBack = function() onSeeAll(false) end,
		})
	end

	local elements = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, INTERNAL_PADDING),
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, INTERNAL_PADDING),
			PaddingBottom = UDim.new(0, INTERNAL_PADDING),
			PaddingLeft = UDim.new(0, INTERNAL_PADDING),
			PaddingRight = UDim.new(0, INTERNAL_PADDING),
		}),
	}

	for sortLayoutOrder, sort in ipairs(sorts) do
		local gameCards = {}
		for gameLayoutOrder, game in ipairs(sort) do
			gameCards["Card " .. game.name] = Roact.createElement(GameCard, {
				game = game,
				LayoutOrder = gameLayoutOrder,
			})
		end
		elements["Sort: " .. sort.displayName] = Roact.createElement(FitChildren.FitFrame, {
			LayoutOrder = sortLayoutOrder,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, CAROUSEL_AND_HEADER_HEIGHT),
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
			}, gameCards),
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			showBackButton = false,
			showBuyRobux = true,
			showNotifications = true,
			showSearch = true,
			textKey = { StringsLocale.Keys.GAMES },
		}),
		Scroller = Roact.createElement(FitChildren.FitScrollingFrame, {
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(1, 0, 0, 0),
			fitFields = {
				CanvasSize = FitChildren.FitAxis.Height,
			},
			LayoutOrder = 2,
			ScrollBarThickness = 0,
			Size = UDim2.new(1, 0, 1, -TopBar.getHeight()),
		}, elements),
	})
end

local selectSorts = memoize(function(state)
	local sortsId = state.GameSortGroups["Games"].sorts
	local sortsInfo = state.GameSorts
	local sortsGames = state.GamesInSort
	local games = state.Games

	local sorts = {}
	for _, sortId in ipairs(sortsId) do
		local sortInfo = sortsInfo[sortId]
		if sortInfo then
			local sortGames = sortsGames[sortInfo.name]
			local sort = {
				displayName = sortInfo.displayName,
			}
			for gameLayoutOrder, gameId in ipairs(sortGames) do
				sort[gameLayoutOrder] = games[gameId]
			end
			table.insert(sorts, sort)
		end
	end

	return sorts
end)

GamesHub = RoactRodux.connect(function(store, props)
	local state = store:GetState()
	return {
		sorts = selectSorts(state)
	}
end)(GamesHub)

return GamesHub