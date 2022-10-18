--[[
	A popup dialog for showing previews of thumbnails.

	Props:
		table Thumbnails = The thumbnails to display.
		list Order = The order in which the thumbnails are sorted.
		table StartThumbnailInfo = The thumbnail info of the thumbnail to display first.
		function AltTextChanged = A callback for when the user wants to change the alt text of a thumbnail.
		table AltTextError = The error associated with updating alt text.
]]
local FFlagGameSettingsEnableThumbnailAltText = game:GetFastFlag("GameSettingsEnableThumbnailAltText")

local Page = script.Parent.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local HoverArea = UI.HoverArea
local Pane = UI.Pane
local TextInput = UI.TextInput2
local Separator = UI.Separator
local TextLabel = UI.TextLabel

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local BrowserUtils = require(Plugin.Src.Util.BrowserUtils)
local getSocialMediaReferencesAllowed = require(Plugin.Src.Util.GameSettingsUtilities).getSocialMediaReferencesAllowed

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local RoundArrowButton = require(Page.Components.Thumbnails.RoundArrowButton)

local MAX_ALT_TEXT_LENGTH = 1000
local ALT_TEXT_INPUT_HEIGHT = 50
local DIALOG_HEIGHT = 380
local ALT_TEXT_CONTAINER_HEIGHT = DIALOG_HEIGHT
	- DEPRECATED_Constants.THUMBNAIL_PREVIEW_SIZE.Y.Offset
	- DEPRECATED_Constants.TEXT_SIZE
	- ALT_TEXT_INPUT_HEIGHT

local IMAGE_PADDING = if FFlagGameSettingsEnableThumbnailAltText then 10 else UDim.new(0, 10)
local BUTTON_PADDING = UDim.new(0, 20)

local PreviewThumbnailDialog = Roact.Component:extend("PreviewThumbnailDialog")

function PreviewThumbnailDialog:init()
	self.state = {
		IndexOffset = 0,
		Hovering = false,
	}

	self.getCurrentIndex = function()
		local order = self.props.Order
		local startThumbnailInfo = self.props.StartThumbnailInfo or {}
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
		self.props.AltTextChanged({
			thumbnailId = thumbnailId,
			altText = altText,
		})
	end
end

function PreviewThumbnailDialog:mouseHoverChanged(hovering)
	self:setState({
		Hovering = hovering,
	})
end

function PreviewThumbnailDialog:didUpdate(oldProps, oldState)
	if oldProps.StartThumbnailInfo ~= nil and self.props.StartThumbnailInfo == nil then
		self:setState({
			IndexOffset = 0,
		})
	end
end

