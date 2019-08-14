--[[
	Represents a single thumbnail as part of a ThumbnailSet.

	Props:
		string Id = The unique identifier of this thumbnail.
		bool Review = Whether this thumbnail is under review by moderation.
		string Image = [If image thumbnail] The full image asset to display.
		string VideoHash = [If video thumbnail] The full video hash to display.
		string VideoTitle = [If video thumbnail] The title of the video to display.
		bool HoverBarEnabled = Whether the interactable ThumbnailHoverBar should display on mouse hover.
		int LayoutOrder = The order in which this Thumbnail will appear in the set.

		function StartDragging = A callback for when the user starts dragging this Thumbnail.
		function DragMove = A callback for when the user drags a Thumbnail over this Thumbnail.
		function ButtonPressed = A callback for when the user interacts with this Thumbnail.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local ThumbnailHoverBar = require(Plugin.Src.Components.Thumbnails.ThumbnailHoverBar)

local Thumbnail = Roact.PureComponent:extend("Thumbnail")

function Thumbnail:init()
	self.state = {
		Hovering = false,
	}

	self.buttonPressed = function(button)
		self.props.ButtonPressed(button, {
			index = self.props.LayoutOrder or 1,
			thumbnailId = self.props.Id,
			videoHash = self.props.VideoHash,
			image = self.props.Image,
		})
	end
end

function Thumbnail:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("SizeAll", hovering)
	self:setState({
		Hovering = hovering,
	})
end

function Thumbnail:render()
	return withLocalization(function(localized)
		return withTheme(function(theme)
			local image = self.props.Image
			local videoHash = self.props.VideoHash
			local videoTitle = self.props.VideoTitle
			local review = self.props.Review or false
			local preview = self.props.Preview or false
			local hover = self.state.Hovering
			local index = self.props.LayoutOrder or 1
			local Id = self.props.Id
			local hoverBarEnabled = self.props.HoverBarEnabled

			return Roact.createElement("ImageButton", {
				BackgroundTransparency = 1,
				LayoutOrder = index,
				Image = videoHash ~= nil and Constants.VIDEO_PLACEHOLDER or image,
				ImageColor3 = videoHash ~= nil and theme.thumbnail.background or nil,
				ScaleType = Enum.ScaleType.Fit,

				[Roact.Ref] = self.buttonRef,

				[Roact.Event.MouseEnter] = function()
					self:mouseHoverChanged(true)
					self.props.DragMove({
						index = index,
						thumbnailId = Id,
					})
				end,

				[Roact.Event.MouseLeave] = function()
					self:mouseHoverChanged(false)
				end,

				[Roact.Event.MouseButton1Down] = function()
					self.props.StartDragging({
						index = index,
						thumbnailId = Id,
					})
				end,
			}, {
				InfoText = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
					Visible = (review or preview) and not (hoverBarEnabled and hover),
					BackgroundTransparency = 0.3,
					BorderSizePixel = 0,
					BackgroundColor3 = Constants.BLACK,
					Size = UDim2.new(1, 0, 0, 30),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),

					Text = preview and localized.Thumbnail.Preview or localized.Thumbnail.Review,
				})),

				TitleFrame = Roact.createElement("Frame", {
					Visible = videoTitle ~= nil,
					BackgroundTransparency = 0.3,
					BorderSizePixel = 0,
					BackgroundColor3 = Constants.BLACK,
					Size = UDim2.new(1, 0, 0, 30),
				}, {
					TitleText = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -20, 1, 0),
						Position = UDim2.new(0.5, 0, 0, 0),
						AnchorPoint = Vector2.new(0.5, 0),

						Text = videoTitle,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
					})),
				}),

				HoverBar = Roact.createElement(ThumbnailHoverBar, {
					Enabled = hoverBarEnabled and hover,
					ButtonPressed = self.buttonPressed,
				})
			})
		end)
	end)
end

return Thumbnail