local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local CheckboxTreeView = UI.CheckboxTreeView
local Pane = UI.Pane

local SetSelectedSettingsItem = require(Plugin.Src.Actions.SetSelectedSettingsItem)
local SetTreeExpansion = require(Plugin.Src.Actions.SetTreeExpansion)
local SetTreeChecked = require(Plugin.Src.Actions.SetTreeChecked)

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

	local checked = props.Checked or generateChecked(props.Instances)
		
	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		Padding = style.Padding,
		Spacing = style.Padding,
	}, {
		Toolbar = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, style.TreeViewToolbarHeight),
		}),
		TreeView = Roact.createElement(CheckboxTreeView, {
			RootItems = props.Instances or {},
			Selection = props.Selection,
			Expansion = props.Expansion,
			Checked = checked,
			Size = UDim2.new(1, 0, 1, 0),
			OnSelectionChange = props.SelectItem,
			OnExpansionChange = props.SetExpansion,
			OnCheck = props.SetChecked,
			GetChildren = self.getChildren,
			GetContents = self.getContents,
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
