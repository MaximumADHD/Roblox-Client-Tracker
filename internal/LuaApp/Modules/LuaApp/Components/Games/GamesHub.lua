local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)
local RoactAnalyticsGamesPage = require(Modules.LuaApp.Services.RoactAnalyticsGamesPage)
local RoactNetworking = require(Modules.LuaApp.Services.RoactNetworking)
local RoactServices = require(Modules.LuaApp.RoactServices)

local Constants = require(Modules.LuaApp.Constants)
local AppPage = require(Modules.LuaApp.AppPage)

local TopBar = require(Modules.LuaApp.Components.TopBar)
local RefreshScrollingFrame = require(Modules.LuaApp.Components.RefreshScrollingFrame)
local ApiFetchGamesData = require(Modules.LuaApp.Thunks.ApiFetchGamesData)
local GameCarousels = require(Modules.LuaApp.Components.GameCarousels)
local GamesList = require(Modules.LuaApp.Components.Games.GamesList)
local AppPageLocalizationKeys = require(Modules.LuaApp.AppPageLocalizationKeys)


local CURRENT_PAGE = AppPage.Games

local GamesHub = Roact.PureComponent:extend("GamesHub")

function GamesHub:init()
	local function setCurrentSort(sort)
		return self:setState({
			seeAllSort = sort
		})
	end

	self.onSelected = function(sort)
		return setCurrentSort(sort)
	end

	self.onBack = function()
		return setCurrentSort(false)
	end
end

function GamesHub:render()
	local topBarHeight = self.props.topBarHeight
	local refresh = self.props.refresh
	local seeAllSort = self.state.seeAllSort
	local gamesPageAnalytics = self.props.gamesPageAnalytics

	if seeAllSort then
		return Roact.createElement(GamesList, {
			currentPage = CURRENT_PAGE,
			sort = seeAllSort,
			onBack = self.onBack,
			onSelected = self.onSelected,
			analytics = gamesPageAnalytics,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
	}, {
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			showBackButton = false,
			showBuyRobux = true,
			showNotifications = true,
			showSearch = true,
			textKey = AppPageLocalizationKeys[CURRENT_PAGE],
			ZIndex = 2,
		}),
		Scroller = Roact.createElement(RefreshScrollingFrame, {
			Position = UDim2.new(0, 0, 0, topBarHeight),
			Size = UDim2.new(1, 0, 1, -topBarHeight),
			BackgroundColor3 = Constants.Color.GRAY4,
			CanvasSize = UDim2.new(1, 0, 0, 0),
			currentPage = CURRENT_PAGE,
			refresh = refresh,
		}, {

			--[[
				Adding UIListLayout to go around the issue with FitChildren wrongly 
				calculating when the AbsolutePosition of its only child is negative
			]]
			layout = Roact.createElement("UIListLayout"),
			GameCarousels = Roact.createElement(GameCarousels, {
				onSelected = self.onSelected,
				gameSortGroup = Constants.GameSortGroups.Games,
				analytics = gamesPageAnalytics,
			}),
		}),
	})
end

GamesHub = RoactRodux.connect(function(store, props)
	local state = store:GetState()
	return {
		topBarHeight = state.TopBar.totalHeight,
		refresh = function()
			local networking = props.networking
			return store:Dispatch(ApiFetchGamesData(networking))
		end
	}
end)(GamesHub)

return RoactServices.connect({
	networking = RoactNetworking,
	gamesPageAnalytics = RoactAnalyticsGamesPage,
})(GamesHub)
