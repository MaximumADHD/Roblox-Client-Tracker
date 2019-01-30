--[[
	A set of an arbitrary number of RadioButtons.

	Props:
		int Selected = The current RadioButton to highlight.
		string Title = The title to place to the left of this RadioButtonSet.
		string Description = An optional secondary title to place above this RadioButtonSet.
		table Buttons = A collection of props for all RadioButtons to add.
		function SelectionChanged(index, title) = A callback for when the selected option changes.
		int LayoutOrder = The order this RadioButtonSet will sort to when placed in a UIListLayout.
		table Style = {
			TextDescriptionColor
		}
		Mouse = plugin mouse for changing the mouse icon
]]

local Roact = require(script.Parent.Internal.RequireRoact)
local Constants = require(script.Parent.Internal.Constants)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)

local RadioButton = require(script.Parent.RadioButton)
local TitledFrame = require(script.Parent.TitledFrame)

local RADIO_BUTTON_PADDING = 10

local getStyle = nil

local function RadioButtonSet(props)
	local function renderInternal()
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
				Padding = UDim.new(0, RADIO_BUTTON_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		}

		local style = getStyle(props)

		if (props.Description) then
			table.insert(children, Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, Constants.RADIO_BUTTON_SIZE + 5),
				TextColor3 = style.TextDescriptionColor,
				TextTransparency = props.Enabled and 0 or 0.5,
				Font = Enum.Font.SourceSans,
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = props.Description,
			}))
		end

		local allRadioButtonsHeight = 0
		local nextLayoutOrder = 1
		for i, button in ipairs(buttons) do
			table.insert(children, Roact.createElement(RadioButton, {
				Title = button.Title,
				Id = button.Id,
				Description = button.Description,
				Selected = (button.Id == selected) or (i == selected),
				Index = i,
				Enabled = props.Enabled,
				LayoutOrder = i,
				Mouse = props.Mouse,
				OnClicked = function()
					props.SelectionChanged(button)
				end,
			}))

			allRadioButtonsHeight = allRadioButtonsHeight + Constants.RADIO_BUTTON_SIZE
			allRadioButtonsHeight = allRadioButtonsHeight + ((nil ~= button.Description) and Constants.RADIO_BUTTON_SIZE or 0)
			nextLayoutOrder = i + 1
		end

		if (props.SubDescription) then
			table.insert(children, Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 16),
			}, {
				Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0, 4, 0, 0),
					TextColor3 = style.TextDescriptionColor,
					TextTransparency = props.Enabled and 0 or 0.5,
					Font = Enum.Font.SourceSans,
					TextSize = 16,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Text = props.SubDescription,
				})
			}))
		end

		local maxHeight = allRadioButtonsHeight
			+ numButtons * RADIO_BUTTON_PADDING
			+ (props.Description and Constants.RADIO_BUTTON_SIZE + 5 + RADIO_BUTTON_PADDING or 0)
			+ (props.SubDescription and Constants.RADIO_BUTTON_SIZE + 5 + RADIO_BUTTON_PADDING or 0)

		return Roact.createElement(TitledFrame, {
			Title = props.Title,
			MaxHeight = maxHeight,
			LayoutOrder = props.LayoutOrder or 1,
		}, children)
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(props)
	local style = {
		TextDescriptionColor = props.Style and props.Style.TextDescriptionColor or Theme.getRadioButtonTextColor()
	}
	return style
end

return RadioButtonSet