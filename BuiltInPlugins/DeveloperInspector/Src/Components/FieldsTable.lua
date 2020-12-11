local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)
local Framework = require(main.Packages.Framework)
local InspectorContext = require(main.Src.Util.InspectorContext)

local FieldTreeRow = require(script.FieldTreeRow)

local DeveloperTools = require(main.Packages.DeveloperTools)
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local ContextServices = Framework.ContextServices

local UI = Framework.UI
local TreeView = UI.TreeView

local Util = Framework.Util
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local Actions = main.Src.Actions
local SelectField = require(Actions.RoactInspector.SelectField)
local ToggleField = require(Actions.RoactInspector.ToggleField)

local FieldsTable = Roact.PureComponent:extend("FieldsTable")

function FieldsTable:init()

	self.onToggleField = function(row)
		local item = row.item
		local isExpanded = not self.props.Expansion[item]
		self.props.toggleField({
			[item] = isExpanded
		})
		if isExpanded then
			local inspector = self.props.Inspector:get()
			local api = inspector:getTargetApi()
			if RoactInspectorApi.isInstance(api) then
				-- TODO RIDE-2899: Get the value of the item toggled
				--api:getFields(props.SelectedPath, props.SelectedNodeIndex, item.Path)
			end
			
		end
	end
	self.onSelectField = function(change)
		-- TODO RIDE-2690: Write mode
		-- self.props.selectInstance(change)
	end

	self.renderRow = function(row)
		local style
		if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
			style = self.props.Stylizer
		else
			local theme = self.props.Theme
			style = theme:getStyle("Plugin", self)
		end
		return Roact.createElement(FieldTreeRow, {
			Row = row,
			OnSelect = self.onSelectField,
			OnToggle = self.onToggleField,
			IsExpanded = self.props.Expansion[row.item],
			IsSelected = false,
			Style = style
		})
	end
end

local function getChildren(item)
	return item.Children or {}
end

function FieldsTable:render()
	return Roact.createElement(TreeView, {
		Size = UDim2.new(1, 0, 1, 0),
		Expansion = self.props.Expansion,
		RootItems = self.props.Items,
		RenderRow = self.renderRow,
		GetChildren = getChildren,
		ScrollingDirection = Enum.ScrollingDirection.Y
	})
end

ContextServices.mapToProps(FieldsTable, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
	Inspector = InspectorContext
})

return RoactRodux.connect(
	function(state, props)
		return {
			SelectedPath = state.RoactInspector.selectedPath,
			SelectedNodeIndex = state.RoactInspector.selectedNodeIndex,
			Items = state.RoactInspector.fields,
			Selection = state.RoactInspector.selectedFields,
			Expansion = state.RoactInspector.expandedFields
		}
	end,
	function(dispatch)
		return {
			selectField = function(change)
				dispatch(SelectField(change))
			end,
			toggleField = function(change)
				dispatch(ToggleField(change))
			end,
		}
	end
)(FieldsTable)