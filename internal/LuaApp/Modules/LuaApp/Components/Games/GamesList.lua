local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)
local memoize = require(Modules.Common.memoize)
local RoactServices = require(Modules.LuaApp.RoactServices)
local RoactNetworking = require(Modules.LuaApp.Services.RoactNetworking)

local Constants = require(Modules.LuaApp.Constants)
local DropDownList = require(Modules.LuaApp.Components.DropDownList)
local GameGrid = require(Modules.LuaApp.Components.Games.GameGrid)
local TopBar = require(Modules.LuaApp.Components.TopBar)
local RefreshScrollingFrame = require(Modules.LuaApp.Components.RefreshScrollingFrame)
local ApiFetchGamesData = require(Modules.LuaApp.Thunks.ApiFetchGamesData)
local AppPage = require(Modules.LuaApp.AppPage)
local AppPageLocalizationKeys = require(Modules.LuaApp.AppPageLocalizationKeys)

local OUTSIDE_MARGIN = 15
local TOP_SECTION_HEIGHT = 65

local GamesList = Roact.PureComponent:extend("GamesList")

function GamesList:init()
	-- TODO: Remove this man-in-the-middle callback when
	-- props in the connecion are handled correctly.
	self.onSelected = function(sort)
		self.props.onSelected(sort)
		self.props.refresh()
	end
end

function GamesList:render()
	local topBarHeight = self.props.topBarHeight
	local sort = self.props.sort
	local sorts = self.props.sorts
	local currentPage = self.props.currentPage or AppPage.Games
	local refresh = self.props.refresh
	local onBack = self.props.onBack
	local analytics = self.props.analytics

	-- Build up the outer frame of the page, to include our components:
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
	},{
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			ZIndex = 2,
			onBack = onBack,
			showBackButton = true,
			showBuyRobux = true,
			showNotifications = true,
			showSearch = true,
			textKey = AppPageLocalizationKeys[currentPage],
		}),
		Scroller = Roact.createElement(RefreshScrollingFrame, {
			Position = UDim2.new(0, 0, 0, topBarHeight),
			Size = UDim2.new(1, 0, 1, -topBarHeight),
			BackgroundColor3 = Constants.Color.GRAY4,
			CanvasSize = UDim2.new(1, 0, 0, 0),
			currentPage = currentPage,
			refresh = refresh,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			TopSection = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -2*OUTSIDE_MARGIN, 0, TOP_SECTION_HEIGHT),
			}, {
				DropDown = Roact.createElement(DropDownList, {
					position = UDim2.new(0, 0, 0, OUTSIDE_MARGIN),
					itemSelected = sort,
					items = sorts,
					onSelected = self.onSelected,
				}),
			}),
			GameGrid = Roact.createElement(GameGrid, {
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 1, 0),
				sort = sort,
				analytics = analytics,
			})
		}),
	})
end

local function sortSorts(a, b)
	return a.displayName < b.displayName
end

local selectSorts = memoize(function(gameSorts)
	local sorts = {}

	for _, sortInfo in pairs(gameSorts) do
		table.insert(sorts, sortInfo)
	end

	table.sort(sorts, sortSorts)

	return sorts
end)

GamesList = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		sorts = selectSorts(state.GameSorts),
		topBarHeight = state.TopBar.totalHeight,
		refresh = function()
			local networking = props.networking
			local sortName = props.sort.name
			return store:Dispatch(ApiFetchGamesData(networking, nil, sortName))
		end,
	}
end)(GamesList)

GamesList = RoactServices.connect({
	networking = RoactNetworking,
})(GamesList)

return GamesList