local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local Components = Framework.UI.Components
local Button = require(Components.DEPRECATED_Button)
local Favorites = require(Components.Favorites)
local Grid = require(Components.Grid)
local Pane = require(Components.Pane)
local TextLabel = require(Components.TextLabel)
local LoadingIndicator = require(Components.LoadingIndicator)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local map = Dash.map

local function createIconCell(i: number): {}
	return {
		text = ("Cell %d"):format(i),
		icon = {
			Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
			Size = UDim2.new(0, 16, 0, 16),
		},
	}
end

local GridStory = Roact.PureComponent:extend("GridStory")

function GridStory:init()
	local cells = {}
	for i = 1, 10000 do
		table.insert(cells, createIconCell(i))
	end
	self.state = {
		cells = cells,
	}
end

function GridStory:render()
	local state = self.state
	return Roact.createElement(Pane, {
		Style = "BorderBox",
		Size = UDim2.new(1, 0, 0, 400),
	}, {
		Grid = Roact.createElement(Grid, {
			Cells = state.cells,
			CellPadding = UDim2.fromOffset(10, 10),
		}),
	})
end

local AutoloadGridStory = Roact.PureComponent:extend("AutoloadGridStory")

function AutoloadGridStory:init()
	self.maxCellCount = 10000
	self.width = 400

	local cells = {}
	for i = 1, 50 do
		table.insert(cells, createIconCell(i))
	end

	self.state = {
		cells = cells,
		loading = false,
	}
end

function AutoloadGridStory:render()
	return Roact.createElement(Pane, {
		Style = "None",
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, self.width),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Padding = UDim.new(0, 10),
		}),
		GridPane = Roact.createElement(Pane, {
			Style = "BorderBox",
			Size = UDim2.new(1, 0, 0, self.width),
			LayoutOrder = 1,
		}, {
			Grid = Roact.createElement(Grid, {
				Cells = self.state.cells,
				CellPadding = UDim2.fromOffset(10, 10),
				OnLoadRange = function(offset: number, count: number)
					if #self.state.cells >= self.maxCellCount then
						return
					end
					if self.state.loading then
						return
					end
					self:setState({
						loading = true,
					})
					local cells = Dash.copy(self.state.cells)
					for i = offset, math.min(count, self.maxCellCount), 1 do
						if not cells[i] then
							cells[i] = createIconCell(i)
						end
					end
					-- Delayed async loading the next chunk of cells
					task.delay(1, function()
						self:setState({
							cells = cells,
							loading = false,
						})
					end)
					return
				end,
				LayoutOrder = 2,
			}),
		}),
		Info = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = `Cells loaded: {#self.state.cells}/{self.maxCellCount}`,
			LayoutOrder = 2,
		}),
		LoadingIndicator = if self.state.loading
			then Roact.createElement(LoadingIndicator, {
				LayoutOrder = 3,
			})
			else nil,
	})
end

local function createCells(count: number): {}
	local cells = {}
	for i = 1, count do
		table.insert(cells, {
			text = `Cell {i}`,
		})
	end
	return cells
end

local function createCellGroups(counts: { number }): { Grid.CellGroup }
	local cellStart = 1
	return map(counts, function(count)
		local cellEnd = cellStart + count - 1
		local text = `Cells {cellStart} - {cellEnd}`
		cellStart += count
		return {
			CellCount = count,
			IsCollapsed = false,
			Text = text,
		}
	end)
end

local function createFavoritesCellGroups(counts: { number })
	local favoritesCounts = { 1408, 137, 42 }

	return map(createCellGroups(counts), function(group, index: number)
		return join(group, {
			Favorites = favoritesCounts[index],
			Text = `Group {index}`,
		})
	end)
end

local function CustomCell(props)
	return Roact.createElement(Button, {
		OnClick = function() end,
		Position = props.Position,
		Size = props.Size,
		Style = "Round",
		Text = props.Cell.text,
	})
end

local function FavoritesGroupHeader(props)
	local style = props.Style

	return Roact.createElement(Pane, {
		BackgroundColor = style.BackgroundColor,
		BorderColor = style.BorderColor,
		Position = props.Position,
		Size = props.Size,
		Spacing = style.Spacing,
		Style = style.Style,
	}, {
		Text = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.X,
			Position = UDim2.fromOffset(8, 0),
			Size = UDim2.fromScale(0, 1),
			Text = props.Text,
			TextColor = style.TextColor,
			TextSize = style.TextSize,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),

		Favorites = Roact.createElement(Favorites, {
			AnchorPoint = Vector2.new(1, 0.5),
			Count = props.Favorites,
			IsFavorited = false,
			OnClick = function() end,
			Position = UDim2.new(1, -8, 0.5, 0),
			Size = UDim2.fromOffset(50, 20),
		}),
	})
end

local CellGroupsStory = Roact.PureComponent:extend("CellGroupsStory")

function CellGroupsStory:init(initialProps)
	self:setState({
		cells = initialProps.Cells,
		groups = initialProps.CellGroups,
	})
end

function CellGroupsStory:render()
	local props = self.props
	local state = self.state

	return Roact.createElement(Grid, {
		Cells = state.cells,
		CellGroups = state.groups,
		CellGroupHeader = join({
			Collapsible = true,
			OnExpandCollapseClicked = function(groupIndex: number)
				self:setState(function(state)
					return {
						groups = map(state.groups, function(group: Grid.CellGroup, index: number)
							if groupIndex == index then
								return join(group, {
									IsCollapsed = not group.IsCollapsed,
								})
							else
								return group
							end
						end),
					}
				end)
			end,
		}, props.CellGroupHeader),
		CellComponent = CustomCell,
		CellPadding = UDim2.fromOffset(10, 10),
		Size = UDim2.new(1, 0, 0, 400),
	})
end

return {
	stories = {
		{
			name = "Basic",
			story = GridStory,
		},
		{
			name = "Async autoload",
			story = AutoloadGridStory,
		},
		{
			name = "CellGroups",
			story = Roact.createElement(CellGroupsStory, {
				Cells = createCells(28),
				CellGroups = createCellGroups({ 12, 7, 3, 6 }),
			}),
		},
		{
			name = "CellGroupHeader",
			story = Roact.createElement(CellGroupsStory, {
				Cells = createCells(24),
				CellGroups = createFavoritesCellGroups({ 8, 8, 8 }),
				CellGroupHeader = {
					AfterContent = true,
					Collapsible = false,
					HeaderComponent = FavoritesGroupHeader,
				},
			}),
		},
	},
}
