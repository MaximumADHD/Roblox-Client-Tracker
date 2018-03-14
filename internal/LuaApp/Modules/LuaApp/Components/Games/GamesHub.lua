local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local GameCarousel = require(Modules.LuaApp.Components.Games.GameCarousel)
local GamesList = require(Modules.LuaApp.Components.Games.GamesList)
local StringsLocale = require(Modules.LuaApp.StringsLocale)
local TopBar = require(Modules.LuaApp.Components.TopBar)

local GamesHub = Roact.Component:extend("GamesHub")

local SIDE_PADDING = 15
local INTERNAL_PADDING = 20

-- This is a SUPER HACKY way of getting the screen resolution, as part of the work-around for lacking SizeFromContents.
--   MPowell 10/2017
local function GetScreenRes()
	local screenGui = Instance.new("ScreenGui", game.StarterGui)
	local screenRes = screenGui.AbsoluteSize
	screenGui:Destroy()
	return screenRes
end

function GamesHub:init()
	self.state = {
		seeAllSort = "",
	}
end

function GamesHub:render()
	local gameSortGroups = self.props.gameSortGroups
	local gameSorts = self.props.gameSorts
	local games = self.props.games
	local gamesInSort = self.props.gamesInSort

	-- TODO: Could use a state stack to move to the games list page, but for now
	-- this is all we need to get the base-level functionality:
	if self.state.seeAllSort ~= "" then
		return Roact.createElement(GamesList, {
			showSort = self.state.seeAllSort.name,
			onBack = function()
				self:setState( { seeAllSort = "" })
			end
		})
	end

	local gamesHubSorts = gameSortGroups["Games"].sorts

	local width = GetScreenRes().x

	local elements = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = "LayoutOrder",
			FillDirection = "Vertical",
			Padding = UDim.new(0, INTERNAL_PADDING),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}
	local height = 0
	local curLayoutOrder = 1
	local function NextLayoutOrder()
		local oldLayoutOrder = curLayoutOrder
		curLayoutOrder = curLayoutOrder + 1
		return oldLayoutOrder
	end

	local count = 0

	for _, sortId in ipairs(gamesHubSorts) do
		local sort = gameSorts[sortId]
		if sort then
			if sort.isDefaultSort then
				elements["Sort " .. sort.name] = Roact.createElement(GameCarousel, {
					sort = sort,
					games = games,
					gamesInSort = gamesInSort,
					width = width,
					LayoutOrder = NextLayoutOrder(),
					onSeeAll = function() self:setState({ seeAllSort = sort }) end,
				})
				height = height + GameCarousel.height(sort.name, width)
				count = count + 1
			end
		end
	end

	height = height + INTERNAL_PADDING*(count-1)

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
		Scroller = Roact.createElement("ScrollingFrame", {
			BackgroundColor3 = Constants.Color.GRAY4,
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(1, 0, 0, height + SIDE_PADDING*2),
			LayoutOrder = 2,
			ScrollBarThickness = 0,
			Size = UDim2.new(1, 0, 1, 0),
		}, elements),
	})
end

GamesHub = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		gameSortGroups = state.GameSortGroups,
		gameSorts = state.GameSorts,
		games = state.Games,
		gamesInSort = state.GamesInSort,
	}
end)(GamesHub)

return GamesHub