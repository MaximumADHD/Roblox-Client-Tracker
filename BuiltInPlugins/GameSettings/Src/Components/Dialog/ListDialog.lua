--[[
	A dialog that displays multiple text items in a list.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		list Entries = The entries to display in this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]

local DOT = "rbxasset://textures/GameSettings/RadioButton.png"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local function ListDialog(props)
	return withTheme(function(theme)
		local header = props.Header
		local entries = props.Entries
		local buttons = props.Buttons

		local entriesList = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}

		for i, item in ipairs(entries) do
			table.insert(entriesList, Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = i,
				Size = UDim2.new(1, 0, 0, 20),
			}, {
				Text = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 16, 0, 0),
					Size = UDim2.new(1, -16, 1, 0),
					Text = item,
					Font = Enum.Font.SourceSans,
					TextColor3 = theme.dialog.text,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = 22,
				}),

				Dot = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(0, 4, 0, 4),
					AnchorPoint = Vector2.new(0, 0.5),
					ImageColor3 = theme.dialog.text,
					Image = DOT,
				}),
			}))
		end

		return Roact.createElement(BaseDialog, {
			Buttons = buttons,
			OnResult = props.OnResult,
		}, {
			Header = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -60, 0, 46),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 30),
				BackgroundTransparency = 1,
				Text = header,
				Font = Enum.Font.SourceSansSemibold,
				TextColor3 = theme.dialog.text,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = 22,
				TextWrapped = true,
			}),

			Entries = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -60, 0, 120),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 100),
			}, entriesList),
		})
	end)
end

return ListDialog