local ControllerBar = script.Parent
local Navigation = ControllerBar.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local useStyle = require(UIBlox.Core.Style.useStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local ImagesTypes = require(App.ImageSet.ImagesTypes)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)

type HalfCircleProps = {
	layoutOrder: number,
	isLeft: boolean?,
	rotation: any,
	progressImage: string | ImagesTypes.ImageSetImage,
}

type ProgressIconProps = {
	progress: any,
	icon: string | ImagesTypes.ImageSetImage,
	iconHolding: (string | ImagesTypes.ImageSetImage)?,
	isHolding: boolean,
}

local SUBTRACT_ANGLE = 46
local SUBTRACT_ANGLE_HALF = SUBTRACT_ANGLE / 2
local PERCENTAGE_ANGLE = 360 - SUBTRACT_ANGLE
local ICON_INITIAL_TRANSPARENCY = 0.8 -- alpha 0.2

local CIRCLE_IMAGE = "icons/controls/keys/hold_button_assets/hold_Unpressed_RadialFill"
local CIRCLE_IMAGE_HOLDING = "icons/controls/keys/hold_button_assets/hold_Pressed_RadialFill"
local ARROW_IMAGE = "icons/controls/keys/hold_button_assets/hold_Unpressed_Arrow"
local ARROW_IMAGE_HOLDING = "icons/controls/keys/hold_button_assets/hold_Pressed_Arrow"

local function renderHalfCircle(props: HalfCircleProps, style: StyleTypes.AppStyle)
	local layoutOrder = props.layoutOrder
	local isLeft = props.isLeft
	local rotation = props.rotation
	local progressImage = props.progressImage

	local percentageStyle = style.Theme.IconDefault
	local backgroundStyle = style.Theme.Divider

	return React.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.fromScale(0.5, 1),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
	}, {
		CircleImage = React.createElement(ImageSetComponent.Label, {
			Size = UDim2.fromScale(2, 1),
			AnchorPoint = if isLeft then nil else Vector2.new(0.5, 0),
			Image = progressImage,
			BackgroundTransparency = 1,
		}, {
			UIGradient = React.createElement("UIGradient", {
				Rotation = rotation,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, percentageStyle.Color),
					ColorSequenceKeypoint.new(0.499, percentageStyle.Color),
					ColorSequenceKeypoint.new(0.5, backgroundStyle.Color),
					ColorSequenceKeypoint.new(1, backgroundStyle.Color),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, percentageStyle.Transparency),
					NumberSequenceKeypoint.new(0.499, percentageStyle.Transparency),
					NumberSequenceKeypoint.new(0.5, backgroundStyle.Transparency),
					NumberSequenceKeypoint.new(1, backgroundStyle.Transparency),
				}),
			}),
		}),
	})
end

local function ProgressIcon(props: ProgressIconProps)
	local progress = props.progress
	local isHolding = props.isHolding
	local icon = if isHolding then props.iconHolding else props.icon
	local progressImage = if isHolding then Images[CIRCLE_IMAGE_HOLDING] else Images[CIRCLE_IMAGE]
	local arrowImage = if isHolding then Images[ARROW_IMAGE_HOLDING] else Images[ARROW_IMAGE]
	local style = useStyle()

	local leftRotation = React.useMemo(function()
		return progress:map(function(value)
			value = value or 0
			return math.clamp(value * PERCENTAGE_ANGLE + SUBTRACT_ANGLE_HALF, 180, 360 - SUBTRACT_ANGLE_HALF)
		end)
	end, { progress })

	local rightRotation = React.useMemo(function()
		return progress:map(function(value)
			value = value or 0
			return math.clamp(value * PERCENTAGE_ANGLE + SUBTRACT_ANGLE_HALF, SUBTRACT_ANGLE_HALF, 180)
		end)
	end, { progress })

	local iconTransparency = React.useMemo(function()
		return progress:map(function(value: number?)
			if value then
				return math.clamp(
					ICON_INITIAL_TRANSPARENCY - value * ICON_INITIAL_TRANSPARENCY,
					0,
					ICON_INITIAL_TRANSPARENCY
				)
			end
			return 0
		end)
	end, { progress })

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		Progress = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ZIndex = 1,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Left = renderHalfCircle({
				layoutOrder = 1,
				isLeft = true,
				progressImage = progressImage,
				rotation = leftRotation,
			}, style),
			Right = renderHalfCircle({
				layoutOrder = 2,
				progressImage = progressImage,
				rotation = rightRotation,
			}, style),
		}),
		Icon = React.createElement(ImageSetComponent.Label, {
			Size = UDim2.fromScale(1, 1),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Image = icon,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = iconTransparency,
			BackgroundTransparency = 1,
			ZIndex = 2,
		}),
		Arrow = React.createElement(ImageSetComponent.Label, {
			Size = UDim2.fromScale(1, 1),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, 0),
			Image = arrowImage,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = 0,
			BackgroundTransparency = 1,
			ZIndex = 3,
		}),
	})
end

return ProgressIcon
