--[[
	Clickable checkbox, from a CheckBoxSet.

	Props:
		string Id = Unique identifier of this CheckBox
		string Title = Text to display on this CheckBox
		bool Selected = Whether to display this CheckBox as selected
		bool Enabled = Whether this CheckBox accepts input
]]

local BACKGROUND_IMAGE = "rbxasset://textures/GameSettings/UncheckedBox.png"
local SELECTED_IMAGE_LIGHT = "rbxasset://textures/GameSettings/CheckedBoxLight.png"
local SELECTED_IMAGE_DARK = "rbxasset://textures/GameSettings/CheckedBoxDark.png"
local TITLE_TEXT_SIZE = 22

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local CheckBox = Roact.PureComponent:extend("CheckBox")

function CheckBox:init(initialProps)
	self.mouseEnter = function()
		if self.props.Enabled then
			self:mouseHoverChanged(true)
		end
	end

	self.mouseLeave = function()
		if self.props.Enabled then
			self:mouseHoverChanged(false)
		end
	end

	local title = initialProps.Title or initialProps.Id

	self.state = {
		TitleWidth = TextService:GetTextSize(
			title,
			TITLE_TEXT_SIZE,
			Enum.Font.SourceSans,
			Vector2.new()).X,
	}
end

function CheckBox:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
end

function CheckBox:render()
	return withTheme(function(theme)
		local title = self.props.Title or self.props.Id
		local titleWidth = self.state.TitleWidth

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Constants.CHECKBOX_SIZE),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Background = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, Constants.CHECKBOX_SIZE, 0, Constants.CHECKBOX_SIZE),
				BackgroundTransparency = 1,
				ImageTransparency = self.props.Enabled and 0 or 0.4,
				Image = BACKGROUND_IMAGE,
				ImageColor3 = theme.checkBox.background,
				LayoutOrder = self.props.LayoutOrder or 1,

				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,

				-- Tell the CheckBoxSet that this was selected
				[Roact.Event.Activated] = function()
					if self.props.Enabled then
						self.props.OnClicked()
					end
				end,
			}, {
				Selection = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Visible = self.props.Enabled and self.props.Selected,
					Image = theme.isDarkerTheme and SELECTED_IMAGE_DARK or SELECTED_IMAGE_LIGHT,
				}),

				TitleLabel = Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, titleWidth, 1, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(1, 5, 0.5, 0),

					TextColor3 = theme.checkBox.title,
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
			}),
		})
	end)
end

return CheckBox