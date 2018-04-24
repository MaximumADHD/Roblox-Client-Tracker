local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)

local GameCarousel = require(Modules.LuaApp.Components.Games.GameCarousel)
local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)
local GameGrid = require(Modules.LuaApp.Components.Games.GameGrid)

local HomeGamePlaces = Roact.PureComponent:extend("HomeGamePlaces")

local HEADER_SIDE_PADDING = 15
local CAROUSEL_PADDING = Constants.GAME_CAROUSEL_PADDING
local CAROUSEL_PADDING_DIM = UDim.new(0, CAROUSEL_PADDING)

function HomeGamePlaces:init()
	self.state = {
		parentSize = Vector2.new(0, 0),
		selectedIndex = 0,
	}
	self.onSignalAbsoluteSize = nil
end

function HomeGamePlaces:render()
	local games = self.props.games
	local gameSorts = self.props.gameSorts
	local gameSortGroups = self.props.gameSortGroups
	local gamesInSort = self.props.gamesInSort
	local layoutOrder = self.props.LayoutOrder
	local onSeeAll = self.props.onSeeAll
	local parentSize = self.state.parentSize

	local homeSorts = gameSortGroups[Constants.GameSortGroups.HomeGames].sorts
	local content = {}

	local curLayoutOrder = 1
	local function nextLayoutOrder()
		local oldLayoutOrder = curLayoutOrder
		curLayoutOrder = curLayoutOrder + 1
		return oldLayoutOrder
	end

	if homeSorts then
		-- If only one game sort exists for Home Page, consider the user to be
		-- first time user and show grid view.
		if #homeSorts == 1 then
			local firstTimeUserSort = gameSorts[homeSorts[1]]

			-- GameGrid expects a list of games as opposed to game ids in sort.
			local listOfGames = {}
			local gameIDs = gamesInSort[firstTimeUserSort.name]
			for _, gameID in ipairs(gameIDs) do
				local game = games[gameID]
				table.insert(listOfGames, game)
			end

			content["Layout"] = Roact.createElement("UIListLayout", {
				SortOrder = "LayoutOrder",
				FillDirection = "Vertical",
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})
			content["GameGridHeader"] = Roact.createElement(FitChildren.FitFrame, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				fitFields = {
					Size = FitChildren.FitAxis.Height,
				},
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 0),
					PaddingBottom = CAROUSEL_PADDING_DIM,
					PaddingLeft = CAROUSEL_PADDING_DIM,
					PaddingRight = CAROUSEL_PADDING_DIM,
				}),
				Header = Roact.createElement(SectionHeader, {
					LayoutOrder = 1,
					sidePadding = HEADER_SIDE_PADDING,
					text = firstTimeUserSort.displayName,
				}),
			})
			content["GameGridContents"] = Roact.createElement(GameGrid, {
				AnchorPoint = Vector2.new(0.5, 0),
				games = listOfGames,
				LayoutOrder = 2,
				ParentSize = parentSize,
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
			})
		else
			content["Layout"] = Roact.createElement("UIListLayout", {
				SortOrder = "LayoutOrder",
				FillDirection = "Vertical",
				Padding = CAROUSEL_PADDING_DIM,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})
			content["Padding"] = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 0),
				PaddingBottom = CAROUSEL_PADDING_DIM,
				PaddingLeft = CAROUSEL_PADDING_DIM,
				PaddingRight = CAROUSEL_PADDING_DIM,
			})
			for _, sortToken in ipairs(homeSorts) do
				local sort = gameSorts[sortToken]
				if not sort then
					error("Erroneous sort token found in HomeGames sort group")
				else
					content["Sort " .. sort.name] = Roact.createElement(GameCarousel, {
						sort = sort,
						games = games,
						gamesInSort = gamesInSort,
						LayoutOrder = nextLayoutOrder(),
						onSeeAll = function() onSeeAll(sort) end,
					})
				end
			end
		end
	end

	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(1, 0, 0, 0),
		fitFields = { Size = FitChildren.FitAxis.Height },
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,

		[Roact.Ref] = function(rbx)
			if rbx then
				-- Don't leak signals if we're already connected:
				if self.onSignalAbsoluteSize then
					self.onSignalAbsoluteSize:Disconnect()
				end

				-- This tracks our size if it changes (device rotation, etc):
				self.onSignalAbsoluteSize = rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					if (self.state.parentSize.X ~= rbx.AbsoluteSize.X) and (self.state.parentSize.Y ~= rbx.AbsoluteSize.Y) then
						self:setState({
							parentSize = rbx.AbsoluteSize,
						})
					end
				end)

				-- This sets our current size when the page is created:
				spawn(function()
					self:setState({
						parentSize = rbx.AbsoluteSize,
					})
				end)
			else
				if self.onSignalAbsoluteSize then
					self.onSignalAbsoluteSize:Disconnect()
					self.onSignalAbsoluteSize = nil
				end
			end
		end
	}, content)
end

function HomeGamePlaces:willUnmount()
	if self.onSignalAbsoluteSize then
		self.onSignalAbsoluteSize:Disconnect()
		self.onSignalAbsoluteSize = nil
	end
end

HomeGamePlaces = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		games = state.Games,
		gameSorts = state.GameSorts,
		gameSortGroups = state.GameSortGroups,
		gamesInSort = state.GamesInSort,
	}
end)(HomeGamePlaces)

return HomeGamePlaces