local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local UI = Framework.UI
local ExpandablePane = UI.ExpandablePane
local TextInput = UI.TextInput
local Button = UI.Button
local Pane = UI.Pane

local Actions = Plugin.Src.Actions
local SetExpandedPane = require(Actions.SetExpandedPane)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Controllers = Plugin.Src.Controllers
local MaterialServiceController = require(Controllers.MaterialServiceController)
local GeneralServiceController = require(Controllers.GeneralServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)

local Constants = Plugin.Src.Resources.Constants
local getSettingsNames = require(Constants.getSettingsNames)

local getNumberFromText = require(Plugin.Src.Util.getNumberFromText)
local ResetCustomPhysicalProperties = require(Plugin.Src.Util.ResetCustomPhysicalProperties)

local settingsNames = getSettingsNames()

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
}

type _Props = Props & {
	Analytics: any,
	dispatchSetExpandedPane: (string, boolean) -> (),
	ExpandedPane: boolean,
	GeneralServiceController: any,
	MaterialServiceController: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	ButtonPadding: number,
	ButtonSize: UDim2,
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

local PhysicalSettings = Roact.PureComponent:extend("PhysicalSettings")

function PhysicalSettings:init()
	self.state = {
		name = self.props.MaterialVariant.Name,
	}
	self.baseMaterials = {}

	self.setPhysicalProperty = function(property: string)
		return function(value)
			self.physicalProperties[property] = value
		end
	end

	self.onFocusLost = function()
		local props: _Props = self.props

		props.MaterialVariant.CustomPhysicalProperties = PhysicalProperties.new(
			getNumberFromText(self.physicalProperties.Density) or 0,
			getNumberFromText(self.physicalProperties.Friction) or 0,
			getNumberFromText(self.physicalProperties.Elasticity) or 0,
			getNumberFromText(self.physicalProperties.FrictionWeight) or 0,
			getNumberFromText(self.physicalProperties.ElasticityWeight) or 0
		)
	end

	self.reset = function()
		local props: _Props = self.props

		ResetCustomPhysicalProperties(props.MaterialVariant)
	end

	self.onExpandedChanged = function()
		local props: _Props = self.props

		props.dispatchSetExpandedPane(settingsNames.GeneralSettings, not props.ExpandedPane)
	end
end

function PhysicalSettings:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.PhysicalSettings
	local localization = props.Localization
	local layoutOrderIterator = LayoutOrderIterator.new()

	local customPhysicalProperties = props.MaterialVariant.CustomPhysicalProperties
		or PhysicalProperties.new(props.MaterialVariant.BaseMaterial)
	if customPhysicalProperties then
		self.physicalProperties = {
			Density = string.format("%.3f", customPhysicalProperties.Density):gsub("%.?0+$", ""),
			Elasticity = string.format("%.3f", customPhysicalProperties.Elasticity):gsub("%.?0+$", ""),
			ElasticityWeight = string.format("%.3f", customPhysicalProperties.ElasticityWeight):gsub("%.?0+$", ""),
			Friction = string.format("%.3f", customPhysicalProperties.Friction):gsub("%.?0+$", ""),
			FrictionWeight = string.format("%.3f", customPhysicalProperties.FrictionWeight):gsub("%.?0+$", ""),
		}
	end

	return Roact.createElement(ExpandablePane, {
		LayoutOrder = props.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		ContentPadding = style.ContentPadding,
		ContentSpacing = style.ItemSpacing,
		Text = localization:getText("PhysicalProperties", "Physics"),
		Style = style.CustomExpandablePane,
		Expanded = props.ExpandedPane,
		OnExpandedChanged = self.onExpandedChanged,
	}, {
		Density = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("PhysicalProperties", "Density"),
		}, {
			Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = self.physicalProperties.Density,
				OnTextChanged = self.setPhysicalProperty("Density"),
				OnFocusLost = self.onFocusLost,
			}),
		}),
		Elasticity = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("PhysicalProperties", "Elasticity"),
		}, {
			Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = self.physicalProperties.Elasticity,
				OnTextChanged = self.setPhysicalProperty("Elasticity"),
				OnFocusLost = self.onFocusLost,
			}),
		}),
		Friction = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("PhysicalProperties", "Friction"),
		}, {
			Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = self.physicalProperties.Friction,
				OnTextChanged = self.setPhysicalProperty("Friction"),
				OnFocusLost = self.onFocusLost,
			}),
		}),
		ElasticityWeight = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("PhysicalProperties", "ElasticityWeight"),
		}, {
			Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = self.physicalProperties.ElasticityWeight,
				OnTextChanged = self.setPhysicalProperty("ElasticityWeight"),
				OnFocusLost = self.onFocusLost,
			}),
		}),
		FrictionWeight = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("PhysicalProperties", "FrictionWeight"),
		}, {
			Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = self.physicalProperties.FrictionWeight,
				OnTextChanged = self.setPhysicalProperty("FrictionWeight"),
				OnFocusLost = self.onFocusLost,
			}),
		}),
		Reset = Roact.createElement(Pane, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Padding = {
				Left = style.ButtonPadding,
			},
			Size = style.ButtonSize,
		}, {
			Button = Roact.createElement(Button, {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				OnClick = self.reset,
				Text = localization:getText("PhysicalProperties", "Reset"),
				Style = "Round",
			}),
		}),
	})
end

PhysicalSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	MaterialServiceController = MaterialServiceController,
	GeneralServiceController = GeneralServiceController,
})(PhysicalSettings)

return RoactRodux.connect(function(state: MainReducer.State, props: Props)
	return {
		ExpandedPane = state.MaterialBrowserReducer.ExpandedPane[settingsNames.PhysicalSettings],
		Material = state.MaterialBrowserReducer.Material,
	}
end, function(dispatch)
	return {
		dispatchSetExpandedPane = function(paneName: string, expandedPaneState: boolean)
			dispatch(SetExpandedPane(paneName, expandedPaneState))
		end,
	}
end)(PhysicalSettings)
