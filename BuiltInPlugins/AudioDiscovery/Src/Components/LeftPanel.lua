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

local Analytics = require(Plugin.Src.Util.Analytics)

local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")

local SelectRow = require(Plugin.Src.Actions.SelectRow)
local SortTable = require(Plugin.Src.Actions.SortTable)

local Stylizer = Framework.Style.Stylizer

local SelectionService = game:GetService("Selection")

local AudioTable = require(Plugin.Src.Components.AudioTable)

local LeftCell = require(script.LeftCell)

local LeftPanel = Roact.PureComponent:extend("LeftPanel")

function LeftPanel:init()
	self.state = {
		sizes = {
			UDim.new(1/10, 0),
			UDim.new(2/10, 0),
			UDim.new(3/10, 0),
			UDim.new(1/10, 0),
			UDim.new(3/10, 0),
		},
	}
	self.onSizesChange = function(sizes: {UDim})
		self:setState({
			sizes = sizes
		})
	end
	self.onSelectRow = function(row, index: number)
		local locations = self.props.Locations[row.Id]
		if locations and #locations > 0 then
			SelectionService:Set({
				locations[1].Instance
			})
		end
		self.props.OnSelectRow(index)
		Analytics:reportSelect()
	end
end

function LeftPanel:render()
	local props = self.props
	local state = self.state
	local localization = props.Localization
	local columns = {
		{
			Name = localization:getText("Table", "OK"),
		}, {
			Name = localization:getText("Table", "Id"),
		}, {
			Name = localization:getText("Table", "Name"),
		}, {
			Name = localization:getText("Table", "Time"),
		}, {
			Name = localization:getText("Table", "Creator"),
		},
	}
	local columnsWithSizes = map(columns, function(column, index: number)
		return join(column, {
			Width = state.sizes[index]
		})
	end)
	return Roact.createElement(AudioTable, {
		Scroll = true,
		UseScale = if FFlagDevFrameworkSplitPane then true else nil,
		ClampSize = if FFlagDevFrameworkSplitPane then true else nil,
		OnColumnSizesChange = if FFlagDevFrameworkSplitPane then self.onSizesChange else nil,
		SortIndex = props.SortIndex,
		SortOrder = props.SortOrder,
		OnSortChange = props.Sort,
		CellComponent = LeftCell,
		Columns = columnsWithSizes,
		Rows = props.Rows,
		SelectedRow = props.SelectedRow,
		OnSelectRow = self.onSelectRow,
		CellProps = {
			Locations = props.Locations,
		}
	})
end

LeftPanel = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(LeftPanel)

return RoactRodux.connect(
	function(state, props)
		return {
			Locations = state.Audio.Locations,
			Rows = state.Audio.Rows,
			SelectedRow = state.Audio.SelectedRow,
			SortIndex = state.Audio.Left.SortIndex,
			SortOrder = state.Audio.Left.SortOrder,
		}
	end,
	function(dispatch)
		return {
			OnSelectRow = function(index: number)
				dispatch(SelectRow(index))
			end,
			Sort = function(index: number, order: Enum.SortDirection)
				dispatch(SortTable("Left", index, order))
			end,
		}
	end
)(LeftPanel)
