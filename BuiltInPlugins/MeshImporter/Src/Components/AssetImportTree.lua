local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local CheckboxTreeView = UI.CheckboxTreeView
local Pane = UI.Pane

local AssetImportTree = Roact.PureComponent:extend("AssetImportTree")

local function generateTree(instanceTable, instances)
	local siblings = {}

	for _, instance in pairs(instances) do
		local children = instance:GetChildren()

		local object = {
			text = instance.Name,
			children = #children > 0 and generateTree(instanceTable, children)
		}

		instanceTable[object] = instance

		table.insert(siblings, object)
	end

	return siblings
end

local function initializeChecked(instances)
	local checked = {}
	for _, instance in pairs(instances) do
		checked[instance] = true
	end

	return checked
end

function AssetImportTree:init()
	local instances = self.props.Instances

	self.instanceTable = {}
	self.instanceTree = generateTree(self.instanceTable, instances)

	local checked = initializeChecked(instances)

	self.state = {
		checked = checked,
		selection = {},
	}

	self.onSelectionChange = function(selection)
		self:setState({
			selection = selection
		})
	end

	self.onCheck = function(checked)
		self:setState({
			checked = Cryo.Dictionary.join(self.state.checked, checked)
		})
	end
end

function AssetImportTree:willUpdate(nextProps, nextState)
	local instances = self.props.Instances

	if nextProps.Instances ~= instances then
		self.instanceTable = {}
		self.instanceTree = generateTree(self.instanceTable, nextProps.Instances)

		local checked = initializeChecked(instances)

		self:setState({
			checked = checked,
			selection = {},
		})
	end
end

function AssetImportTree:render()
	local props = self.props
	local state = self.state

	local style = props.Stylizer

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		Padding = style.Padding,
		Spacing = style.Padding,
	}, {
		Toolbar = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, style.TreeViewToolbarHeight),
		}),
		TreeView = Roact.createElement(CheckboxTreeView, {
			RootItems = self.instanceTree,
			Selection = state.selection,
			Checked = state.checked,
			Size = UDim2.new(1, 0, 1, 0),
			OnSelectionChange = self.onSelectionChange,
			OnCheck = self.onCheck
		})
	})
end

AssetImportTree = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(AssetImportTree)

return AssetImportTree
