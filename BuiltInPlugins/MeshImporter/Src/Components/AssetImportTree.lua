local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local InstanceTreeView = UI.InstanceTreeView
local Pane = UI.Pane

local AssetImportTree = Roact.PureComponent:extend("AssetImportTree")

function AssetImportTree:init()
	self.state = {
		expansion = {},
		selection = {},
	}

	self.onExpansionChange = function(expansion)
		self:setState({
			expansion = Cryo.Dictionary.join(self.state.expansion, expansion)
		})
	end

	self.onSelectionChange = function(selection)
		self:setState({
			selection = selection
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
		TreeView = Roact.createElement(InstanceTreeView, {
			Instances = props.Instances or {},
			Expansion = state.expansion,
			Selection = state.selection,
			Size = UDim2.new(1, 0, 1, 0),
			OnExpansionChange = self.onExpansionChange,
			OnSelectionChange = self.onSelectionChange,
		})
	})
end

ContextServices.mapToProps(AssetImportTree, {
	Localization = Localization,
	Stylizer = Stylizer,
})

return AssetImportTree
