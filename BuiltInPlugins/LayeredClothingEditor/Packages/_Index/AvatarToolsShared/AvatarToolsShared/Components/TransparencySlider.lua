--[[
	transparency slider wrapping around SliderSetting.
	When change the value, also change the transparency of the item

	Required Props:
		string Title: label text to the left of the slider
		number Value: slider value
		UDim2 Size: size of the component
		boolean IsDisabled: whether this component is disabled

	Optional Props:
		number LayoutOrder: sort order of frame in a layout
		Instance Item: item whose transparency will be change by the slider
		callback SetValue: function to call when set value
]]

local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Components = script.Parent.Parent.Components
local SliderSetting = require(Components.SliderSetting)

local Util = script.Parent.Parent.Util
local SetTransparency = require(Util.SetTransparency)

local TransparencySlider = Roact.PureComponent:extend("TransparencySlider")

local Framework = require(Packages.Framework)
local FrameworkUtil = Framework.Util
local Typecheck = FrameworkUtil.Typecheck
Typecheck.wrap(TransparencySlider, script)

local MAX_TRANSPARENCY_PERCENT = 100

function TransparencySlider:init(initialProps)
	self.state = {
		value = initialProps.Value,
	}
	self.item = initialProps.Item
end

function TransparencySlider:didUpdate()
	local previousItem = self.item
	local currentItem = self.props.Item
	if previousItem ~= currentItem then
		self:setState({
			value = self.props.Value,
		})
	end
	self.item = currentItem
end

function TransparencySlider:render()
	local props = self.props

	local title = props.Title
	local item = props.Item
	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local isDisabled = props.IsDisabled
	local setValue = props.SetValue
	return Roact.createElement(SliderSetting, {
		Title = title,
		Value = self.state.value,
		MaxValue = MAX_TRANSPARENCY_PERCENT,
		Size = size,
		UsePercentage = true,
		LayoutOrder = layoutOrder,
		IsDisabled = isDisabled,
		SetValue = function(value)
			if setValue then
				setValue(value)
			end
			if item then
				local percentToTransparency = 1 - (value / MAX_TRANSPARENCY_PERCENT)
				SetTransparency(item, percentToTransparency)
			end
			self:setState({
				value = value,
			})
		end,
	})
end

return TransparencySlider