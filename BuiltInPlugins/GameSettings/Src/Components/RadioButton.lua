--[[
	Hoverable and clickable radio button, from a RadioButtonSet.

	Props:
		string Id = Unique identifier of this RadioButton
		string Title = Text to display on this RadioButton
		string Description = Smaller tooltip text to display below this RadioButton
		bool Selected = Whether to display this RadioButton as selected
		int Index = The order in which this RadioButton is displayed, top to bottom
		bool Enabled = Whether this RadioButton accepts input
]]

local BACKGROUND_IMAGE = "rbxasset://textures/GameSettings/RadioButton.png"
local SELECTED_IMAGE = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local RadioButton = Roact.PureComponent:extend("RadioButton")

function RadioButton:mouseHoverChanged(hovering)
	--TODO: Set mouse to hand icon?
end

function RadioButton:render()
	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Constants.RADIO_BUTTON_SIZE * 2),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Button = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, Constants.RADIO_BUTTON_SIZE, 0, Constants.RADIO_BUTTON_SIZE),
				BackgroundTransparency = 1,
				ImageTransparency = self.props.Enabled and 0 or 0.8,
				Image = BACKGROUND_IMAGE,
				ImageColor3 = theme.radioButton.background,
				LayoutOrder = self.props.LayoutOrder or 1,

				[Roact.Event.MouseEnter] = function()
					if self.props.Enabled then
						self:mouseHoverChanged(true)
					end
				end,

				[Roact.Event.MouseLeave] = function()
					if self.props.Enabled then
						self:mouseHoverChanged(false)
					end
				end,

				-- Tell the RadioButtonSet that this is the currently selected button
				[Roact.Event.Activated] = function()
					if self.props.Enabled then
						self.props.OnClicked()
					end
				end,
			}, {
				Highlight = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = theme.isDarkerTheme and UDim2.new(0.4, 0, 0.4, 0) or UDim2.new(0.5, 0, 0.5, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Visible = self.props.Enabled and self.props.Selected,
					Image = SELECTED_IMAGE,
				}),

				TitleLabel = Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 250, 1, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(1, 5, 0.5, 0),

					TextColor3 = theme.radioButton.title,
					Font = Enum.Font.SourceSans,
					TextSize = 22,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextTransparency = self.props.Enabled and 0 or 0.5,
					Text = self.props.Title,

					[Roact.Event.Activated] = function()
						if self.props.Enabled then
							self.props.OnClicked()
						end
					end,
				}),

				DescriptionLabel = Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 250, 1, 0),
					Position = UDim2.new(1, 5, 1, 2),

					TextColor3 = theme.radioButton.description,
					Font = Enum.Font.SourceSans,
					TextSize = 16,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Text = self.props.Description or "",

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

return RadioButton