function PreviewThumbnailDialog:render()
	local props = self.props
	local thumbnails = props.Thumbnails
	local order = props.Order
	local altTextError = props.AltTextError or {}

	local hovering = self.state.Hovering
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
	local altText = thumbnail.altText or ""
	local altTextErrorMessage = if altTextError.ThumbnailId == thumbnailId then altTextError.ErrorMessage else nil

	local showButtons = hovering and #order > 1

	local fullImageId
	if tempId then
		fullImageId = tempId
	elseif imageId then
		fullImageId = "rbxassetid://" .. imageId
	end

	local theme = props.Stylizer
	local localization = props.Localization

	local Preview = Roact.createElement("ImageLabel", {
		Size = if FFlagGameSettingsEnableThumbnailAltText
			then DEPRECATED_Constants.THUMBNAIL_PREVIEW_SIZE
			else UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = videoHash ~= nil and DEPRECATED_Constants.VIDEO_PLACEHOLDER or fullImageId,
		ImageColor3 = videoHash ~= nil and theme.thumbnail.background or nil,
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
			PaddingTop = BUTTON_PADDING,
			PaddingBottom = BUTTON_PADDING,
			PaddingLeft = BUTTON_PADDING,
			PaddingRight = BUTTON_PADDING,
		}),

		LeftButton = showButtons and Roact.createElement(RoundArrowButton, {
			Flipped = true,
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),

			OnClick = self.moveLeft,
		}),

		RightButton = showButtons and Roact.createElement(RoundArrowButton, {
			Position = UDim2.new(1, 0, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),

			OnClick = self.moveRight,
		}),

		TitleFrame = Roact.createElement("Frame", {
			Visible = videoTitle ~= nil,
			BackgroundTransparency = 0.3,
			BorderSizePixel = 0,
			BackgroundColor3 = DEPRECATED_Constants.BLACK,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			TitleText = Roact.createElement(
				"TextLabel",
				Cryo.Dictionary.join(theme.fontStyle.Normal, {
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
			BackgroundColor3 = DEPRECATED_Constants.BLACK,
		}, {
			Message = Roact.createElement(
				"TextLabel",
				Cryo.Dictionary.join(theme.fontStyle.Normal, {
					Size = UDim2.new(1, 0, 0.5, 0),
					BackgroundTransparency = 1,
					Text = localization:getText("General", "PreviewDialogBody"),
				})
			),

			Link = Roact.createElement(
				"TextButton",
				Cryo.Dictionary.join(theme.fontStyle.Normal, {
					Size = UDim2.new(1, 0, 0.5, 0),
					Position = UDim2.new(0, 0, 0.5, 0),
					BackgroundTransparency = 1,
					Text = getSocialMediaReferencesAllowed() and localization:getText("General", "PreviewDialogLink")
						or nil,
					TextColor3 = theme.hyperlink,

					[Roact.Event.Activated] = function()
						BrowserUtils.OpenVideo(videoHash)
					end,
				}),
				{
					Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
				}
			),
		}),
	})

	local Padding = if FFlagGameSettingsEnableThumbnailAltText
		then nil
		else Roact.createElement("UIPadding", {
			PaddingTop = IMAGE_PADDING,
			PaddingBottom = IMAGE_PADDING,
			PaddingLeft = IMAGE_PADDING,
			PaddingRight = IMAGE_PADDING,
		})

	local DialogContents = if FFlagGameSettingsEnableThumbnailAltText
		then Roact.createElement(Pane, {
			Padding = IMAGE_PADDING,
			AutomaticSize = Enum.AutomaticSize.XY,
			Layout = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			Preview,
			AltText = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 0, ALT_TEXT_CONTAINER_HEIGHT),
				AutomaticSize = Enum.AutomaticSize.XY,
				Layout = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				LayoutOrder = 2,
			}, {
				Title = Roact.createElement(TextLabel, {
					Style = "SubText",
					Text = localization:getText("General", "TitleAltText"),
					Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.TEXT_SIZE),
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				TextBox = Roact.createElement(TextInput, {
					Height = ALT_TEXT_INPUT_HEIGHT,
					MultiLine = true,

					MaxLength = MAX_ALT_TEXT_LENGTH,
					Text = altText,
					TextSize = DEPRECATED_Constants.TEXT_SIZE,
					LayoutOrder = 2,

					ErrorText = altTextErrorMessage,
					OnTextChanged = function(newAltText)
						self.altTextChanged(thumbnailId, newAltText)
					end,
				}),
			}),
		})
		else Preview

	return Roact.createElement(StyledDialog, {
		Style = "Alert",
		Enabled = props.Enabled, -- Equivalent to props.StartThumbnailInfo ~= nil
		Title = localization:getText("General", "PreviewDialogHeader"),
		MinContentSize = Vector2.new(660, DIALOG_HEIGHT),
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right,
		Buttons = {
			{ Key = true, Text = localization:getText("General", "ReplyOK"), Style = "RoundLargeTextPrimary" },
		},
		OnButtonPressed = function(didApply)
			props.OnClose()
		end,
		OnClose = function()
			props.OnClose()
		end,
	}, {
		Padding,
		DialogContents,
	})
end

PreviewThumbnailDialog = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(PreviewThumbnailDialog)

return PreviewThumbnailDialog
