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
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local GameIcon = Roact.PureComponent:extend("GameIcon")

local FFlagStudioFixGameSettingsIconLayering = game:DefineFastFlag("StudioFixGameSettingsIconLayering", false)

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
	return withLocalization(function(localized)
		return withTheme(function(theme)
			local image = self.props.Image
			local review = self.props.Review or false
			local preview = self.props.Preview or false
			local hover = self.state.Hovering

			return Roact.createElement("ImageLabel", {
				Visible = self.props.Visible,
				Size = UDim2.new(0, 150, 0, 150),
				BackgroundTransparency = 1,
				ClipsDescendants = true,

				-- We can't check whether the game icon has been moderated (or is still in the mod queue), so
				-- always show a fallback icon underneath the real icon. If the real icon fails to load (e.g.
				-- was moderated), the fallback moderation icon appears. If the real icon succeeds in loading,
				-- it will cover the fallback icon. You can see the fallback icon through any transparent
				-- areas on the real icon, but we don't have a better alternative right now.
				Image = FFlagStudioFixGameSettingsIconLayering and FALLBACK_IMAGE or image,
				ScaleType = (not FFlagStudioFixGameSettingsIconLayering) and Enum.ScaleType.Crop or nil,
				ZIndex = (not FFlagStudioFixGameSettingsIconLayering) and 2 or nil,

				[Roact.Ref] = self.buttonRef,

				[Roact.Event.MouseEnter] = function()
					self:mouseHoverChanged(true)
				end,

				[Roact.Event.MouseLeave] = function()
					self:mouseHoverChanged(false)
				end,
			}, {
				[FFlagStudioFixGameSettingsIconLayering and "Icon" or "Fallback"] = Roact.createElement("ImageLabel", {
					Visible = self.props.Visible,
					BackgroundTransparency = 1,
					Image = FFlagStudioFixGameSettingsIconLayering and image or FALLBACK_IMAGE,
					ScaleType = FFlagStudioFixGameSettingsIconLayering and Enum.ScaleType.Crop or Enum.ScaleType.Stretch,
					Size = UDim2.new(1, 0, 1, 0),
				}),

				InfoText = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
					Visible = review or preview,
					BackgroundTransparency = 0.3,
					BorderSizePixel = 0,
					BackgroundColor3 = Constants.BLACK,
					Size = UDim2.new(1, 0, 0, 30),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					ZIndex = 3,

					Text = preview and localized.GameIcon.Preview or localized.GameIcon.Review,
				})),

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
					Text = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 30),
						Position = UDim2.new(0, 0, 1, -15),
						AnchorPoint = Vector2.new(0, 1),

						Text = localized.GameIcon.Change,
						ZIndex = 5,
					})),
				}),
			})
		end)
	end)
end

return GameIcon