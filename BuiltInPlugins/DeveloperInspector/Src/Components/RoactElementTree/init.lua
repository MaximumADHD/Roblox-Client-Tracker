local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)

local Framework = require(main.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkList = SharedFlags.getFFlagDevFrameworkList()

local InspectorContext = require(main.Src.Util.InspectorContext)

local RoactElementRow = require(script.RoactElementRow)

local DeveloperTools = Framework.DeveloperTools
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local Dash = require(main.Packages.Dash)
local shallowEqual = Dash.shallowEqual
local mapOne = Dash.mapOne
local values = Dash.values

local sort = table.sort

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local TreeView = UI.TreeView

local Actions = main.Src.Actions
local SelectInstance = require(Actions.RoactInspector.SelectInstance)
local ToggleInstance = require(Actions.RoactInspector.ToggleInstance)

local RoactElementTree = Roact.PureComponent:extend("RoactElementTree")

function RoactElementTree:init()

	self.onToggleInstance = function(row)
		local item = row.item
		local shouldExpand = not self.props.Expansion[item]
		self.props.toggleInstance({
			[item] = shouldExpand
		})
		-- Get the latest children for the toggled node
		if shouldExpand then
			local inspector = self.props.Inspector:get()
			local api = inspector:getTargetApi()
			if RoactInspectorApi.isInstance(api) then
				api:getChildren(item.Path)
			end
		end
	end
	self.onSelectInstance = function(row)
		local item = row.item
		local shouldExpand = not self.props.Expansion[item]
		if shouldExpand then
			self.onToggleInstance(row)
		end
		self.props.selectInstance({
			[item] = true
		})
		-- Get the branch nodes for the selected one
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:getBranch(item.Path)
		end
	end
	self.onEnterRow = function(row)
		self.hoveredItem = row.item
		-- Highlight the element in the target
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:highlight(row.item.Path)
		end
	end
	self.onLeaveRow = function(row)
		if row.item ~= self.hoveredItem then
			return
		end
		-- Highlight the element in the target
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:dehighlight()
		end
	end

	if FFlagDevFrameworkList then
		self.getRowProps = function(row, index: number, position: UDim2, size: UDim2)
			local style = self.props.Stylizer
			local flash = mapOne(self.props.Flash, function(flash, path)
				if shallowEqual(path, row.item.Path) then
					return flash
				else
					return nil
				end
			end)
			return {
				Row = row,
				OnEnterRow = self.onEnterRow,
				OnLeaveRow = self.onLeaveRow,
				OnSelect = self.onSelectInstance,
				OnToggle = self.onToggleInstance,
				Position = position,
				Flash = flash,
				IsExpanded = self.props.Expansion[row.item],
				IsSelected = self.props.Selection[row.item],
				Size = size,
				Style = style,
			}
		end
	else
		self.renderRow = function(row)
			local style = self.props.Stylizer
			local flash = mapOne(self.props.Flash, function(flash, path)
				if shallowEqual(path, row.item.Path) then
					return flash
				else
					return nil
				end
			end)
			return Roact.createElement(RoactElementRow, {
				Row = row,
				OnEnterRow = self.onEnterRow,
				OnLeaveRow = self.onLeaveRow,
				OnSelect = self.onSelectInstance,
				OnToggle = self.onToggleInstance,
				Flash = flash,
				IsExpanded = self.props.Expansion[row.item],
				IsSelected = self.props.Selection[row.item],
				Style = style
			})
		end
	end
end

local function getChildren(item)
	local children = item.Children and values(item.Children) or {}
	sort(children, function(left, right)
		return left.Name < right.Name
	end)
	return children
end

function RoactElementTree:render()
	local props = self.props

	return Roact.createElement(TreeView, {
		Size = UDim2.new(1, 0, 1, 0),
		Expansion = props.Expansion,
		GetRowProps = if FFlagDevFrameworkList then self.getRowProps else nil,
		RootItems = getChildren(props.RootInstance),
		RenderRow = if FFlagDevFrameworkList then nil else self.renderRow,
		RowComponent = if FFlagDevFrameworkList then RoactElementRow else nil,
		GetChildren = getChildren,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		Style = "BorderBox",
	})
end

RoactElementTree = withContext({
	Stylizer = ContextServices.Stylizer,
	Inspector = InspectorContext
})(RoactElementTree)

return RoactRodux.connect(
	function(state, props)
		return {
			SelectedNodeIndex = state.RoactInspector.selectedNodeIndex,
			RootInstance = state.RoactInspector.rootInstance,
			Flash = state.RoactInspector.flashInstances,
			Selection = state.RoactInspector.selectedInstances,
			Expansion = state.RoactInspector.expandedInstances
		}
	end,
	function(dispatch)
		return {
			selectInstance = function(change)
				dispatch(SelectInstance(change))
			end,
			toggleInstance = function(change)
				dispatch(ToggleInstance(change))
			end,
		}
	end
)(RoactElementTree)