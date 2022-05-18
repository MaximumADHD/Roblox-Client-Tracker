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

local Page = script.Parent.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local ThumbnailHoverBar = require(Page.Components.Thumbnails.ThumbnailHoverBar)

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
	local props = self.props

	-- TODO: change to use HoverArea from Developer Framework
	if hovering then
		props.Mouse:__pushCursor("SizeAll")
	else
		props.Mouse:__resetCursor()
	end

	self:setState({
		Hovering = hovering,
	})
end

function Thumbnail:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

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
		Image = videoHash ~= nil and DEPRECATED_Constants.VIDEO_PLACEHOLDER or image,
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
			BackgroundColor3 = DEPRECATED_Constants.BLACK,
			TextColor3 = DEPRECATED_Constants.WHITE,
			Size = UDim2.new(1, 0, 0, 30),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),

			Text = preview and localization:getText("General", "ImagePreview") or localization:getText("General", "ImageReview"),
		})),

		TitleFrame = Roact.createElement("Frame", {
			Visible = videoTitle ~= nil,
			BackgroundTransparency = 0.3,
			BorderSizePixel = 0,
			BackgroundColor3 = DEPRECATED_Constants.BLACK,
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
end


Thumbnail = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(Thumbnail)



return Thumbnail
