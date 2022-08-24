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
local SimpleExpandablePane = UI.SimpleExpandablePane

local Controllers = Plugin.Src.Controllers
local MaterialServiceController = require(Controllers.MaterialServiceController)
local GeneralServiceController = require(Controllers.GeneralServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPath = require(Constants.getMaterialPath)
local getSupportedMaterials = require(Constants.getSupportedMaterials)
local getMaterialName = require(Constants.getMaterialName)

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
}

type _Props = Props & {
	Analytics: any,
	GeneralServiceController: any,
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
			self.setNameStatus(localization:getText("CreateDialog", "ErrorNoName"), Enum.PropertyStatus.Warning)
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
end

function GeneralSettings:didMount()
	local props: _Props = self.props
	local localization = props.Localization

	self.connectionName = props.MaterialVariant:GetPropertyChangedSignal("Name"):Connect(function()
		self:setState({
			name = props.MaterialVariant.Name,
		})
		self.setNameStatus(nil)
	end)

	for index, material in ipairs(materials) do
		table.insert(self.baseMaterials, localization:getText("Materials", getMaterialName(material)))
	end
	self:setState({})   -- Force a rerender of the baseMaterials list
end

function GeneralSettings:willUnmount()
	if self.connectionName then
		self.connectionName:Disconnect()
	end
end

function GeneralSettings:didUpdate(prevProps)
	if prevProps.MaterialVariant ~= self.props.MaterialVariant then
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

	return Roact.createElement(SimpleExpandablePane, {
		LayoutOrder = props.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		ContentPadding = style.ContentPadding,
		ContentSpacing = style.ItemSpacing,
		Text = localization:getText("MaterialGeneral", "General"),
		Style = style.CustomExpandablePane,
		Expanded = true,
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
			})
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
			})
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

return GeneralSettings
