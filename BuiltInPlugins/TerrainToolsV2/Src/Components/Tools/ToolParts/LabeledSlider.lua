local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local Slider = require(ToolParts.Slider)

local function LabeledSlider(props)
	local layoutOrder = props.LayoutOrder
	local text = props.Text
	local value = props.Value

	local min = props.Min
	local max = props.Max
	local snapIncrement = props.SnapIncrement

	local setValue = props.SetValue

	local children = Cryo.Dictionary.join(props[Roact.Children] or {}, {
		Slider = Roact.createElement(Slider, {
			Min = min,
			Max = max,
			SnapIncrement = snapIncrement,
			ShowInput = true,
			Value = value,
			SetValues = setValue,
		}),
	})

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 15),
		Text = text,
		LayoutOrder = layoutOrder,
	}, children)
end

return LabeledSlider
