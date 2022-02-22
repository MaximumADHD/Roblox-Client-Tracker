--[[
	Hoverable and clickable radio button, from a RadioButtonSet.

	Props:
		string Id = Unique identifier of this RadioButton
		string Title = Text to display on this RadioButton
		string Description = Smaller tooltip text to display below this RadioButton
		bool Selected = Whether to display this RadioButton as selected
		int Index = The order in which this RadioButton is displayed, top to bottom
		bool Enabled = Whether this RadioButton accepts input
		table Style = {
			BackgroundColor,
			TextColor,
			TextDescriptionColor
		}
]]

local BACKGROUND_IMAGE = "rbxasset://textures/GameSettings/RadioButton.png"
local SELECTED_IMAGE = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"
local TITLE_TEXT_SIZE = 22
local DESCRIPTION_TEXT_SIZE = 16

local TextService = game:GetService("TextService")

local Roact = require(script.Parent.Internal.RequireRoact)
local Constants = require(script.Parent.Internal.Constants)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)
local Mouse = require(script.Parent.Internal.Mouse)

local getStyle = nil

local RadioButton = Roact.PureComponent:extend("RadioButton")

function RadioButton:init(initialProps)
	self.mouseEnter = function()
		if self.props.Enabled then
			Mouse.onEnter(self.props.Mouse)
		end
	end

	self.mouseLeave = function()
		if self.props.Enabled then
			Mouse.onLeave(self.props.Mouse)
		end
	end

	local title = initialProps.Title
	local description = initialProps.Description or ""

	self.state = {
		TitleWidth = TextService:GetTextSize(
			title,
			TITLE_TEXT_SIZE,
			Enum.Font.SourceSans,
			Vector2.new()).X,
		DescriptionWidth = TextService:GetTextSize(
			description,
			DESCRIPTION_TEXT_SIZE,
			Enum.Font.SourceSans,
			Vector2.new()).X,
	}
end

function RadioButton:render()
	local function renderInternal()
		local title = self.props.Title
		local description = self.props.Description or ""
		local titleWidth = self.state.TitleWidth
		local descriptionWidth = self.state.DescriptionWidth

		local isDescriptionRequired = self.props.Description and true or false
		local style = getStyle(self)

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Constants.RADIO_BUTTON_SIZE * (isDescriptionRequired and 2 or 1)),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Button = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, Constants.RADIO_BUTTON_SIZE, 0, Constants.RADIO_BUTTON_SIZE),
				BackgroundTransparency = 1,
				ImageTransparency = self.props.Enabled and 0 or 0.4,
				Image = BACKGROUND_IMAGE,
				ImageColor3 = style.BackgroundColor,
				LayoutOrder = self.props.LayoutOrder or 1,

				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,

				-- Tell the RadioButtonSet that this is the currently selected button
				[Roact.Event.Activated] = function()
					if self.props.Enabled then
						self.props.OnClicked()
					end
				end,
			}, {
				Highlight = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = Theme.isDarkerTheme() and UDim2.new(0.4, 0, 0.4, 0) or UDim2.new(0.5, 0, 0.5, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Visible = self.props.Enabled and self.props.Selected,
					Image = SELECTED_IMAGE,
				}),

				TitleLabel = Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, titleWidth, 1, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(1, 5, 0.5, 0),

					TextColor3 = style.TextColor,
					Font = Enum.Font.SourceSans,
					TextSize = TITLE_TEXT_SIZE,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextTransparency = self.props.Enabled and 0 or 0.5,
					Text = title,

					[Roact.Event.MouseEnter] = self.mouseEnter,
					[Roact.Event.MouseLeave] = self.mouseLeave,

					[Roact.Event.Activated] = function()
						if self.props.Enabled then
							self.props.OnClicked()
						end
					end,
				}),

				DescriptionLabel = isDescriptionRequired and Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, descriptionWidth, 1, 0),
					Position = UDim2.new(1, 5, 1, 1),

					TextColor3 = style.TextDescriptionColor,
					Font = Enum.Font.SourceSans,
					TextSize = DESCRIPTION_TEXT_SIZE,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Text = description,

					[Roact.Event.MouseEnter] = self.mouseEnter,
					[Roact.Event.MouseLeave] = self.mouseLeave,

					[Roact.Event.Activated] = function()
						if self.props.Enabled then
							self.props.OnClicked()
						end
					end,
				}) or nil,
			}),
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(self)
	local styleProps = {
		["BackgroundColor"] = Theme.getBackgroundColor(),
		["TextColor"] = Theme.getRadioButtonTextColor(),
		["TextDescriptionColor"] = Theme.getTextDescriptionColor(),
	}

	local style = {}
	for name, defaultStylePropsVal in pairs(styleProps) do
		style[name] = self.props.Style and self.props.Style[name] or defaultStylePropsVal
	end
	return style
end

return RadioButton