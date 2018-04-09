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
local memoize = require(Modules.Common.memoize)

local OUTSIDE_MARGIN = 15
local VERTICAL_PADDING = 16
local INNER_PADDING = 10
local TOP_SECTION_HEIGHT = 97

local GamesList = Roact.Component:extend("GamesList")

function GamesList:render()
	local parentSize = self.state.parentSize
	local selectedIndex = self.state.selectedIndex
	local defaultSort = self.props.showSort
	local sorts = self.props.sorts

	local sort = sorts[selectedIndex or defaultSort]

	local elements = parentSize and {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		TopSection = Roact.createElement(FitChildren.FitFrame, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, TOP_SECTION_HEIGHT),
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
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, INNER_PADDING),
			}),
			DropDown = Roact.createElement(DropDownList, {
				itemSelected = selectedIndex or defaultSort,
				items = sorts,
				onSelected = function(index)
					self:setState({
						selectedIndex = index
					})
				end,
			}),
			Header = Roact.createElement(SectionHeader, {
				LayoutOrder = 2,
				text = sort.text,
				width = UDim.new(0, parentSize.x),
			}) or nil,
		}),
		GameGrid = Roact.createElement(GameGrid, {
			AnchorPoint = Vector2.new(0.5, 0),
			games = sort,
			LayoutOrder = 3,
			ParentSize = parentSize,
			Position = UDim2.new(0.5, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
		})
	} or {}

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
			Size = UDim2.new(1, 0, 1, -TopBar.getHeight()),
			fitFields = {
				CanvasSize = FitChildren.FitAxis.Height,
			},
		}, elements),
	})
end

local selectSorts = memoize(function(sortsInfo, sortsGames, games)
	local sorts = {}

	for _, sortInfo in pairs(sortsInfo) do
		local sortGames = sortsGames[sortInfo.name]
		local sort = {
			text = sortInfo.displayName,
			icon = sortInfo.displayIcon,
		}

		for gameLayoutOrder, gameId in ipairs(sortGames) do
			sort[gameLayoutOrder] = games[gameId]
		end

		table.insert(sorts, sort)
		sorts[sort.text] = sort
	end

	table.sort(sorts, function(a, b)
		return a.text < b.text
	end)

	return sorts
end)

GamesList = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		sorts = selectSorts(
			state.GameSorts,
			state.GamesInSort,
			state.Games
		),
	}
end)(GamesList)

return GamesList