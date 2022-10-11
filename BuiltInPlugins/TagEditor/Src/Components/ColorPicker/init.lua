local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local TagManager = require(Plugin.Src.TagManager)
local Actions = require(Plugin.Src.Actions)

local UI = Framework.UI
local Pane = UI.Pane

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local ColorPickerTopControls = require(script.ColorPickerTopControls)
local ColorPropertiesPanel = require(script.ColorPropertiesPanel)
local ColorValueSlider = require(script.ColorValueSlider)
local HueSaturationPicker = require(script.HueSaturationPicker)

local ColorPicker = Roact.PureComponent:extend("ColorPicker")

export type Props = {
	tagName: string,
	tagIcon: string,
	tagColor: Color3,
	close: (() -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Padding: number,
	Spacing: number,
	BodySize: UDim2,
	BodySpacing: number,
	PickerSize: UDim2,
}

function ColorPicker:init()
	self.state = {
		h = 0,
		s = 0,
		v = 0,
	}

	self.SetNewHSV = function(newH: number, newS: number, newV: number)
		self:setState(function(oldState)
				if (oldState.h ~= newH or oldState.s ~= newS or oldState.v ~= newV) then
					return {
						h = newH,
						s = newS,
						v = newV,
					}
				else
					return nil
				end
			end)
	end

	self.onSave = function()
		TagManager.Get():SetColor(self.props.tagName, Color3.fromHSV(self.state.h, self.state.s, self.state.v))
		self.props.close()
	end

	self.onTextChangedHex = function(text)
		local r, g, b = text:match("^%s*%#?(%x%x)(%x%x)(%x%x)%s*$")
		r = tonumber(r, 16)
		g = tonumber(g, 16)
		b = tonumber(b, 16)
		local intermediaryColor = Color3.fromRGB(r, g, b)
		local newH, newS, newV = Color3.toHSV(intermediaryColor)

		self.SetNewHSV(newH, newS, newV)
	end

	self.onTextChangedRGB = function(text)
		local r, g, b = text:match("^%s*(%d+)%s*,%s*(%d+)%s*,%s*(%d+)%s*%s*$")
		r = tonumber(r)
		g = tonumber(g)
		b = tonumber(b)
		local intermediaryColor = Color3.fromRGB(r, g, b)
		local newH, newS, newV = Color3.toHSV(intermediaryColor)

		self.SetNewHSV(newH, newS, newV)
	end

	self.onTextChangedHSV = function(text)
		local h, s, v = text:match("^%s*(%d+)%s*,%s*(%d+)%s*,%s*(%d+)%s*%s*$")
		local newH = tonumber(h) or 360 / 360
		local newS = tonumber(s) or 100 / 100
		local newV = tonumber(v) or 100 / 100

		self.SetNewHSV(newH, newS, newV)
	end

	self.onHueSaturationChanged = function(hue: number, saturation: number)
		self:setState({
			h = hue,
			s = saturation,
		})
	end

	self.onColorValueChanged = function(newValue)
		self:setState({
			v = newValue,
		})
	end

end

function ColorPicker.getDerivedStateFromProps(nextProps, lastState)
	if nextProps.tagColor == nil then
		return {
			h = 0,
			s = 0,
			v = 0,
		}
	end

	if lastState.tagColor ~= nextProps.tagColor then
		lastState.tagColor = nextProps.tagColor
		local h, s, v = Color3.toHSV(nextProps.tagColor)
		return {
			-- When we open a fresh color picker, it should default to the color that the tag already was
			h = h,
			s = s,
			v = v,
			tagColor = nextProps.tagColor,
		}
	end

	return nil
end

function ColorPicker:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.ColorPicker
	local orderIterator = LayoutOrderIterator.new()
	local bodyOrderIterator = LayoutOrderIterator.new()
	local pickerOrderIterator = LayoutOrderIterator.new()

	local color = Color3.fromHSV(self.state.h, self.state.s, self.state.v)

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		Padding = style.Padding,
		Spacing = style.Spacing,
	}, {
		TopControls = Roact.createElement(ColorPickerTopControls, {
			LayoutOrder = orderIterator:getNextOrder(),
			TagName = props.tagName,
			Color = color,
			Close = props.close,
			Save = self.onSave,
		}),
		Body = Roact.createElement(Pane, {
			Size = style.BodySize,
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			Spacing = style.BodySpacing,
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
				}),
				ColorValueSlider = Roact.createElement(ColorValueSlider, {
					LayoutOrder = pickerOrderIterator:getNextOrder(),
					Hue = self.state.h,
					Saturation = self.state.s,
					Value = self.state.v,
					updatePosition = self.onColorValueChanged,
				}),
			}),
		}),
	})
end

ColorPicker = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(ColorPicker)

local function mapStateToProps(state)
	local tag = state.ColorPicker
	local tagIcon
	local tagColor
	for _, entry in pairs(state.TagData) do
		if entry.Name == tag then
			tagIcon = entry.Icon
			tagColor = entry.Color
			break
		end
	end

	return {
		tagName = tag,
		tagIcon = tagIcon,
		tagColor = tagColor,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		close = function()
			dispatch(Actions.ToggleColorPicker(""))
		end,
	}
end

ColorPicker = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ColorPicker)

return ColorPicker
