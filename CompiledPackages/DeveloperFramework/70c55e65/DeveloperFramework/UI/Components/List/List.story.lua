local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)

local List = UI.List
local Pane = UI.Pane

local insert = table.insert

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local map = Dash.map

-- ListStory
local ListStory = Roact.PureComponent:extend("ListStory")
function ListStory:init()
	local rows = {}
	for i = 1, 10000 do
		insert(rows, {
			text = ("Row %d"):format(i),
			icon = {
				Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
				Size = UDim2.new(0, 16, 0, 16),
			},
		})
	end
	self.state = {
		rows = rows,
	}
end

function ListStory:render()
	local state = self.state
	return Roact.createElement(Pane, {
		Style = "BorderBox",
		Size = UDim2.fromOffset(200, 400),
	}, {
		List = Roact.createElement(List, {
			Rows = state.rows,
		}),
	})
end

-- ListStoryWithHeaderAndExpandedContent
local ListStoryWithHeaderAndExpandedContent = Roact.PureComponent:extend("ListStory")
function ListStoryWithHeaderAndExpandedContent:init()
	self.state = {
		expandedRow = nil,
	}
	local rows = {}
	for i = 1, 10000 do
		insert(rows, {
			key = tostring(i),
			text = ("Row %d"):format(i),
			icon = {
				Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
				Size = UDim2.new(0, 16, 0, 16),
			},
		})
	end
	self.state = {
		rows = rows,
	}
end

function ListStoryWithHeaderAndExpandedContent:render()
	local state = self.state
	local specialRows = {
		["HEADER"] = {
			AbsoluteSize = Vector2.new(200, 20),
			OnRender = function(_, index: number, cellPosition: UDim2, cellSize: UDim2)
				return Roact.createElement("TextLabel", {
					BackgroundColor3 = Color3.fromHex("#ffa078"),
					LayoutOrder = index,
					Position = cellPosition,
					Size = cellSize,
					Text = "Custom Header!!",
				})
			end,
		},
	}
	if state.expandedRow then
		specialRows[state.expandedRow] = {
			AbsoluteSize = Vector2.new(200, 50),
			OnRender = function(row, index: number, cellPosition: UDim2, cellSize: UDim2)
				return Roact.createElement("TextLabel", {
					BackgroundColor3 = Color3.fromHex("#ccfaff"),
					LayoutOrder = index,
					Position = cellPosition,
					Size = cellSize,
					Text = "Expanded " .. row.text,
				})
			end,
		}
	end

	return Roact.createElement(Pane, {
		Style = "BorderBox",
		Size = UDim2.fromOffset(200, 400),
	}, {
		List = Roact.createElement(List, {
			GetRowProps = function(row, index: number, cellPosition: UDim2, cellSize: UDim2)
				return {
					LayoutOrder = index,
					Position = cellPosition,
					Size = cellSize,
					Text = row.text,
					[Roact.Event.Activated] = function()
						self:setState({
							expandedRow = row.key,
						})
					end,
				}
			end,
			Rows = state.rows,
			RowComponent = "TextButton",
			SpecialRows = specialRows,
		}),
	})
end

local function createRows(count: number)
	local rows = {}
	for i = 1, count do
		table.insert(rows, {
			text = `Row {i}`,
		})
	end
	return rows
end

local function createRowGroups(counts: { number })
	local rowStart = 1
	return map(counts, function(count)
		local rowEnd = rowStart + count - 1
		local text = `Rows {rowStart} - {rowEnd}`
		rowStart += count
		return {
			CellCount = count,
			IsCollapsed = false,
			Text = text,
		}
	end)
end

local RowGroupsStory = Roact.PureComponent:extend("RowGroupsStory")

function RowGroupsStory:init(initialProps)
	self:setState({
		rows = initialProps.Rows,
		groups = initialProps.RowGroups,
	})
end

function RowGroupsStory:render()
	local props = self.props
	local state = self.state

	return Roact.createElement(List, {
		GetRowProps = function(row, index: number, cellPosition: UDim2, cellSize: UDim2)
			return {
				LayoutOrder = index,
				Position = cellPosition,
				Size = cellSize,
				Text = row.text,
			}
		end,
		Rows = state.rows,
		RowComponent = "TextButton",
		RowGroups = state.groups,
		RowGroupHeader = join({
			Collapsible = true,
			OnExpandCollapseClicked = function(groupIndex: number)
				self:setState(function(state)
					return {
						groups = map(state.groups, function(group: any, index: number)
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
		}, props.RowGroupHeader),
		Size = UDim2.fromOffset(200, 400),
	})
end

-- Stories
return {
	stories = {
		{
			name = "Basic",
			story = ListStory,
		},
		{
			name = "SpecialRows",
			description = "Example using SpecialRows to make a header and expanded content",
			story = ListStoryWithHeaderAndExpandedContent,
		},
		{
			name = "RowGroups",
			story = Roact.createElement(RowGroupsStory, {
				Rows = createRows(16),
				RowGroups = createRowGroups({ 8, 4, 4 }),
			}),
		},
	},
}
