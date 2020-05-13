local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)
local SpringAnimatedItem = require(UIBloxRoot.Utility.SpringAnimatedItem)

local ToastFrame = require(ToastRoot.ToastFrame)
local validateToastIcon = require(ToastRoot.Validator.validateToastIcon)
local validateToastText = require(ToastRoot.Validator.validateToastText)

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 4,
}
local PRESSED_SCALE = 0.95
local TOAST_BACKGROUND_IMAGE = Images["component_assets/circle_21"]
local TOAST_BORDER_IMAGE = Images["component_assets/circle_21_stroke_1"]
local TOAST_SLICE_CENTER = Rect.new(10, 10, 11, 11)

local InteractiveToast = Roact.PureComponent:extend("InteractiveToast")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	iconProps = t.optional(validateToastIcon),
	layoutOrder = t.optional(t.integer),
	padding = t.optional(t.numberMin(0)),
	position = t.optional(t.UDim2),
	pressed = t.optional(t.boolean),
	pressedScale = t.number,
	size = t.UDim2,
	subtitleTextProps = t.optional(validateToastText),
	textFrameSize = t.optional(t.UDim2),
	titleTextProps = validateToastText,
})

InteractiveToast.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	layoutOrder = 1,
	position = UDim2.new(0.5, 0, 0.5, 0),
	pressedScale = PRESSED_SCALE,
	size = UDim2.new(1, 0, 1, 0),
}

function InteractiveToast:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = self.props.anchorPoint,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Image = TOAST_BACKGROUND_IMAGE,
			ImageColor3 = theme.SystemPrimaryContent.Color,
			ImageTransparency = theme.SystemPrimaryContent.Transparency,
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			ScaleType = Enum.ScaleType.Slice,
			Size = self.props.size,
			SliceCenter = TOAST_SLICE_CENTER,
		}, {
			Scaler = Roact.createElement(SpringAnimatedItem.AnimatedUIScale, {
				springOptions = ANIMATION_SPRING_SETTINGS,
				animatedValues = {
					scale = self.props.pressed and self.props.pressedScale or 1,
				},
				mapValuesToProps = function(values)
					return {
						Scale = values.scale,
					}
				end,
			}),
			ToastBorder = Roact.createElement(ImageSetComponent.Label, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = TOAST_BORDER_IMAGE,
				ImageColor3 = theme.TextDefault.Color,
				ImageTransparency = theme.TextDefault.Transparency,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ScaleType = Enum.ScaleType.Slice,
				Size = UDim2.new(1, 0, 1, 0),
				SliceCenter = TOAST_SLICE_CENTER,
			}),
			ToastFrame = Roact.createElement(ToastFrame, {
				iconProps = self.props.iconProps,
				padding = self.props.padding,
				subtitleTextProps = self.props.subtitleTextProps,
				textFrameSize = self.props.textFrameSize,
				titleTextProps = self.props.titleTextProps,
			}),
		})
	end)
end

return InteractiveToast
