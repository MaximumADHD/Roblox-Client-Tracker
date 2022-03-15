local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local map = Dash.map
local join = Dash.join

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")

local SortTable = require(Plugin.Src.Actions.SortTable)

local SelectionService = game:GetService("Selection")

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local AudioTable = require(Plugin.Src.Components.AudioTable)

local RightCell = require(script.RightCell)

local RightPanel = Roact.PureComponent:extend("RightPanel")

function RightPanel:init()
	self.state = {
		sizes = {
			UDim.new(1/3, 0),
			UDim.new(2/3, 0),
		},
	}
	self.onSizesChange = function(sizes: {UDim})
		self:setState({
			sizes = sizes
		})
	end
end

function RightPanel:render()
	local props = self.props
	local state = self.state
	local localization = props.Localization
	local columns = {
		{
			Name = localization:getText("Table", "Instance"),
		}, {
			Name = localization:getText("Table", "Path"),
		},
	}
	local columnsWithSizes = map(columns, function(column, index: number)
		return join(column, {
			Width = state.sizes[index]
		})
	end)
	if props.Rows and #props.Rows > 0 then
		return Roact.createElement(AudioTable, {
			Scroll = true,
			UseScale = if FFlagDevFrameworkSplitPane then true else nil,
			ClampSize = if FFlagDevFrameworkSplitPane then true else nil,
			OnColumnSizesChange = if FFlagDevFrameworkSplitPane then self.onSizesChange else nil,
			SortIndex = props.SortIndex,
			SortOrder = props.SortOrder,
			OnSortChange = props.Sort,
			Columns = columnsWithSizes,
			Rows = props.Rows,
			CellComponent = RightCell,
			OnSelectRow = function(row)
				SelectionService:Set({
					row.Instance
				})
			end,
		})
	else
		return Roact.createElement(Pane, {
			Padding = 5,
		}, {
			Child = Roact.createElement(TextLabel, {
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				Size = UDim2.fromScale(1, 1),
				RichText = true,
				Text = localization:getText("Plugin", "Info")
			})
		})
	end
end

RightPanel = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(RightPanel)

return RoactRodux.connect(
	function(state, props)
		local selectedRow = if state.Audio.SelectedRow then state.Audio.Rows[state.Audio.SelectedRow] else nil
		return {
			Rows = if selectedRow then state.Audio.Locations[selectedRow.Id] else {},
			SortOrder = state.Audio.Right.SortOrder,
			SortIndex = state.Audio.Right.SortIndex,
		}
	end,
	function(dispatch)
		return {
			Sort = function(index: number, order: Enum.SortDirection)
				dispatch(SortTable("Right", index, order))
			end,
		}
	end
)(RightPanel)
