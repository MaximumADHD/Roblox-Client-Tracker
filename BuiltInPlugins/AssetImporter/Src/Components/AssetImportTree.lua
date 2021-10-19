local AssetImportService = game:GetService("AssetImportService")

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
local Image = UI.Decoration.Image
local Pane = UI.Pane
local Separator = UI.Separator
local Tooltip = UI.Tooltip

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local TreeViewToolbar = require(Plugin.Src.Components.TreeViewToolbar)

local SetSelectedSettingsItem = require(Plugin.Src.Actions.SetSelectedSettingsItem)
local SetTreeExpansion = require(Plugin.Src.Actions.SetTreeExpansion)
local SetInstanceMap = require(Plugin.Src.Actions.SetInstanceMap)
local UpdateChecked = require(Plugin.Src.Thunks.UpdateChecked)

local SEPARATOR_WEIGHT = 1
local ICON_DIMENSION = 20
local STATUS_TYPE = {
	Error = 1,
	Warning = 2,
}

local AssetImportTree = Roact.PureComponent:extend("AssetImportTree")

local function generateChecked(instances)
	local checked = {}

	local function percolateDown(itemList: {ImporterBaseSettings})
		for _, instance in pairs(itemList) do
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

local function generateStatuses(instances)
	local statuses = {}

	local function percolateDown(itemList: {ImporterBaseSettings})
		local errorsPresent = false
		local warningsPresent = false

		for _, instance in pairs(itemList) do
			local statusTable = instance:GetStatuses()
			local errorList = statusTable.Errors
			local warningList = statusTable.Warnings

			statuses[instance] = {
				errorsCount = #errorList,
				warningsCount = #warningList,
				subtreeErrorsPresent = #errorList > 0,
				subtreeWarningsPresent = #warningList > 0,
			}

			local subtreeErrorsPresent = false
			local subtreeWarningsPresent = false
			local children = instance:GetChildren()
			if #children > 0 then
				local errors, warnings = percolateDown(children)

				subtreeErrorsPresent = subtreeErrorsPresent or errors
				subtreeWarningsPresent = subtreeWarningsPresent or warnings
			end

			errorsPresent = subtreeErrorsPresent or errorsPresent or #errorList > 0
			warningsPresent = subtreeWarningsPresent or warningsPresent or #warningList > 0

			statuses[instance].subtreeErrorsPresent = subtreeErrorsPresent or statuses[instance].subtreeErrorsPresent
			statuses[instance].subtreeWarningsPresent = subtreeWarningsPresent or statuses[instance].subtreeWarningsPresent
		end

		return errorsPresent, warningsPresent
	end

	percolateDown(instances)

	return statuses
end

local function getStatusImage(status, statusType, layoutOrderIterator, localization)
	local statusIcon, statusName, statusesCount, subtreeStatusesPresent

	if statusType == STATUS_TYPE.Error then
		statusIcon = "rbxasset://textures/StudioSharedUI/alert_error@2x.png"
		statusName = localization:getText("AssetImportTree", "Errors")
		statusesCount = status.errorsCount
		subtreeStatusesPresent = status.subtreeErrorsPresent
	elseif statusType == STATUS_TYPE.Warning then
		statusIcon = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png"
		statusName = localization:getText("AssetImportTree", "Warnings")
		statusesCount = status.warningsCount
		subtreeStatusesPresent = status.subtreeWarningsPresent
	end
	
	local message
	if statusesCount > 0 then
		local containsString = localization:getText("AssetImportTree", "Contains")
		message = string.format(containsString, statusesCount, statusName)
	elseif subtreeStatusesPresent then
		local descendantContainsString = localization:getText("AssetImportTree", "Descendants")
		message = string.format(descendantContainsString, statusName)
	else
		return nil
	end

	return Roact.createElement(Image, {
		LayoutOrder = layoutOrderIterator:getNextOrder(),
		Style = {
			Image = statusIcon,
		},
		Size = UDim2.new(0, ICON_DIMENSION, 0, ICON_DIMENSION),
	}, {
		Tooltip = Roact.createElement(Tooltip, {
			Text = message
		})
	})
end

local function trimFileName(fileName)
	local splitFilePath = fileName:split("/")
	return splitFilePath[#splitFilePath]
end

function AssetImportTree:init()
	self.getChildren = function(item)
		return item:GetChildren()
	end

	self.getContents = function(item)
		if item.ClassName == "ImporterRootSettings" then
			return trimFileName(self.props.FileName), nil
		else
			return item.ImportName, nil
		end
	end

	self.setChecked = function(checked)
		self.props.SetChecked(checked)

		for _, setting in pairs(self.props.Instances) do
			AssetImportService:UpdateSettings(setting)
		end
		local instanceMap = AssetImportService:GetCurrentImportMap()

		self.props.SetInstanceMap(instanceMap)
	end

	self.statuses = {}

	self.afterItem = function(props)
		local item = props.Item
		local status = self.statuses[item]

		if status then
			local layoutOrderIterator = LayoutOrderIterator.new()

			local errors = getStatusImage(status, STATUS_TYPE.Error, layoutOrderIterator, self.props.Localization)
			local warnings = getStatusImage(status, STATUS_TYPE.Warning, layoutOrderIterator, self.props.Localization)

			local width = errors and ICON_DIMENSION or 0
			width = width + (warnings and ICON_DIMENSION or 0)

			return Roact.createElement(Pane, {
				Size = UDim2.new(0, width, 0, ICON_DIMENSION),
				LayoutOrder = props.LayoutOrder,
				Layout = Enum.FillDirection.Horizontal,
			}, {
				Errors = errors,
				Warnings = warnings,
			})
		else
			return nil
		end
	end
end

function AssetImportTree:render()
	local props = self.props
	local state = self.state

	local style = props.Stylizer

	local toolbarHeight = style.Sizes.ToolbarHeight + SEPARATOR_WEIGHT

	local checked = props.Checked or generateChecked(props.Instances)

	local layoutOrderIterator = LayoutOrderIterator.new()

	self.statuses = generateStatuses(props.Instances)

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
			OnCheck = self.setChecked,
			GetChildren = self.getChildren,
			GetContents = self.getContents,
			ExpandableRoot = false,
			AfterItem = self.afterItem,
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
			dispatch(UpdateChecked(checked))			
		end,
		SetInstanceMap = function(instanceMap)
			dispatch(SetInstanceMap(instanceMap))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetImportTree)
