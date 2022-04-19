local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local UI = Framework.UI
local TextInput2 = UI.TextInput2
local Tooltip = UI.Tooltip
local TruncatedTextLabel = UI.TruncatedTextLabel

local function PathProperty(props)
	local path = props.Value
	if props.Editable ~= nil and not props.Editable then
		return Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = props.LayoutOrder,
			Size = props.Size,
			SuffixLength = 20,
			Text = if path ~= "" then path else props.Localization:getText("Properties", "NoFilePath"),
			TextXAlignment = Enum.TextXAlignment.Left,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = props.Value,
			})
		})
	else
		return Roact.createElement(TextInput2, {
			LayoutOrder = props.LayoutOrder,
			OnTextChanged = props.OnSetItem,
			Size = props.Size,
			Text = props.Value,
		})
	end
end

return PathProperty
