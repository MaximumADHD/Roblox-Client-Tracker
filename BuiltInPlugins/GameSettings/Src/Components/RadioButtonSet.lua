--[[
	A set of an arbitrary number of RadioButtons.

	Props:
		int Selected = The current RadioButton to highlight.
		string Title = The title to place to the left of this RadioButtonSet.
		string Description = An optional secondary title to place above this RadioButtonSet.
		table Buttons = A collection of props for all RadioButtons to add.
		function SelectionChanged(index, title) = A callback for when the selected option changes.
		int LayoutOrder = The order this RadioButtonSet will sort to when placed in a UIListLayout.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local RadioButton = require(Plugin.Src.Components.RadioButton)
local TitledFrame = require(Plugin.UILibrary.Components.TitledFrame)

local function RadioButtonSet(props)
	return withTheme(function(theme)
		local selected
		if props.Selected ~= nil then
			selected = props.Selected
		else
			selected = 1
		end

		local buttons = props.Buttons
		local numButtons = #buttons

		local children = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, Constants.RADIO_BUTTON_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		}

		if (props.Description) then
			table.insert(children, Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, Constants.RADIO_BUTTON_SIZE + 5),
				TextColor3 = theme.radioButton.title,
				TextTransparency = props.Enabled and 0 or 0.5,
				Font = Enum.Font.SourceSans,
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = props.Description,
			}))
		end

		for i, button in ipairs(buttons) do
			table.insert(children, Roact.createElement(RadioButton, {
				Title = button.Title,
				Id = button.Id,
				Description = button.Description,
				Selected = (button.Id == selected) or (i == selected),
				Index = i,
				Enabled = props.Enabled,
				LayoutOrder = i,
				OnClicked = function()
					props.SelectionChanged(button)
				end,
			}))
		end

		local maxHeight = numButtons * Constants.RADIO_BUTTON_SIZE * 2
			+ numButtons * Constants.RADIO_BUTTON_PADDING
			+ (props.Description and Constants.RADIO_BUTTON_SIZE + 5 + Constants.RADIO_BUTTON_PADDING or 0)

		return Roact.createElement(TitledFrame, {
			Title = props.Title,
			MaxHeight = maxHeight,
			LayoutOrder = props.LayoutOrder or 1,
			TextSize = Constants.TEXT_SIZE
		}, children)
	end)
end

return RadioButtonSet