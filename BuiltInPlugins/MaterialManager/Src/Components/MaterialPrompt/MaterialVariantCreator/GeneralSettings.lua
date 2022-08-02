local Plugin = script.Parent.Parent.Parent.Parent.Parent
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
local Pane = UI.Pane

local LabeledElement = require(Plugin.Src.Components.MaterialPrompt.MaterialVariantCreator.LabeledElement)

local Constants = Plugin.Src.Resources.Constants
local getSupportedMaterials = require(Constants.getSupportedMaterials)
local getMaterialName = require(Constants.getMaterialName)

local Actions = Plugin.Src.Actions
local SetName = require(Actions.SetName)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

export type Props = {
	LayoutOrder: number?,
	ErrorName: string?,
	ErrorBaseMaterial: string?,
}

type _Props = Props & {
	Analytics: any,
	BaseMaterial: Enum.Material,
	Localization: any,
	Name: string,
	Stylizer: any,
	dispatchSetName: (string) -> (),
	dispatchSetBaseMaterial: (Enum.Material) -> (),
}

type _Style = {
	CustomSelectInput: any,
	CustomSelectInputError: any,
	DialogColumnSize: UDim2,
	ErrorOrWarningColor: Color3,
	ErrorOrWarningTextSize: number,
	ItemPaddingHorizontal: UDim,
	ItemSpacing: number,
	LabelColumnWidth: UDim,
	VerticalSpacing: number,
}

local materials = getSupportedMaterials(true)

local GeneralSettings = Roact.PureComponent:extend("GeneralSettings")

function GeneralSettings:init()
	self.state = {
		currentIndex = nil,
	}

	self.baseMaterials = {}

	self.onNameChanged = function(name)
		if name and name ~= "" then
			self.props.dispatchSetName(name)
		else
			self.props.dispatchSetName("")
		end
	end

	self.onBaseMaterialSelected = function(baseMaterial, index)
		if baseMaterial then
			self.props.dispatchSetBaseMaterial(materials[index])
			self:setState({
				currentIndex = index,
			})
		end
	end
end

function GeneralSettings:didMount()
	local props: _Props = self.props

	for index, material in ipairs(materials) do
		table.insert(self.baseMaterials, self.props.Localization:getText("Materials", getMaterialName(material)))

		if material == props.BaseMaterial then
			self:setState({
				currentIndex = index
			})
		end
	end 
end

function GeneralSettings:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.GeneralSettings

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
			ErrorText = props.ErrorName,
			TextSize = style.ErrorOrWarningTextSize,
			TextErrorOrWarningColor = style.ErrorOrWarningColor,
			VerticalSpacing = style.VerticalSpacing,
		}, {
			Roact.createElement(TextInput, {
				Style = if props.ErrorName then "FilledRoundedRedBorder" else "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = props.Name,
				OnTextChanged = self.onNameChanged,
			})
		}),
		BaseMaterial = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = 2,
			Spacing = style.ItemPaddingHorizontal,
			Text = localization:getText("CreateDialog", "BaseMaterialVariant"),
			ErrorText = props.ErrorBaseMaterial,
			TextSize = style.ErrorOrWarningTextSize,
			TextErrorOrWarningColor = style.ErrorOrWarningColor,
			VerticalSpacing = style.VerticalSpacing,
		}, {
			Roact.createElement(SelectInput, {
				Style = if props.ErrorBaseMaterial then style.CustomSelectInputError else style.CustomSelectInput,
				Items = self.baseMaterials,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onBaseMaterialSelected,
				PlaceholderText = localization:getText("CreateDialog", "PlaceholderBaseMaterial"),
				SelectedIndex = self.state.currentIndex,
			})
		}),
	})
end


GeneralSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(GeneralSettings)



local function mapStateToProps(state: MainReducer.State, _)
	return {
		Name = state.MaterialPromptReducer.Name,
		BaseMaterial = state.MaterialPromptReducer.BaseMaterial,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetName = function (name)
			dispatch(SetName(name))
		end,
		dispatchSetBaseMaterial = function (baseMaterial)
			dispatch(SetBaseMaterial(baseMaterial))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(GeneralSettings)
