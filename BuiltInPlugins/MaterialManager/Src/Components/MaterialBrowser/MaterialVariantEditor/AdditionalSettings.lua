local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local TruncatedTextLabel = UI.TruncatedTextLabel
local TextInput = UI.TextInput
local SelectInput = UI.SelectInput

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPatterns = require(Constants.getMaterialPatterns)
local getMaterialPatternName = require(Constants.getMaterialPatternName)
local materialPatterns = getMaterialPatterns()

local getNumberFromText = require(Plugin.Src.Util.getNumberFromText)

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
}

type _Props = Props & { 
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	CustomSelectInput: any,
	DialogColumnSize: UDim2,
	ErrorOrWarningTextSize: Color3,
	ErrorOrWarningColor: Color3,
	HeaderFont: Enum.Font,
	LabelColumnWidth: UDim,
	LabelRowSize: UDim2,
	Padding: number,
	SectionHeaderTextSize: number,
}

local AdditionalSettings = Roact.PureComponent:extend("AdditionalSettings")

function AdditionalSettings:init()
	self.materialPatterns = {}
	self:setState({
		ErrorStudsPerTile = nil,
	})

	self.onStudsPerTileChanged = function(text)
		local props: _Props = self.props
		local localization = props.Localization

		local numberFromText = getNumberFromText(text)
		if numberFromText then
			props.MaterialVariant.StudsPerTile = numberFromText
			self:setState({
				ErrorStudsPerTile = nil,
			})
		else
			self:setState({
				ErrorStudsPerTile = localization:getText("CreateDialog", "ErrorStudsPerTile"),
			})
		end
	end

	self.onMaterialPatternSelected = function(materialPattern, index)
		local props: _Props = self.props

		if materialPattern then
			props.MaterialVariant.MaterialPattern = materialPatterns[index]
		end
	end
end

function AdditionalSettings:didMount()
	local props: _Props = self.props
	local localization = props.Localization

	for index, materialPattern in ipairs(materialPatterns) do
		table.insert(self.materialPatterns, localization:getText("MaterialPatterns", getMaterialPatternName(materialPattern)))
	end
	self:setState({})  -- Force a rerender of the patterns list
end

function AdditionalSettings:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local layoutOrderIterator = LayoutOrderIterator.new()

	local currentIndex = 1
	for index, materialPattern in ipairs(materialPatterns) do
		if materialPattern == props.MaterialVariant.MaterialPattern then
			currentIndex = index
		end
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Padding = style.Padding,
	}, {
		Name = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Font = style.HeaderFont,
			Size = style.LabelRowSize,
			Text = localization:getText("MaterialAdditional", "Additional"),
			TextSize = style.SectionHeaderTextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		StudsPerTile = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("CreateDialog", "StudsPerTileVariant"),
			ErrorText = self.state.ErrorStudsPerTile,
			TextSize = style.ErrorOrWarningTextSize,
			TextErrorOrWarningColor = style.ErrorOrWarningColor,
		}, {
			Roact.createElement(TextInput, {
				Style = if self.state.ErrorStudsPerTile then "FilledRoundedRedBorder" else "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = tostring(props.MaterialVariant.StudsPerTile),
				OnTextChanged = self.onStudsPerTileChanged,
			})
		}),
		MaterialPattern = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("CreateDialog", "MaterialPatternVariant"),
			TextSize = style.ErrorOrWarningTextSize,
		}, {
			Roact.createElement(SelectInput, {
				Style = style.CustomSelectInput,
				Items = self.materialPatterns,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onMaterialPatternSelected,
				SelectedIndex = currentIndex,
			})
		}),
	})
end


AdditionalSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(AdditionalSettings)

return AdditionalSettings
