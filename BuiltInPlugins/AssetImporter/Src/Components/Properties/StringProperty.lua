local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local UI = Framework.UI
local Pane = UI.Pane
local TextInput2 = UI.TextInput2
local Tooltip = UI.Tooltip
local TruncatedTextLabel = UI.TruncatedTextLabel

local getFFlagAssetImportFixPropertyLength = require(Plugin.Src.Flags.getFFlagAssetImportFixPropertyLength)
local getFFlagDevFrameworkTextInput2SizingChoice = require(Plugin.Src.Flags.getFFlagDevFrameworkTextInput2SizingChoice)

local function StringProperty(props)
	if props.Editable ~= nil and not props.Editable then
		return Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = props.LayoutOrder,
			Size = props.Size,
			SuffixLength = 20,
			Text = props.Value,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = props.Value,
			})
		})
	else
		if getFFlagAssetImportFixPropertyLength() then
			return Roact.createElement(Pane, {
				Size = props.Size,
				LayoutOrder = props.LayoutOrder,
			}, {
				Roact.createElement(TextInput2, {
					AutomaticSize = if getFFlagDevFrameworkTextInput2SizingChoice() then Enum.AutomaticSize.None else nil,
					OnTextChanged = props.OnSetItem,
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
end

return StringProperty
