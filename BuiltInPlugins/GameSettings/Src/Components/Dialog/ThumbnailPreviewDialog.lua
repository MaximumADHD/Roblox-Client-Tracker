--[[
	A popup dialog for showing previews of thumbnails.

	Props:
		table Thumbnails = The thumbnails to display.
		list Order = The order in which the thumbnails are sorted.
		variant StartId = The thumbnailId of the thumbnail to display first.
]]

local BLACK = Color3.new(0, 0, 0)
local WHITE = Color3.new(1, 1, 1)

local IMAGE_PADDING = UDim.new(0, 10)
local BUTTON_PADDING = UDim.new(0, 20)

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local BrowserUtils = require(Plugin.Src.Util.BrowserUtils)

local RoundArrowButton = require(Plugin.Src.Components.RoundArrowButton)

local ThumbnailPreviewDialog = Roact.PureComponent:extend("ThumbnailPreviewDialog")

function ThumbnailPreviewDialog:init(initialProps)
	local currentIndex = Cryo.List.find(initialProps.Order, initialProps.StartId)
	self.state = {
		Hovering = false,
		CurrentIndex = currentIndex,
	}

	self.moveLeft = function()
		local currentIndex = self.state.CurrentIndex
		local order = self.props.Order
		local nextIndex = currentIndex == 1 and #order or currentIndex - 1
		self:setState({
			CurrentIndex = nextIndex,
		})
	end

	self.moveRight = function()
		local currentIndex = self.state.CurrentIndex
		local order = self.props.Order
		local nextIndex = currentIndex == #order and 1 or currentIndex + 1
		self:setState({
			CurrentIndex = nextIndex,
		})
	end
end

function ThumbnailPreviewDialog:mouseHoverChanged(hovering)
	self:setState({
		Hovering = hovering,
	})
end

function ThumbnailPreviewDialog:render()
	return withTheme(function(theme)
		local thumbnails = self.props.Thumbnails
		local order = self.props.Order
		local hovering = self.state.Hovering

		local current = order[self.state.CurrentIndex]
		local videoHash = thumbnails[current].videoHash
		local videoTitle = thumbnails[current].videoTitle
		local image = thumbnails[current].imageId

		local showButtons = hovering and #order > 1

		local displayImage
		if image then
			displayImage = "rbxassetid://" .. image
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = theme.dialog.background,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = IMAGE_PADDING,
				PaddingBottom = IMAGE_PADDING,
				PaddingLeft = IMAGE_PADDING,
				PaddingRight = IMAGE_PADDING,
			}),

			Preview = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = videoHash ~= nil and Constants.VIDEO_PLACEHOLDER or displayImage,
				ImageColor3 = videoHash ~= nil and theme.thumbnail.background or nil,
				ScaleType = Enum.ScaleType.Fit,

				Size = UDim2.new(1, 0, 1, 0),

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
					BackgroundColor3 = BLACK,
					Size = UDim2.new(1, 0, 0, 30),
				}, {
					TitleText = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -20, 1, 0),
						Position = UDim2.new(0.5, 0, 0, 0),
						AnchorPoint = Vector2.new(0.5, 0),

						Text = videoTitle,
						TextColor3 = WHITE,
						TextSize = 22,
						Font = Enum.Font.SourceSans,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				VideoWarning = Roact.createElement("Frame", {
					Visible = videoHash ~= nil,
					BackgroundTransparency = 0.3,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 400, 0, 120),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = BLACK,
				}, {
					Message = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0.5, 0),
						BackgroundTransparency = 1,
						Text = "Studio doesn't currently support video playing",
						TextColor3 = WHITE,
						TextSize = 22,
						Font = Enum.Font.SourceSans,
					}),

					Link = Roact.createElement("TextButton", {
						Size = UDim2.new(1, 0, 0.5, 0),
						Position = UDim2.new(0, 0, 0.5, 0),
						BackgroundTransparency = 1,
						Text = "Go to YouTube and play the video",
						TextColor3 = theme.hyperlink,
						TextSize = 22,
						Font = Enum.Font.SourceSans,

						[Roact.Event.Activated] = function()
							BrowserUtils.OpenVideo(videoHash)
						end,
					}),
				}),
			}),
		})
	end)
end

return ThumbnailPreviewDialog