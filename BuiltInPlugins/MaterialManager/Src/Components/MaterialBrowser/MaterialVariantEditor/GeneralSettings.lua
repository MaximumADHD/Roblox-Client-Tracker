local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextInput = UI.TextInput
local SelectInput = UI.SelectInput
local ExpandablePane = UI.ExpandablePane

local Actions = Plugin.Src.Actions
local SetExpandedPane = require(Actions.SetExpandedPane)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Controllers = Plugin.Src.Controllers
local MaterialServiceController = require(Controllers.MaterialServiceController)
local GeneralServiceController = require(Controllers.GeneralServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPath = require(Constants.getMaterialPath)
local getSupportedMaterials = require(Constants.getSupportedMaterials)
local getMaterialName = require(Constants.getMaterialName)
local getSettingsNames = require(Constants.getSettingsNames)

local settingsNames = getSettingsNames()

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
}

type _Props = Props & {
	Analytics: any,
	dispatchSetExpandedPane: (paneName: string, expandedPaneState: boolean) -> (),
	ExpandedPane: boolean,
	GeneralServiceController: any,
	Material: _Types.Material,
	MaterialServiceController: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	ContentPadding: number,
	CustomExpandablePane: any,
	CustomSelectInput: any,
	DialogColumnSize: UDim2,
	ErrorOrWarningColor: Color3,
	ErrorOrWarningTextSize: number,
	ItemPaddingHorizontal: UDim,
	ItemSpacing: number,
	LabelColumnWidth: UDim,
}

local materials = getSupportedMaterials(true)

local GeneralSettings = Roact.PureComponent:extend("GeneralSettings")

function GeneralSettings:init()
	self.state = {
		name = self.props.MaterialVariant.Name,
	}
	self.baseMaterials = {}

	self.setNameStatus = function(message, status)
		self:setState({
			nameMessage = message or Roact.None,
			status = if status then status else Enum.PropertyStatus.Ok,
		})
	end

	self.onNameChanged = function(name)
		self:setState({
			name = name,
		})
	end

	self.onFocusLost = function()
		local props: _Props = self.props
		local localization = props.Localization

		if self.state.name and self.state.name ~= "" then
			props.GeneralServiceController:setName(props.MaterialVariant, self.state.name)
			local baseMaterial = props.MaterialVariant.BaseMaterial
			if props.MaterialServiceController:checkMaterialName(self.state.name, baseMaterial) then
				self.setNameStatus(localization:getText("CreateDialog", "ErrorNameExists"), Enum.PropertyStatus.Warning)
			else
				self.setNameStatus(nil)
			end
		else
			self:setState({
				name = props.MaterialVariant.Name,
			})
		end
	end

	self.onBaseMaterialSelected = function(_, index)
		local props: _Props = self.props
		local localization = props.Localization

		props.GeneralServiceController:setBaseMaterial(props.MaterialVariant, materials[index])
		props.MaterialServiceController:setPath(getMaterialPath(props.MaterialVariant.BaseMaterial))
		local name = props.MaterialVariant.Name
		local baseMaterial = props.MaterialVariant.BaseMaterial
		if props.MaterialServiceController:checkMaterialName(name, baseMaterial) then
			self.setNameStatus(localization:getText("CreateDialog", "ErrorNameExists"), Enum.PropertyStatus.Warning)
		else
			self.setNameStatus(nil)
		end
	end

	self.onExpandedChanged = function()
		local props: _Props = self.props

		props.dispatchSetExpandedPane(settingsNames.GeneralSettings, not props.ExpandedPane)
	end
end

function GeneralSettings:didMount()
	local props: _Props = self.props
	local localization = props.Localization

	for index, material in ipairs(materials) do
		table.insert(self.baseMaterials, localization:getText("Materials", getMaterialName(material)))
	end
	self:setState({}) -- Force a rerender of the baseMaterials list
end

function GeneralSettings:didUpdate(_, prevState)
	if self.state.name ~= self.props.MaterialVariant.Name 
		and prevState.name == self.state.name then
		self:setState({
			name = self.props.MaterialVariant.Name,
		})
	end
end

function GeneralSettings:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.GeneralSettings
	local localization = props.Localization

	local currentIndex = -1
	for index, material in ipairs(materials) do
		if material == props.MaterialVariant.BaseMaterial then
			currentIndex = index
		end
		if material == Enum.Material.Plastic and currentIndex == -1 then
			currentIndex = index
		end
	end

	if currentIndex == -1 then
		currentIndex = 1
	end

	return Roact.createElement(ExpandablePane, {
		LayoutOrder = props.LayoutOrder,
		ContentPadding = style.ContentPadding,
		ContentSpacing = style.ItemSpacing,
		Text = localization:getText("MaterialGeneral", "General"),
		Style = style.CustomExpandablePane,
		Expanded = props.ExpandedPane,
		OnExpandedChanged = self.onExpandedChanged,
	}, {
		Name = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = 1,
			Text = localization:getText("CreateDialog", "NameVariant"),
			StatusText = self.state.nameMessage,
			Status = self.state.status,
		}, {
			Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = self.state.name,
				OnTextChanged = self.onNameChanged,
				OnFocusLost = self.onFocusLost,
			}),
		}),
		BaseMaterial = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = 2,
			Text = localization:getText("CreateDialog", "BaseMaterialVariant"),
		}, {
			Roact.createElement(SelectInput, {
				Style = style.CustomSelectInput,
				Items = self.baseMaterials,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onBaseMaterialSelected,
				PlaceholderText = localization:getText("CreateDialog", "PlaceholderBaseMaterial"),
				SelectedIndex = currentIndex,
			}),
		}),
	})
end

GeneralSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	MaterialServiceController = MaterialServiceController,
	GeneralServiceController = GeneralServiceController,
})(GeneralSettings)

return RoactRodux.connect(
	function(state: MainReducer.State)
		return {
			ExpandedPane = state.MaterialBrowserReducer.ExpandedPane[settingsNames.GeneralSettings],
			Material = state.MaterialBrowserReducer.Material, -- Needed for refresh purposes
		}
	end,
	function(dispatch)
		return {
			dispatchSetExpandedPane = function(paneName: string, expandedPaneState: boolean)
				dispatch(SetExpandedPane(paneName, expandedPaneState))
			end,
		}
	end
)(GeneralSettings)
