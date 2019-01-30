--[[
	Represents the game's icon. When hovered, it shows a change option.

	Props:
		bool Visible = Whether this icon is currently visible.
		bool Review = Whether this icon is under review by moderation.
		string Image = The full game icon image asset to display.
			This prop should never be nil when Visible is true, because a nil Icon should
			trigger a NewGameIcon component to render rather than this.
		function OnClick = A callback invoked when this icon is clicked.
]]

local FALLBACK_IMAGE = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local GameIcon = Roact.PureComponent:extend("GameIcon")

function GameIcon:init()
	self.state = {
		Hovering = false,
	}
end

function GameIcon:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
	self:setState({
		Hovering = hovering,
	})
end

function GameIcon:render()
	return withTheme(function(theme)
		local image = self.props.Image
		local review = self.props.Review or false
		local preview = self.props.Preview or false
		local hover = self.state.Hovering

		return Roact.createElement("ImageLabel", {
			Visible = self.props.Visible,

			BackgroundTransparency = 1,
			Image = image,
			ScaleType = Enum.ScaleType.Crop,
			Size = UDim2.new(0, 150, 0, 150),
			ClipsDescendants = true,
			ZIndex = 2,

			[Roact.Ref] = self.buttonRef,

			[Roact.Event.MouseEnter] = function()
				self:mouseHoverChanged(true)
			end,

			[Roact.Event.MouseLeave] = function()
				self:mouseHoverChanged(false)
			end,
		}, {
			Fallback = Roact.createElement("ImageLabel", {
				Visible = self.props.Visible,
				BackgroundTransparency = 1,
				Image = FALLBACK_IMAGE,
				Size = UDim2.new(1, 0, 1, 0),
			}),

			InfoText = Roact.createElement("TextLabel", {
				Visible = review or preview,
				BackgroundTransparency = 0.3,
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.BLACK,
				Size = UDim2.new(1, 0, 0, 30),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				ZIndex = 3,

				Text = review and "In Review" or "Preview",
				TextColor3 = Constants.WHITE,
				TextSize = 22,
				Font = Enum.Font.SourceSans,
			}),

			Change = Roact.createElement("ImageButton", {
				Visible = hover and not review,

				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1.5, 0),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				Image = Constants.GRADIENT_IMAGE,
				ImageRectSize = Constants.GRADIENT_RECT_SIZE,
				ImageColor3 = Constants.BLACK,
				ZIndex = 4,

				[Roact.Event.Activated] = self.props.OnClick,
			}, {
				Text = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 30),
					Position = UDim2.new(0, 0, 1, -15),
					AnchorPoint = Vector2.new(0, 1),

					Text = "Change",
					TextColor3 = Constants.WHITE,
					TextSize = 22,
					Font = Enum.Font.SourceSans,
					ZIndex = 5,
				}),
			}),
		})
	end)
end

return GameIcon