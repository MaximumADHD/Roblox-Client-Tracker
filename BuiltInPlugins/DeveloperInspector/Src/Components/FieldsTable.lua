local FFlagDeveloperInspectorWithContext = game:GetFastFlag("DeveloperInspectorWithContext")
local FFlagDevFrameworkFixTreeViewTheme = game:GetFastFlag("DevFrameworkFixTreeViewTheme")

local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)
local Framework = require(main.Packages.Framework)
local InspectorContext = require(main.Src.Util.InspectorContext)

local FieldTreeRow = require(script.FieldTreeRow)

local DeveloperTools = Framework.DeveloperTools
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local Dash = require(main.Packages.Dash)
local flat = Dash.flat
local values = Dash.values
local sort = table.sort

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local TreeView = UI.TreeView

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
				-- Get the value of the item toggled
				api:getFields(self.props.SelectedPath, self.props.SelectedNodeIndex, item.Path)
			end
			
		end
	end
	self.onSelectField = function(change)
		-- TODO RIDE-2690: Write mode
		-- self.props.selectInstance(change)
	end

	self.renderRow = function(row)
		local style = self.props.Stylizer
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
	local children = values(item.Children or {})
	-- Sort fields by name
	sort(children, function(left, right)
		-- We allow both strings & numbers, but they are not comparable
		if typeof(left) == typeof(right) then
			return left.Name < right.Name
		else
			-- Fallback to ye oldie string comparison
			return tostring(left.Name) < tostring(right.Name)
		end
	end)
	return children
end

function FieldsTable:render()
	local props = self.props
	local children = props.Root.Children

	-- Expand the props and state keys inline
	local fields = flat({
		{
			{
				Name = "Props",
				IsHeading = true,
			},
		},
		getChildren(children.props),
		{
			{
				Name = "State",
				IsHeading = true,
			}
		},
		getChildren(children.state),
		{
			{
				Name = "Context",
				IsHeading = true,
			}
		},
		getChildren(children._context)
	})

	return Roact.createElement(TreeView, {
		Size = UDim2.new(1, 0, 1, 0),
		Expansion = self.props.Expansion,
		RootItems = fields,
		RenderRow = self.renderRow,
		GetChildren = getChildren,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		Style = FFlagDevFrameworkFixTreeViewTheme and "BorderBox" or nil,
	})
end

if FFlagDeveloperInspectorWithContext then
	FieldsTable = withContext({
		Stylizer = ContextServices.Stylizer,
		Inspector = InspectorContext
	})(FieldsTable)
else
	ContextServices.mapToProps(FieldsTable, {
		Stylizer = ContextServices.Stylizer,
		Inspector = InspectorContext
	})
end


return RoactRodux.connect(
	function(state, props)
		return {
			SelectedPath = state.RoactInspector.selectedPath,
			SelectedNodeIndex = state.RoactInspector.selectedNodeIndex,
			Root = state.RoactInspector.fields,
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