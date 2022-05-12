--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local HoverArea = Framework.UI.HoverArea

local CallToActionBanner = Roact.PureComponent:extend("CallToActionBanner")

type _InteralCallToActionBannerProps = {}

type _ExternalCallToActionBannerProps = {
	Text: string,
	Image: string,
	Gradient: ColorSequence?,
	GradientOff: Vector2?,
	LayoutOrder: number?,
	OnClick: () -> nil,
}

type CallToActionBannerProps = _InteralCallToActionBannerProps & _ExternalCallToActionBannerProps

type CallToActionBannerState = {
	fontSize: string,
	imageWidth: number,
	height: number,
}

CallToActionBanner.defaultProps = {
	Gradient = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromHex("#0C2859")),
		ColorSequenceKeypoint.new(1, Color3.fromHex("#B8425f")),
	}),
	GradientOff = Vector2.new(-0.34, 0),
}

local FONT_SIZE = 14
local SMALL_FONT_SIZE = 13
local TINY_FONT_SIZE = 12

local IMAGE_WIDTH = 197
local SMALL_IMAGE_WIDTH = 150
local TINY_IMAGE_WIDTH = 125

local SMALL_BREAK_POINT = 350
local TINY_BREAK_POINT = 285

local AUDIO_BANNER_HEIGHT = 75
local SMALL_AUDIO_BANNER_HEIGHT = 57
local TINY_AUDIO_BANNER_HEIGHT = 47

function CallToActionBanner:init(props: CallToActionBannerProps)
	self.ref = Roact.createRef()
	self.state = {
		fontSize = FONT_SIZE,
		imageWidth = IMAGE_WIDTH,
		height = AUDIO_BANNER_HEIGHT,
	}

	self.onAbsoluteSizeChange = function(rbx)
		if rbx.AbsoluteSize.X < TINY_BREAK_POINT then
			self:setState({
				fontSize = TINY_FONT_SIZE,
				imageWidth = TINY_IMAGE_WIDTH,
				height = TINY_AUDIO_BANNER_HEIGHT,
			})
		elseif rbx.AbsoluteSize.X < SMALL_BREAK_POINT then
			self:setState({
				fontSize = SMALL_FONT_SIZE,
				imageWidth = SMALL_IMAGE_WIDTH,
				height = SMALL_AUDIO_BANNER_HEIGHT,
			})
		else
			self:setState({
				fontSize = FONT_SIZE,
				imageWidth = IMAGE_WIDTH,
				height = AUDIO_BANNER_HEIGHT,
			})
		end
	end
end

function CallToActionBanner:render()
	local props: CallToActionBannerProps = self.props
	local state: CallToActionBannerState = self.state

	local image = props.Image
	local gradient = props.Gradient
	local gradientOff = props.GradientOff
	local layoutOrder = props.LayoutOrder
	local text = props.Text
	local onClick = props.OnClick

	local fontSize = state.fontSize
	local imageWidth = state.imageWidth
	local height = state.height

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, height),
		LayoutOrder = layoutOrder,
		[Roact.Ref] = self.ref,
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
		[Roact.Event.MouseButton1Click] = onClick,
	}, {
		HoverArea = Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
		}),
		Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			UIGradient = Roact.createElement("UIGradient", {
				Color = gradient,
				Offset = gradientOff,
			}),
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),
			Text = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -imageWidth - 10, 1, 0),
				BackgroundTransparency = 1,
				Font = Enum.Font.GothamSemibold,
				Text = text .. "  >",
				TextColor3 = Color3.fromHex("#FFFFFF"),
				TextSize = fontSize,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 14),
				}),
				Text = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.GothamSemibold,
					Text = text .. "  >",
					TextColor3 = Color3.fromHex("#FFFFFF"),
					TextSize = fontSize,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),
			Image = Roact.createElement("ImageLabel", {
				LayoutOrder = 2,
				Size = UDim2.new(0, imageWidth, 1, 0),
				BackgroundTransparency = 1,
				Image = image,
			}),
		}),
	})
end

function TypedCallToActionBanner(props: _ExternalCallToActionBannerProps, children: any?)
	return Roact.createElement(CallToActionBanner, props, children)
end

return { Component = CallToActionBanner, Generator = TypedCallToActionBanner }
