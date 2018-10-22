--[[
	A dialog that displays one line of text.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local function SimpleDialog(props)
	return withTheme(function(theme)
		local header = props.Header
		local buttons = props.Buttons

		return Roact.createElement(BaseDialog, {
			Buttons = buttons,
			OnResult = props.OnResult,
		}, {
			Header = Roact.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 0, 30),
				AnchorPoint = Vector2.new(0.5, 0),
				Size = UDim2.new(1, 0, 0, 23),
				BackgroundTransparency = 1,
				Text = header,
				Font = Enum.Font.SourceSans,
				TextColor3 = theme.dialog.text,
				TextSize = 24,
			}),
		})
	end)
end

return SimpleDialog