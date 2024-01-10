--!nonstrict
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
local enumerateValidator = require(UIBloxRoot.Utility.enumerateValidator)
local ButtonType = require(AppRoot.Button.Enum.ButtonType)

local ToastFrame = require(ToastRoot.ToastFrame)
local ToastIcon = require(ToastRoot.ToastIcon)
local ToastText = require(ToastRoot.ToastText)

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 4,
}
local PRESSED_SCALE = 0.95
local TOAST_BACKGROUND_IMAGE = Images["component_assets/circle_21"]
local TOAST_SLICE_CENTER = Rect.new(10, 10, 11, 11)

local InteractiveToast = Roact.PureComponent:extend("InteractiveToast")

InteractiveToast.validateProps = t.strictInterface({
	-- AnchorPoint of the `ToastContainer`
	anchorPoint = t.optional(t.Vector2),
	-- A button with text buttonText and callback onActivated will appear if passed in
	buttonProps = t.optional(t.strictInterface({
		-- Dimensions of the button
		buttonDimensions = t.Vector2,
		-- Text of the button
		buttonText = t.string,
		-- Callback of the button
		onActivated = t.callback,
		-- Style of button
		buttonType = t.optional(enumerateValidator(ButtonType)),
	})),
	iconProps = t.optional(ToastIcon.validateProps),
	-- A Roact children table of icon image to customize toast icon
	iconChildren = t.optional(t.table),
	-- Whether a toast with a button should have a compact view
	isCompact = t.optional(t.boolean),
	-- LayoutOrder of toast page
	layoutOrder = t.optional(t.integer),
	padding = t.optional(t.numberMin(0)),
	-- Position of `ToastContainer` in the whole page
	position = t.optional(t.UDim2),
	pressed = t.optional(t.boolean),
	pressedScale = t.number,
	-- Size of `ToastContainer`, height is dynamic based on text length
	size = t.UDim2,
	subtitleTextProps = t.optional(ToastText.validateProps),
	textFrameSize = t.optional(t.UDim2),
	titleTextProps = ToastText.validateProps,
})

InteractiveToast.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	layoutOrder = 1,
	position = UDim2.new(0.5, 0, 0.5, 0),
	pressedScale = PRESSED_SCALE,
	size = UDim2.new(1, 0, 1, 0),
}

function InteractiveToast:render()
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
			ToastFrame = Roact.createElement(ToastFrame, {
				buttonProps = self.props.buttonProps,
				iconProps = self.props.iconProps,
				iconChildren = self.props.iconChildren,
				isCompact = self.props.isCompact,
				padding = self.props.padding,
				subtitleTextProps = self.props.subtitleTextProps,
				textFrameSize = self.props.textFrameSize,
				titleTextProps = self.props.titleTextProps,
			}),
		})
	end)
end

return InteractiveToast
