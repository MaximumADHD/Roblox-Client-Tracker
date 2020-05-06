local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local Slider = require(ToolParts.Slider)

local function LabeledSlider(props)
	local layoutOrder = props.LayoutOrder
	local text = props.Text

	-- Remove the props intended for the LabeledElementPair so we're just left with the slider
	local propsForSlider = Cryo.Dictionary.join(props, {
		[Roact.Children] = Cryo.None,
		LayoutOrder = Cryo.None,
		Text = Cryo.None,
	})

	local children = Cryo.Dictionary.join(props[Roact.Children] or {}, {
		Slider = Roact.createElement(Slider, propsForSlider),
	})

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 15),
		Text = text,
		LayoutOrder = layoutOrder,
	}, children)
end

return LabeledSlider
