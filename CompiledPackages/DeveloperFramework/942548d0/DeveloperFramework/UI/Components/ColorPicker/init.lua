--[[
	A color picker that displays and allows users to edit a color value with interactive widgets or numeric values.

	Required Props:
		Callback OnColorChanged: A callback that fires when the color is modified by the user.

	Optional Props:
		Color3 Color: Changing this changes the displayed color any time. Can be used to init with a certain color.
		UDim2 Size: The size of this component.
		UDim2 Position: The position of this component.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		number LayoutOrder: The layout order of this component in a list.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = require(UI.Components.Pane)

local Util = require(Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local prioritize = Util.prioritize
local ColorStringValidators = Util.ColorStringValidators

local ColorPropertiesPanel = require(script.ColorPropertiesPanel)
local ColorValueSlider = require(script.ColorValueSlider)
local HueSaturationPicker = require(script.HueSaturationPicker)

local ColorPicker = Roact.PureComponent:extend("ColorPicker")

export type Props = {
	OnColorChanged: (Color3) -> (),
	Color: Color3?,
	Size: UDim2?,
	Position: UDim2?,
	AnchorPoint: Vector2?,
	LayoutOrder: number?,
}

type _Props = Props & {
	Stylizer: any,
}

function ColorPicker:init()
	self.state = {
		h = 1,
		s = 1,
		v = 1,
	}

	self.SetNewHSV = function(newH: number, newS: number, newV: number)
		self:setState(function(oldState)
			if oldState.h ~= newH or oldState.s ~= newS or oldState.v ~= newV then
				return {
					h = newH,
					s = newS,
					v = newV,
				}
			else
				return nil
			end
		end)
		local newColor = Color3.fromHSV(newH, newS, newV)
		self.props.OnColorChanged(newColor)
	end

	self.onTextChangedHex = function(text)
		local r, g, b = ColorStringValidators.RGBFromHexString(text)
		r = tonumber(r, 16)
		g = tonumber(g, 16)
		b = tonumber(b, 16)
		local intermediaryColor = Color3.fromRGB(r, g, b)
		local newH, newS, newV = intermediaryColor:ToHSV()

		self.SetNewHSV(newH, newS, newV)
	end

	self.onTextChangedRGB = function(text)
		local r, g, b = ColorStringValidators.RGBFromRGBString(text)
		r = tonumber(r)
		g = tonumber(g)
		b = tonumber(b)
		local intermediaryColor = Color3.fromRGB(r, g, b)
		local newH, newS, newV = intermediaryColor:ToHSV()

		self.SetNewHSV(newH, newS, newV)
	end

	self.onTextChangedHSV = function(text)
		local h, s, v = ColorStringValidators.HSVFromHSVString(text)
		local newH = (tonumber(h) or 360) / 360
		local newS = (tonumber(s) or 100) / 100
		local newV = (tonumber(v) or 100) / 100

		self.SetNewHSV(newH, newS, newV)
	end

	self.onHueSaturationChanged = function(hue: number, saturation: number)
		self.SetNewHSV(hue, saturation, self.state.v)
	end

	self.onColorValueChanged = function(newValue)
		self.SetNewHSV(self.state.h, self.state.s, newValue)
	end
end

function ColorPicker.getDerivedStateFromProps(nextProps, lastState)
	-- Allows a change of the Color prop to reset the color picker to that color
	-- When the color prop is unchanged, allow our internal state to be manipulated without resetting to the color prop
	if nextProps.Color == nil then
		return {
			h = 1,
			s = 1,
			v = 1,
		}
	end

	if lastState.Color ~= nextProps.Color then
		lastState.Color = nextProps.Color
		local h, s, v = nextProps.Color:ToHSV()
		return {
			h = h,
			s = s,
			v = v,
			Color = nextProps.Color,
		}
	end

	return nil
end

function ColorPicker:render()
	local props: _Props = self.props
	local style = props.Stylizer

	local orderIterator = LayoutOrderIterator.new()
	local bodyOrderIterator = LayoutOrderIterator.new()
	local pickerOrderIterator = LayoutOrderIterator.new()

	local size = prioritize(props.Size, style.Size)

	local color = Color3.fromHSV(self.state.h, self.state.s, self.state.v)

	assert(
		typeof(props.OnColorChanged) == "function",
		string.format(
			"ColorPicker requires OnColorChanged to be of type function, not %s",
			typeof(props.OnColorChanged)
		)
	)

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Padding = style.Padding,
		Spacing = style.Spacing,
		Size = size,
	}, {
		Body = Roact.createElement(Pane, {
			Size = style.BodySize,
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			Spacing = style.BodySpacing,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			ColorPropertiesPanel = Roact.createElement(ColorPropertiesPanel, {
				LayoutOrder = bodyOrderIterator:getNextOrder(),
				Hue = self.state.h,
				Saturation = self.state.s,
				Value = self.state.v,
				Color = color,
				OnTextChangedHex = self.onTextChangedHex,
				OnTextChangedRGB = self.onTextChangedRGB,
				OnTextChangedHSV = self.onTextChangedHSV,
				Style = style,
			}),
			Picker = Roact.createElement(Pane, {
				Size = style.PickerSize,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = bodyOrderIterator:getNextOrder(),
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}, {
				HueSaturationPicker = Roact.createElement(HueSaturationPicker, {
					LayoutOrder = pickerOrderIterator:getNextOrder(),
					Hue = self.state.h,
					Value = self.state.v,
					Saturation = self.state.s,
					OnHueSaturationChanged = self.onHueSaturationChanged,
					Style = style,
				}),
				ColorValueSlider = Roact.createElement(ColorValueSlider, {
					LayoutOrder = pickerOrderIterator:getNextOrder(),
					Hue = self.state.h,
					Saturation = self.state.s,
					Value = self.state.v,
					updatePosition = self.onColorValueChanged,
					Style = style,
				}),
			}),
		}),
	})
end

ColorPicker = withContext({
	Stylizer = ContextServices.Stylizer,
})(ColorPicker)

return ColorPicker
