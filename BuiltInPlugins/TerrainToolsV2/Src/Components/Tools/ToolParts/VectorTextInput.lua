--[[
	NumberTextInput
	Props:
		number LayoutOrder = 0
		string Key : Internal string passed back to the parent
		string Text : Localized text to display next to the text box
		dict[string -> number] Vector : Contains optionally X, Y and Z keys (case-sensitive)
		array[string] Axes = {"X", "Y", "Z"} : Ordered list of axes in the vector, defaults to x, y and z
		                                       Use {"X", "Y"} for Vector2 etc.
		dict[string -> number] MinValues optional : Mapping of axis to min value for that axis
		dict[string -> number] MaxValues optional : Mapping of axis to max value for that axis
		dict[string -> number] Precisions optional : Mapping of axis to precision for the number for that axis
		callback OnFocusLost(string key, string axis, bool enterPressed, string text, bool isValid)
		callback OnValueChanged(string key, string axis, string text, bool isValid)
\
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)

local NumberTextInput = require(ToolParts.NumberTextInput)

local VectorTextInput = Roact.PureComponent:extend("VectorTextInput")

function VectorTextInput:init(props)
	self.onAxisFocusLost = function(axis, enterPressed, text, isValid)
		if self.props.OnFocusLost then
			self.props.OnFocusLost(self.props.Key, axis, enterPressed, text, isValid)
		end
	end

	self.onAxisValueChanged = function(axis, text, isValid)
		if self.props.OnValueChanged then
			self.props.OnValueChanged(self.props.Key, axis, text, isValid)
		end
	end
end

function VectorTextInput:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder or 0
	local text = props.Text

	local minValues = props.MinValues or nil
	local maxValues = props.MaxValues or nil
	local precisions = props.Precisions or nil

	local vector = props.Vector
	local axes = props.Axes or {"X", "Y", "Z"}

	local children = {}
	for i, axis in ipairs(axes) do
		local min = minValues and minValues[axis] or nil
		local max = maxValues and maxValues[axis] or nil
		local precision = precisions and precisions[axis] or nil

		children[axis] = Roact.createElement(NumberTextInput, {
			LayoutOrder = i,
			Key = axis,
			Label = axis:upper(),
			Value = vector[axis],

			Min = min,
			Max = max,
			Precision = precision,
			OnFocusLost = self.onAxisFocusLost,
			OnValueChanged = self.onAxisValueChanged,
		})
	end

	return Roact.createElement(LabeledElementPair, {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, 60),
		Padding = UDim.new(0, 3),
		Text = text,
		SizeToContent = true,
		ErrorMessage = self.props.ErrorMessage,
	}, children)
end

return VectorTextInput
