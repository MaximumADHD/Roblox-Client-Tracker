--[[
	Hoverable and clickable radio button, from a RadioButtonSet.

	Props:
		string Id = Unique identifier of this RadioButton
		string Title = Text to display on this RadioButton
		string Description = Smaller tooltip text to display below this RadioButton
		bool Selected = Whether to display this RadioButton as selected
		int Index = The order in which this RadioButton is displayed, top to bottom
		bool Enabled = Whether this RadioButton accepts input
	Optional Props:
		table{RoactComponents} Children, a table of Roact components that will be shown with this radio button.
			e.g. think of more things under the radio button like description.
]]

local BACKGROUND_IMAGE = "rbxasset://textures/GameSettings/RadioButton.png"
local SELECTED_IMAGE = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local FitFrameOnAxis = Framework.Util.FitFrame.FitFrameOnAxis

local Constants = require(Plugin.Src.Resources.Constants)

local RadioButton = Roact.PureComponent:extend("RadioButton")

local FONT_SUBTEXT_TEXT_SIZE = 16

local RADIO_BUTTON_DESCRIPTION_WIDTH = 500

function RadioButton:render()
	local props = self.props

	local style = props.RadioButtonStyle

	local title = props.Title
	local description = props.Description and props.Description or nil
	local titleTextSize = TextService:GetTextSize(title, FONT_SUBTEXT_TEXT_SIZE, style.font, Vector2.new())

	local descriptionTextSize = props.Description
		and TextService:GetTextSize(
			description,
			FONT_SUBTEXT_TEXT_SIZE,
			style.font,
			Vector2.new(RADIO_BUTTON_DESCRIPTION_WIDTH, math.huge)
		)

	local children = props.Children and props.Children or {}

	local minimumContentSize = math.max(titleTextSize.X, descriptionTextSize and descriptionTextSize.X or 0)
	local minimumButtonSize = minimumContentSize + Constants.RADIO_BUTTON_SIZE

	local normalFontStyle = {
		Font = style.font,
		TextSize = 22,
		TextColor3 = style.textColor,
	}

	local subtextFontStyle = {
		Font = style.font,
		TextSize = 16,
		TextColor3 = style.dimTextColor,
	}

	return Roact.createElement(FitFrameOnAxis, {
		axis = FitFrameOnAxis.Axis.Vertical,
		minimumSize = UDim2.new(0, minimumButtonSize, 0, 0),
		BackgroundTransparency = 1,
		FillDirection = Enum.FillDirection.Horizontal,

		LayoutOrder = props.LayoutOrder or 1,
	}, {
		Button = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, Constants.RADIO_BUTTON_SIZE, 0, Constants.RADIO_BUTTON_SIZE),
			BackgroundTransparency = 1,
			ImageTransparency = self.props.Enabled and 0 or 0.4,
			Image = BACKGROUND_IMAGE,
			ImageColor3 = Color3.fromRGB(127, 127, 127),
			LayoutOrder = 1,

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
				Size = UDim2.new(0.4, 0, 0.4, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Visible = self.props.Enabled and self.props.Selected,
				Image = SELECTED_IMAGE,
			}),
		}),

		ContentAndChildren = Roact.createElement(
			FitFrameOnAxis,
			{
				axis = FitFrameOnAxis.Axis.Vertical,
				minimumSize = UDim2.new(0, minimumContentSize, 0, 0),
				contentPadding = UDim.new(0, Constants.RADIO_BUTTON_PADDING),
				BackgroundTransparency = 1,
				FillDirection = Enum.FillDirection.Vertical,

				LayoutOrder = 2,
			},
			Cryo.Dictionary.join({
				TitleLabel = Roact.createElement(
					"TextButton",
					Cryo.Dictionary.join(normalFontStyle, {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(0, titleTextSize.X, 0, titleTextSize.Y),

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

						LayoutOrder = -2,
					})
				),

				DescriptionLabel = props.Description and Roact.createElement(
					"TextButton",
					Cryo.Dictionary.join(subtextFontStyle, {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(0, descriptionTextSize.X, 0, descriptionTextSize.Y),

						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						Text = description,
						TextWrapped = true,
						[Roact.Event.MouseEnter] = self.mouseEnter,
						[Roact.Event.MouseLeave] = self.mouseLeave,

						[Roact.Event.Activated] = function()
							if self.props.Enabled then
								self.props.OnClicked()
							end
						end,

						LayoutOrder = -1,
					})
				),
			}, children)
		),
	})
end

return RadioButton
