local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local DropDownList = require(Modules.LuaApp.Components.DropDownList)
local FitChildren = require(Modules.LuaApp.FitChildren)
local GameGrid = require(Modules.LuaApp.Components.Games.GameGrid)
local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)
local StringsLocale = require(Modules.LuaApp.StringsLocale)
local TopBar = require(Modules.LuaApp.Components.TopBar)

local OUTSIDE_MARGIN = 15
local VERTICAL_PADDING = 12

local GamesList = Roact.Component:extend("GamesList")

function GamesList:init()
	self.state = {
		parentSize = Vector2.new(0, 0),
		selectedIndex = 0,
	}
	self.onSignalAbsoluteSize = nil
end

function GamesList:render()
	local gameSorts = self.props.gameSorts or {}
	local gamesInSort = self.props.gamesInSort
	local games = self.props.games or {}
	local parentSize = self.state.parentSize

	local defaultSort = self.props.showSort -- Default category to use.
	local selectedIndex = self.state.selectedIndex -- Currently selected category.

	-- Built a sorted list that contains all required information for the dropdown:
	local listGameInfo = {}
	for gameIndex, gameSort in pairs(gameSorts) do
		local gameInfo = {
			icon = gameSort.displayIcon,
			index = gameIndex,
			name = gameSort.name,
			text = gameSort.displayName or gameSort.name,
		}
		table.insert(listGameInfo, gameInfo)
	end

	-- Sort elements in place, so the order is stable when rendered:
	table.sort(listGameInfo, function(a, b)
		return a.text < b.text
	end)

	-- If selectedIndex is zero then search for the default sort that was passed
	-- in as a property:
	if selectedIndex == 0 then
		selectedIndex = 1
		for i, item in ipairs(listGameInfo) do
			if defaultSort == item.name then
				selectedIndex = i
				break
			end
		end
	end

	-- Defensively select our first item if we had a bad default value:
	if (selectedIndex == 0) and (#listGameInfo > 0) then
		selectedIndex = 1
	end

	-- Create the main elements of this page, but only if we have valid data:
	local elements = {}
	if (parentSize.X > 0) and (parentSize.Y > 0) and (selectedIndex ~= 0) then
		-- Extract category information:
		local thisInfo = listGameInfo[selectedIndex]
		local textCategory = thisInfo.text
		local thisGameSort = gameSorts[thisInfo.index]

		elements["Layout"] = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		elements["DropListCategory"] = Roact.createElement(FitChildren.FitFrame, {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, 0),
			fitFields = {
				Size = FitChildren.FitAxis.Height,
			},
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, VERTICAL_PADDING),
				PaddingLeft = UDim.new(0, OUTSIDE_MARGIN),
				PaddingRight = UDim.new(0, OUTSIDE_MARGIN),
				PaddingTop = UDim.new(0, OUTSIDE_MARGIN),
			}),
			DropDown = Roact.createElement(DropDownList, {
				itemSelected = selectedIndex,
				items = listGameInfo,
				onSelected = function(index)
					self:setState({
						selectedIndex = index
					})
				end,
			}),
		})

		if textCategory then
			-- Text header with category text:
			elements["Header"] = Roact.createElement(SectionHeader, {
				LayoutOrder = 2,
				text = textCategory,
				width = parentSize.x,
			})
		end

		if thisGameSort then
			-- Make the grid of cards for all our games:
			elements["GameGrid"] = Roact.createElement(GameGrid, {
				AnchorPoint = Vector2.new(0.5, 0),
				gameIDs = gamesInSort[thisGameSort.name],
				games = games,
				LayoutOrder = 3,
				ParentSize = parentSize,
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
			})
		end
	end

	-- Build up the outer frame of the page, to include our components:
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
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
				self.onSignalAbsoluteSize:Disconnect()
				self.onSignalAbsoluteSize = nil
			end
		end
	},{
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		TopBar = Roact.createElement(TopBar, {
			LayoutOrder = 1,
			onBack = self.props.onBack,
			showBackButton = true,
			showBuyRobux = true,
			showNotifications = true,
			showSearch = true,
			textKey = { StringsLocale.Keys.GAMES },
		}),
		Scroller = Roact.createElement(FitChildren.FitScrollingFrame, {
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundColor3 = Constants.Color.GRAY4,
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, 0),
			fitFields = {
				CanvasSize = FitChildren.FitAxis.Height,
			},
		}, elements),
	})
end

GamesList = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		gameSortGroups = state.GameSortGroups,
		gameSorts = state.GameSorts,
		games = state.Games,
		gamesInSort = state.GamesInSort,
	}
end)(GamesList)

return GamesList