local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = ContextServices.Stylizer

local UI = Framework.UI
local CheckboxTreeView = UI.CheckboxTreeView
local Pane = UI.Pane
local Separator = UI.Separator

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local TreeViewToolbar = require(Plugin.Src.Components.TreeViewToolbar)

local SetSelectedSettingsItem = require(Plugin.Src.Actions.SetSelectedSettingsItem)
local SetTreeExpansion = require(Plugin.Src.Actions.SetTreeExpansion)
local SetTreeChecked = require(Plugin.Src.Actions.SetTreeChecked)

local SEPARATOR_WEIGHT = 1

local AssetImportTree = Roact.PureComponent:extend("AssetImportTree")

local function generateChecked(instances)
	local checked = {}

	local function percolateDown(item)
		for _, instance in pairs(item) do
			checked[instance] = true

			local children = instance:GetChildren()
			if #children > 0 then
				percolateDown(children)
			end
		end
	end

	percolateDown(instances)

	return checked
end

function AssetImportTree:init()
	self.getChildren = function(item)
		return item:GetChildren()
	end

	self.getContents = function(item)
		return item.ImportName, nil
	end
end

function AssetImportTree:render()
	local props = self.props
	local state = self.state

	local style = props.Stylizer

	local toolbarHeight = style.Sizes.ToolbarHeight + SEPARATOR_WEIGHT

	local checked = props.Checked or generateChecked(props.Instances)

	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
	}, {
		Toolbar = Roact.createElement(TreeViewToolbar, {
			Expansion = props.Expansion,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnExpansionChange = props.SetExpansion,
			Size = UDim2.new(1, 0, 0, toolbarHeight),
		}),

		Separator = Roact.createElement(Separator, {
			DominantAxis = Enum.DominantAxis.Width,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),

		TreeView = Roact.createElement(CheckboxTreeView, {
			RootItems = props.Instances or {},
			Selection = props.Selection,
			Expansion = props.Expansion,
			Checked = checked,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 1, -toolbarHeight),
			OnSelectionChange = props.SelectItem,
			OnExpansionChange = props.SetExpansion,
			OnCheck = props.SetChecked,
			GetChildren = self.getChildren,
			GetContents = self.getContents,
			ExpandableRoot = false,
		})
	})
end

AssetImportTree = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(AssetImportTree)

local function mapStateToProps(state)
	return {
		Selection = state.selectedSettingsItem and {
			[state.selectedSettingsItem] = true,
		} or {},
		Expansion = state.settingsExpansion or {},
		Checked = state.settingsChecked or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SelectItem = function(newSelection)
			dispatch(SetSelectedSettingsItem(next(newSelection)))
		end,
		SetExpansion = function(expansion)
			dispatch(SetTreeExpansion(expansion))
		end,
		SetChecked = function(checked)
			dispatch(SetTreeChecked(checked))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetImportTree)
