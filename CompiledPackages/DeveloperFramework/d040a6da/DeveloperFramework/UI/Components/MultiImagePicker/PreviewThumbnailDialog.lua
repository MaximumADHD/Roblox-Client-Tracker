--[[
	A popup dialog for showing previews of thumbnails.

	Required Props:
		boolean Enabled: Whether the dialog is currently visible.
		callback OnClose: callback fired when the X button attached to the widget is pressed.
		list Order: The order in which the thumbnails are sorted.
		table Thumbnails: The thumbnails to display.
		callback UpdateAltTexts: callback that updates the alt text the user wrote for the thumbnail
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Localization Localization: A Localization ContextItem, which is provided via withContext.

	Optional Props:
		table AltTextError: The error associated with updating alt text.
		boolean IsVideoAllowed: If videos are allowed when selecting asset media
		boolean ShowAltText: Whether to display the alt text field in the preview thumbnail dialog or not. This
			defaults to true if nil.
		table StartThumbnailInfo: The thumbnail info of the thumbnail to display first.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Components = Framework.UI.Components
local HoverArea = require(Components.HoverArea)
local Pane = require(Components.Pane)
local TextInput = require(Components.TextInput)
local TextLabel = require(Components.TextLabel)
local StyledDialog = require(Components.StyledDialog)
local Tooltip = require(Components.Tooltip)
local Image = require(Components.Image)

local Util = Framework.Util
local Cryo = require(Framework.Parent.Cryo)
local StyleModifier = require(Util.StyleModifier)
local openVideoFromUrl = require(Util.openVideoFromUrl)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local Resources = require(Framework.Resources)

local RoundArrowButton = require(script.Parent.RoundArrowButton)
local MultiImagePickerTypes = require(script.Parent.types)

local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local COMPONENT_NAME = "MultiImagePicker"

export type Props = {
	AltTextError: MultiImagePickerTypes.AltTextErrorType?,
	Enabled: boolean,
	IsVideoAllowed: boolean?,
	OnClose: () -> (),
	Order: { string },
	ShowAltText: boolean?,
	StartThumbnailInfo: MultiImagePickerTypes.PreviewThumbnailType?,
	Thumbnails: { [string]: any },
	UpdateAltTexts: (string) -> (),
	Theme: { [string]: any },
}

type _Props = Props & {
	Localization: any,
}

local PreviewThumbnailDialog = Roact.Component:extend("PreviewThumbnailDialog")

function PreviewThumbnailDialog:init()
	self.state = {
		-- StyleModifier must be upper case first character because of how Theme in ContextServices uses it.
		StyleModifier = nil,
		IndexOffset = 0,
		Hovering = false,
		AltTexts = {},
	}

	self.getCurrentIndex = function()
		local props: _Props = self.props

		local order = props.Order
		local startThumbnailInfo = props.StartThumbnailInfo or {}
		local startIndex = Cryo.List.find(order, startThumbnailInfo.thumbnailId)
		if startIndex == nil then
			return nil
		end

		local indexOffset = self.state.IndexOffset
		local currentIndex = ((startIndex + indexOffset - 1) % #order) + 1
		return currentIndex
	end

	self.moveLeft = function()
		local indexOffset = self.state.IndexOffset
		self:setState({
			IndexOffset = indexOffset - 1,
		})
	end

	self.moveRight = function()
		local indexOffset = self.state.IndexOffset
		self:setState({
			IndexOffset = indexOffset + 1,
		})
	end

	self.altTextChanged = function(thumbnailId, altText)
		local props: _Props = self.props

		local thumbnails = props.Thumbnails
		local maxAltTextLength = props.Theme.PreviewThumbnailDialog.MaxAltTextLength
		local thumbnail = thumbnails[thumbnailId]

		self:setState({
			AltTexts = join(self.state.AltTexts, {
				[thumbnailId] = if thumbnail.altText ~= altText then altText else Cryo.None,
			}),
			Disabled = #altText > maxAltTextLength,
		})
	end

	self.onMouseEnter = function()
		if self.state.StyleModifier == nil then
			self:setState({
				StyleModifier = StyleModifier.Hover,
			})
		end
	end

	self.onMouseLeave = function()
		if self.state.StyleModifier == StyleModifier.Hover then
			self:setState({
				StyleModifier = Roact.None,
			})
		end
	end
end

function PreviewThumbnailDialog:mouseHoverChanged(hovering)
	self:setState({
		Hovering = hovering,
	})
end

function PreviewThumbnailDialog:didUpdate(oldProps)
	local props: _Props = self.props

	if oldProps.StartThumbnailInfo ~= nil and props.StartThumbnailInfo == nil then
		self:setState({
			IndexOffset = 0,
			AltTexts = {},
		})
	end
end

function PreviewThumbnailDialog:render()
	local props: _Props = self.props

	local thumbnails = props.Thumbnails
	local order = props.Order
	local isVideoAllowed = props.IsVideoAllowed
	local altTextError = props.AltTextError or {}

	local altTexts = self.state.AltTexts
	local hovering = self.state.Hovering
	local disabled = self.state.Disabled
	local currentIndex = self.getCurrentIndex()

	if currentIndex == nil then
		return nil
	end

	local thumbnailId = order[currentIndex]
	local thumbnail = thumbnails[thumbnailId]

	local videoHash = thumbnail.videoHash
	local videoTitle = thumbnail.videoTitle
	local imageId = thumbnail.imageId
	local tempId = thumbnail.tempId

	local newAltText = altTexts[thumbnailId]
	local altText = if newAltText ~= nil then newAltText else thumbnail.altText or ""
	local altTextErrorMessage = if altTextError.ThumbnailId == thumbnailId then altTextError.ErrorMessage else nil

	local showButtons = hovering and #order > 1

	local fullImageId
	if tempId then
		fullImageId = tempId
	elseif imageId then
		fullImageId = "rbxassetid://" .. imageId
	end

	local theme = props.Theme

	local image = if thumbnail.isModerated
		then theme.ModeratedImage
		elseif videoHash ~= nil then theme.VideoPlaceholder
		else fullImageId

	local previewThumbnailDialogTheme = theme.PreviewThumbnailDialog
	local tooltipIconTheme = previewThumbnailDialogTheme.TooltipIcon
	local localization = props.Localization

	local altTextContainerHeight = previewThumbnailDialogTheme.Height
		- previewThumbnailDialogTheme.Size.Y.Offset
		- theme.FontStyle.Normal.TextSize
		- previewThumbnailDialogTheme.AltTextInputHeight
	local buttonPadding = previewThumbnailDialogTheme.ButtonPadding
	local imagePadding = previewThumbnailDialogTheme.ImagePadding

	local Preview = Roact.createElement("ImageLabel", {
		Size = previewThumbnailDialogTheme.Size,
		BackgroundTransparency = 1,
		Image = image,
		ImageColor3 = videoHash ~= nil and theme.Thumbnail.Background or nil,
		ScaleType = Enum.ScaleType.Fit,
		LayoutOrder = 1,

		[Roact.Event.MouseEnter] = function()
			self:mouseHoverChanged(true)
		end,

		[Roact.Event.MouseLeave] = function()
			self:mouseHoverChanged(false)
		end,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = buttonPadding,
			PaddingBottom = buttonPadding,
			PaddingLeft = buttonPadding,
			PaddingRight = buttonPadding,
		}),

		LeftButton = showButtons and Roact.createElement(RoundArrowButton, {
			AnchorPoint = Vector2.new(0, 0.5),
			Disabled = disabled,
			Flipped = true,
			OnClick = self.moveLeft,
			Position = UDim2.new(0, 0, 0.5, 0),
			Theme = theme,
		}),

		RightButton = showButtons and Roact.createElement(RoundArrowButton, {
			AnchorPoint = Vector2.new(1, 0.5),
			Disabled = disabled,
			OnClick = self.moveRight,
			Position = UDim2.new(1, 0, 0.5, 0),
			Theme = theme,
		}),

		TitleFrame = Roact.createElement("Frame", {
			Visible = videoTitle ~= nil,
			BackgroundTransparency = 0.3,
			BorderSizePixel = 0,
			BackgroundColor3 = theme.Colors.Black,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			TitleText = Roact.createElement(
				"TextLabel",
				join(theme.FontStyle.Normal, {
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

		VideoWarning = Roact.createElement("Frame", {
			Visible = videoHash ~= nil,
			BackgroundTransparency = 0.3,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 400, 0, 120),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = theme.Colors.Black,
		}, {
			Message = Roact.createElement(
				"TextLabel",
				join(theme.FontStyle.Normal, {
					Size = UDim2.new(1, 0, if isVideoAllowed then 0.5 else 1, 0),
					BackgroundTransparency = 1,
					Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "PreviewDialogBody"),
				})
			),

			Link = if isVideoAllowed
				then Roact.createElement(
					"TextButton",
					join(theme.FontStyle.Normal, {
						Size = UDim2.new(1, 0, 0.5, 0),
						Position = UDim2.new(0, 0, 0.5, 0),
						BackgroundTransparency = 1,
						Text = localization:getProjectText(
							LOCALIZATION_PROJECT_NAME,
							COMPONENT_NAME,
							"PreviewDialogLink"
						),
						TextColor3 = theme.Hyperlink,

						[Roact.Event.Activated] = function()
							local url = openVideoFromUrl.getYoutubeWatchUrl(videoHash)
							openVideoFromUrl.open(url)
						end,
					}),
					{
						Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
					}
				)
				else nil,
		}),
	})

	return Roact.createElement(StyledDialog, {
		Style = "Alert",
		Enabled = props.Enabled, -- Equivalent to props.StartThumbnailInfo ~= nil
		Title = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "PreviewDialogHeader"),
		MinContentSize = Vector2.new(660, previewThumbnailDialogTheme.Height),
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right,
		Buttons = {
			{
				Key = true,
				Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ButtonSave"),
				Style = "RoundLargeTextPrimary",
				StyleModifier = if disabled then StyleModifier.Disabled else nil,
			},
		},
		OnButtonPressed = function(didApply)
			if didApply then
				props.UpdateAltTexts(altTexts)
			end
			props.OnClose()
		end,
		OnClose = function()
			props.OnClose()
		end,
	}, {
		Roact.createElement(Pane, {
			Padding = imagePadding,
			Size = UDim2.new(1, 0, 1, 0),
			Layout = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}, {
			Preview,
			AltText = if props.ShowAltText
				then Roact.createElement(Pane, {
					Size = UDim2.new(1, 0, 0, altTextContainerHeight),
					AutomaticSize = Enum.AutomaticSize.XY,
					Layout = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					LayoutOrder = 2,
				}, {
					Title = Roact.createElement(TextLabel, {
						Style = "SubText",
						Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "TitleAltText"),
						AutomaticSize = Enum.AutomaticSize.X,
						Size = UDim2.new(0, 0, 0, theme.FontStyle.Normal.TextSize),
						TextXAlignment = Enum.TextXAlignment.Left,
					}, {
						Tooltip = Roact.createElement(Image, {
							Size = UDim2.fromOffset(tooltipIconTheme.Size, tooltipIconTheme.Size),
							Position = UDim2.new(1, tooltipIconTheme.PaddingX, 0, 0),
							StyleModifier = self.state.StyleModifier,
							Image = tooltipIconTheme.Image,
							Color = tooltipIconTheme.Color,
							Style = {
								[StyleModifier.Hover] = {
									Color = tooltipIconTheme.HoverColor,
								},
							},
						}, {
							Roact.createElement(Tooltip, {
								Text = localization:getProjectText(
									LOCALIZATION_PROJECT_NAME,
									COMPONENT_NAME,
									"DescriptionAltText"
								),
							}),
							Roact.createElement(HoverArea, {
								Cursor = "PointingHand",
								MouseEnter = self.onMouseEnter,
								MouseLeave = self.onMouseLeave,
							}),
						}),
					}),

					TextBox = Roact.createElement(TextInput, {
						Height = previewThumbnailDialogTheme.AltTextInputHeight,
						MultiLine = true,

						MaxLength = previewThumbnailDialogTheme.MaxAltTextLength,
						Text = altText,
						TextSize = theme.FontStyle.Normal.TextSize,
						LayoutOrder = 2,

						ErrorText = altTextErrorMessage,
						OnTextChanged = function(newAltText)
							self.altTextChanged(thumbnailId, newAltText)
						end,
					}),
				})
				else nil,
		}),
	})
end

PreviewThumbnailDialog = withContext({
	Localization = ContextServices.Localization,
})(PreviewThumbnailDialog)

return PreviewThumbnailDialog
