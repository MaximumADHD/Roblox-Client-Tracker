local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextInput = UI.TextInput
local SelectInput = UI.SelectInput
local Pane = UI.Pane

local Controllers = Plugin.Src.Controllers
local MaterialServiceController = require(Controllers.MaterialServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)

local Constants = Plugin.Src.Resources.Constants
local getSupportedMaterials = require(Constants.getSupportedMaterials)
local getMaterialName = require(Constants.getMaterialName)

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
}

type _Props = Props & {
	Analytics: any,
	MaterialServiceController: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
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
	self.baseMaterials = {}

	self.setNameError = function(error)
		self:setState({
			ErrorName = error or Roact.None,
		})
	end

	self.onNameChanged = function(name)
		local props: _Props = self.props
		local localization = props.Localization

		if name and name ~= "" then
			props.MaterialVariant.Name = name
			local baseMaterial = props.MaterialVariant.BaseMaterial
			self.setNameError(nil)
			if props.MaterialServiceController:checkMaterialName(name, baseMaterial) then
				self.setNameError(localization:getText("CreateDialog", "ErrorNameExists"))
			end
		else
			self.setNameError(localization:getText("CreateDialog", "ErrorNoName"))
		end
	end

	self.onFocusLost = function()
		local props: _Props = self.props
		local localization = props.Localization

		local name = props.MaterialVariant.Name
		local baseMaterial = props.MaterialVariant.BaseMaterial
		if props.MaterialServiceController:checkMaterialName(name, baseMaterial) then
			self.setNameError(localization:getText("CreateDialog", "ErrorNameExists"))
		end
	end

	self.onBaseMaterialSelected = function(_, index)
		local props: _Props = self.props
		local localization = props.Localization

		props.MaterialVariant.BaseMaterial = materials[index]
		local name = props.MaterialVariant.Name
		local baseMaterial = props.MaterialVariant.BaseMaterial
		if props.MaterialServiceController:checkMaterialName(name, baseMaterial) then
			self.setNameError(localization:getText("CreateDialog", "ErrorNameExists"))
		else
			self.setNameError(nil)
		end
	end
end

function GeneralSettings:didMount()
	local props: _Props = self.props

	for index, material in ipairs(materials) do
		table.insert(self.baseMaterials, props.Localization:getText("Materials", getMaterialName(material)))
	end
	self:setState({})   -- Force a rerender of the baseMaterials list
end

function GeneralSettings:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.GeneralSettings

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

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = style.ItemSpacing,
	}, {
		Name = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = 1,
			Spacing = style.ItemPaddingHorizontal,
			Text = localization:getText("CreateDialog", "NameVariant"),
			ErrorText = self.state.ErrorName,
			TextSize = style.ErrorOrWarningTextSize,
			TextErrorOrWarningColor = style.ErrorOrWarningColor,
		}, {
			Roact.createElement(TextInput, {
				Style = if self.state.ErrorName then "FilledRoundedRedBorder" else "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = if props.MaterialVariant then props.MaterialVariant.Name else "",
				OnTextChanged = self.onNameChanged,
				OnFocusLost = self.onFocusLost,
			})
		}),
		BaseMaterial = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = 2,
			Spacing = style.ItemPaddingHorizontal,
			Text = localization:getText("CreateDialog", "BaseMaterialVariant"),
			TextSize = style.ErrorOrWarningTextSize,
		}, {
			Roact.createElement(SelectInput, {
				Style = style.CustomSelectInput,
				Items = self.baseMaterials,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onBaseMaterialSelected,
				PlaceholderText = localization:getText("CreateDialog", "PlaceholderBaseMaterial"),
				SelectedIndex = currentIndex,
			})
		}),
	})
end


GeneralSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	MaterialServiceController = MaterialServiceController,
})(GeneralSettings)

return GeneralSettings
