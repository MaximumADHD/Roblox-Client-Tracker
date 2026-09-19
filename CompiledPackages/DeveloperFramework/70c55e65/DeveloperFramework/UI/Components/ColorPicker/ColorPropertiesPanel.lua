local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local COMPONENT_NAME = "ColorPicker"

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local TextInput = require(UI.Components.TextInput)
local TextLabel = require(UI.Components.TextLabel)

local Util = Framework.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local ColorStringValidators = require(Util.ColorStringValidators)

export type Props = {
	LayoutOrder: number,
	Hue: number,
	Saturation: number,
	Value: number,
	Color: Color3,
	OnTextChangedHex: (string, boolean) -> (),
	OnTextChangedRGB: (string, boolean) -> (),
	OnTextChangedHSV: (string, boolean) -> (),
	Style: any,
}

type _Props = Props & {
	Localization: any,
}

type _Style = {
	Size: UDim2,
	Spacing: number,
	TextInputSize: UDim2,
	ColorPreviewSize: UDim2,
	TextSize: number,
	TextColor: Color3,

	ColorPreviewPaneStyle: {
		Background: Color3,
		Image: string,
		SliceCenter: Rect,
		Border: {
			Background: Color3,
			Image: string,
			SliceCenter: Rect,
		},
	},
}

local ColorPropertiesPanel = Roact.PureComponent:extend("ColorPropertiesPanel")

function ColorPropertiesPanel:init()
	self.onFocusLostHex = function()
		if self.lastHexValid then
			self.props.OnTextChangedHex(self.lastHex)
		end
	end
	self.onFocusLostRGB = function()
		if self.lastRGBValid then
			self.props.OnTextChangedRGB(self.lastRGB)
		end
	end
	self.onFocusLostHSV = function()
		if self.lastHSVValid then
			self.props.OnTextChangedHSV(self.lastHSV)
		end
	end

	self.onTextChangedHex = function(text, isValid)
		self.lastHexValid = isValid
		self.lastHex = text
	end
	self.onTextChangedRGB = function(text, isValid)
		self.lastRGBValid = isValid
		self.lastRGB = text
	end
	self.onTextChangedHSV = function(text, isValid)
		self.lastHSVValid = isValid
		self.lastHSV = text
	end
	self.onFocusedHex = function()
		self.lastHexValid = false
	end
	self.onFocusedRGB = function()
		self.lastRGBValid = false
	end
	self.onFocusedHSV = function()
		self.lastHSVValid = false
	end
end

function ColorPropertiesPanel:render()
	local props: _Props = self.props
	local style: _Style = props.Style.ColorPropertiesPanel
	local localization = props.Localization
	local orderIterator = LayoutOrderIterator.new()
	local colorPaneOrderIterator = LayoutOrderIterator.new()

	local hue, sat, val = props.Hue, props.Saturation, props.Value
	local color = props.Color
	local red, green, blue = color.r, color.g, color.b

	return Roact.createElement(Pane, {
		Size = style.Size,
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = style.Spacing,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		ColorPane = Roact.createElement(Pane, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.ColorPreviewSize,
			Layout = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			Preview = Roact.createElement(Pane, {
				LayoutOrder = colorPaneOrderIterator:getNextOrder(),
				Size = style.TextInputSize,
				BackgroundColor = props.Color,
				Style = style.ColorPreviewPaneStyle,
			}),
			TitleText = Roact.createElement(TextLabel, {
				LayoutOrder = colorPaneOrderIterator:getNextOrder(),
				Size = style.TextInputSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Color"),
				TextColor = style.TextColor,
				TextSize = style.TextSize,
			}),
		}),
		Hex = Roact.createElement(TextInput, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.TextInputSize,
			Text = string.format("#%02x%02x%02x", red * 255, green * 255, blue * 255),
			BottomText = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Hex"),
			OnFocusLost = self.onFocusLostHex,
			OnValidateText = ColorStringValidators.validateHex,
			OnTextChanged = self.onTextChangedHex,
			OnFocused = self.onFocusedHex,
		}),
		RGB = Roact.createElement(TextInput, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.TextInputSize,
			Text = ("%d, %d, %d"):format(red * 255, green * 255, blue * 255),
			BottomText = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "RGB"),
			OnFocusLost = self.onFocusLostRGB,
			OnValidateText = ColorStringValidators.validateRGB,
			OnTextChanged = self.onTextChangedRGB,
			OnFocused = self.onFocusedRGB,
		}),
		HSV = Roact.createElement(TextInput, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.TextInputSize,
			Text = ("%d, %d, %d"):format(hue * 360, sat * 100, val * 100),
			BottomText = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "HSV"),
			OnFocusLost = self.onFocusLostHSV,
			OnValidateText = ColorStringValidators.validateHSV,
			OnTextChanged = self.onTextChangedHSV,
			OnFocused = self.onFocusedHSV,
		}),
	})
end

ColorPropertiesPanel = withContext({
	Localization = Localization,
})(ColorPropertiesPanel)

return ColorPropertiesPanel
