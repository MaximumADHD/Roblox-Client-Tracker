local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local FitChildren = require(Modules.LuaApp.FitChildren)
local Constants = require(Modules.LuaApp.Constants)

local SectionHeaderWithSeeAll = require(Modules.LuaApp.Components.SectionHeaderWithSeeAll)
local Carousel = require(Modules.LuaApp.Components.Carousel)
local GameCard = require(Modules.LuaApp.Components.Games.GameCard)

local CARD_MARGIN = Constants.GAME_CAROUSEL_CHILD_PADDING
local CAROUSEL_AND_HEADER_HEIGHT = 183

local GameCarousel = Roact.PureComponent:extend("GameCarousel")

function GameCarousel:init()
	self.onSeeAll = function(seeAllSortName)
		local onSelected = self.props.onSelected
		local sort = self.props.sort
		local analytics = self.props.analytics
		local indexOnPage = self.props.LayoutOrder

		-- show the sort
		onSelected(seeAllSortName)

		-- report to the server that we've tapped on the SeeAll button
		local sortId = sort.name
		analytics.reportSeeAll(sortId, indexOnPage)
	end

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

		analytics.reportOpenGameDetail(
			placeId,
			sortName,
			indexInSort,
			itemsInSort,
			isAd)
	end
end

function GameCarousel:render()
	local sort = self.props.sort
	local entries = self.props.entries
	local layoutOrder = self.props.LayoutOrder
	local iconSize = self.props.iconSize

	local gameCards = {}
	for index, entry in ipairs(entries) do
		gameCards[index] = Roact.createElement(GameCard, {
			entry = entry,
			LayoutOrder = index,
			iconSize = iconSize,
			reportGameDetailOpened = self.reportGameDetailOpened,
			index = index,
		})
	end

	return Roact.createElement(FitChildren.FitFrame, {
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, CAROUSEL_AND_HEADER_HEIGHT),
		fitFields = {
			Size = FitChildren.FitAxis.Height,
		},
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		Title = Roact.createElement(SectionHeaderWithSeeAll, {
			LayoutOrder = 1,
			text = sort.displayName,
			value = sort,
			onSelected = self.onSeeAll,
		}),
		Carousel = Roact.createElement(Carousel, {
			LayoutOrder = 2,
			childPadding = CARD_MARGIN,
		}, gameCards),
	})
end

return RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		sort = state.GameSorts[props.sortName],
		entries = state.EntriesInSort[props.sortName],
	}
end)(GameCarousel)