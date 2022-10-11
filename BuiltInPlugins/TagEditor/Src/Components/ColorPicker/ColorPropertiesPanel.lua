local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextInput2 = UI.TextInput2

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local ColorStringValidators = require(script.Parent.ColorStringValidators)

export type Props = {
	LayoutOrder: number,
	Hue: number,
	Saturation: number,
	Value: number,
	Color: Color3,
	OnTextChangedHex: ((string, boolean) -> ()),
	OnTextChangedRGB: ((string, boolean) -> ()),
	OnTextChangedHSV: ((string, boolean) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
		Size: UDim2,
		Spacing: number,
		TextInputSize: UDim2,
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
end

function ColorPropertiesPanel:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.ColorPropertiesPanel
	local localization = props.Localization
	local orderIterator = LayoutOrderIterator.new()

	local hue, sat, val = props.Hue, props.Saturation, props.Value
	local color = props.Color
	local red, green, blue = color.r, color.g, color.b

	return Roact.createElement(Pane, {
		Size = style.Size,
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Spacing = style.Spacing,
	}, {
		Hex = Roact.createElement(TextInput2, {
			Size = style.TextInputSize,
			Text = string.format("#%02x%02x%02x", red * 255, green * 255, blue * 255),
			BottomText = localization:getText("ColorPicker", "Hex"),
			LayoutOrder = orderIterator:getNextOrder(),
			Style = "ColorTextInput",

			OnFocusLost = self.onFocusLostHex,
			OnValidateText = ColorStringValidators.validateHex,
			OnTextChanged = self.onTextChangedHex,
		}),
		RGB = Roact.createElement(TextInput2, {
			Size = style.TextInputSize,
			Text = ("%d, %d, %d"):format(red * 255, green * 255, blue * 255),
			LayoutOrder = orderIterator:getNextOrder(),
			BottomText = localization:getText("ColorPicker", "RGB"),
			Style = "ColorTextInput",


			OnFocusLost = self.onFocusLostRGB,
			OnValidateText = ColorStringValidators.validateRGB,
			OnTextChanged = self.onTextChangedRGB,
		}),
		HSV = Roact.createElement(TextInput2, {
			Size = style.TextInputSize,
			Text = ("%d, %d, %d"):format(hue * 360, sat * 100, val * 100),
			BottomText = localization:getText("ColorPicker", "HSV"),
			LayoutOrder = orderIterator:getNextOrder(),
			Style = "ColorTextInput",

			OnFocusLost = self.onFocusLostHSV,
			OnValidateText = ColorStringValidators.validateHSV,
			OnTextChanged = self.onTextChangedHSV,
		}),
	})
end

ColorPropertiesPanel = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(ColorPropertiesPanel)

return ColorPropertiesPanel
