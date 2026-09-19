--[[
	Represents a single thumbnail as part of a ThumbnailSet.

	Required Props:
		boolean HoverBarEnabled: Whether the interactable ThumbnailHoverBar should display on mouse hover.
		string Id: The unique identifier of this thumbnail.
		string Image: [If image thumbnail] The full image asset to display.

		callback StartDragging: A callback for when the user starts dragging this Thumbnail.
		callback DragMove: A callback for when the user drags a Thumbnail over this Thumbnail.
		callback PromptPreviewThumbnail: A callback for when the user attempts to preview this thumbnail.
		callback PromptDeleteThumbnail: A callback for when the user attempts to delete this thumbnail.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Localization Localization: A Localization ContextItem, which is provided via withContext.
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		number LayoutOrder: The order in which this Thumbnail will appear in the set.
		string VideoHash: [If video thumbnail] The full video hash to display.
		string VideoTitle: [If video thumbnail] The title of the video to display.
		boolean InReview: True if this thumbnail is under review by moderation. Defaults to false.
		boolean IsModerated: True if this thumbnail has been moderated. Defaults to false.
		boolean Preview: True if this thumbnail has just been picked but not uploaded to the backend yet. Defaults to false.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local Cryo = require(Framework.Parent.Cryo)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Resources = require(Framework.Resources)

local ThumbnailHoverBar = require(script.Parent.ThumbnailHoverBar)
local MultiImagePickerTypes = require(script.Parent.types)

local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local COMPONENT_NAME = "MultiImagePicker"

export type Props = {
	HoverBarEnabled: boolean,
	Id: string,
	Image: string,
	LayoutOrder: number?,
	InReview: boolean?,
	IsModerated: boolean?,
	Preview: boolean?,
	VideoHash: string?,
	VideoTitle: string?,

	StartDragging: (MultiImagePickerTypes.DragType) -> (),
	DragMove: (MultiImagePickerTypes.DragType) -> (),
	PromptDeleteThumbnail: (MultiImagePickerTypes.DeleteThumbnailType) -> (),
	PromptPreviewThumbnail: (MultiImagePickerTypes.PreviewThumbnailType) -> (),
	Theme: { [string]: any },
}

type _Props = Props & {
	Localization: any,
	Mouse: any,
}

local Thumbnail = Roact.PureComponent:extend("Thumbnail")

function Thumbnail:init()
	self.state = {
		Hovering = false,
	}
end

function Thumbnail:mouseHoverChanged(hovering)
	local props: _Props = self.props

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
	local props: _Props = self.props
	local theme = props.Theme
	local localization = props.Localization

	local videoHash = props.VideoHash
	local videoTitle = props.VideoTitle
	local inReview = props.InReview or false
	local isModerated = props.IsModerated or false
	local preview = props.Preview or false
	local hover = self.state.Hovering
	local index = props.LayoutOrder or 1
	local id = props.Id
	local hoverBarEnabled = props.HoverBarEnabled

	local image = if isModerated
		then theme.ModeratedImage
		elseif videoHash ~= nil then theme.VideoPlaceholder
		else props.Image

	local infoText = if isModerated
		then localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ImageModerated")
		elseif preview then localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ImagePreview")
		elseif inReview then localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ImageReview")
		else nil

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = index,
		Image = image,
		ImageColor3 = videoHash ~= nil and theme.Thumbnail.Background or nil,
		ScaleType = Enum.ScaleType.Fit,

		[Roact.Ref] = self.buttonRef,

		[Roact.Event.MouseEnter] = function()
			self:mouseHoverChanged(true)
			props.DragMove({
				index = index,
				thumbnailId = id,
			})
		end,

		[Roact.Event.MouseLeave] = function()
			self:mouseHoverChanged(false)
		end,

		[Roact.Event.MouseButton1Down] = function()
			props.StartDragging({
				index = index,
				thumbnailId = id,
			})
		end,
	}, {
		InfoText = Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.FontStyle.Normal, {
				Visible = infoText ~= nil and not (hoverBarEnabled and hover),
				BackgroundTransparency = 0.3,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.Colors.Black,
				TextColor3 = theme.Colors.White,
				Size = UDim2.new(1, 0, 0, 30),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),

				Text = infoText,
			})
		),

		TitleFrame = Roact.createElement("Frame", {
			Visible = videoTitle ~= nil,
			BackgroundTransparency = 0.3,
			BorderSizePixel = 0,
			BackgroundColor3 = theme.Colors.Black,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			TitleText = Roact.createElement(
				"TextLabel",
				Cryo.Dictionary.join(theme.FontStyle.Normal, {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -20, 1, 0),
					Position = UDim2.new(0.5, 0, 0, 0),
					AnchorPoint = Vector2.new(0.5, 0),

					Text = videoTitle,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				})
			),
		}),

		HoverBar = Roact.createElement(ThumbnailHoverBar, {
			Enabled = hoverBarEnabled and hover,
			PromptPreviewThumbnail = function()
				props.PromptPreviewThumbnail({
					index = index,
					thumbnailId = id,
					videoHash = videoHash,
					image = image,
				})
			end,
			PromptDeleteThumbnail = function()
				props.PromptDeleteThumbnail({
					thumbnailId = id,
				})
			end,
			Theme = theme,
		}),
	})
end

Thumbnail = withContext({
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(Thumbnail)

return Thumbnail
