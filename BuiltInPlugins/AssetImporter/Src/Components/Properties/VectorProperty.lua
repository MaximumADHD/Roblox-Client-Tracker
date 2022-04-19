local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local UI = Framework.UI
local TextInput2 = UI.TextInput2
local TextLabel = UI.Decoration.TextLabel

local function VectorProperty(props)
	local value = props.Value
	local text = ("%.2f, %.2f, %.2f"):format(value.X, value.Y, value.Z)

	if props.Editable ~= nil and not props.Editable then
		return Roact.createElement(TextLabel, {
			LayoutOrder = props.LayoutOrder,
			Size = props.Size,
			Text = text,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	else
		return Roact.createElement(TextInput2, {
			Disabled = true,
			LayoutOrder = props.LayoutOrder,
			Size = props.Size,
			Text = text,
		})
	end
end

return VectorProperty
