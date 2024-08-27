local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local Icon = require(Foundation.Components.Icon)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ICON_SIZE_TO_RADIUS: { [IconSize]: Radius } = {
	[IconSize.Small] = Radius.Small,
	[IconSize.Medium] = Radius.Medium,
	[IconSize.Large] = Radius.Large,
	-- No Xlarge, map to large
	[IconSize.XLarge] = Radius.Large,
	-- No XXlarge, map to large
	[IconSize.XXLarge] = Radius.Large,
}

type IconButtonProps = {
	onActivated: () -> (),
	isDisabled: boolean?,
	size: IconSize?,
	icon: string,
} & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	size = IconSize.Medium,
}

local function IconButton(iconButtonProps: IconButtonProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(iconButtonProps, defaultProps)
	local tokens = useTokens()

	local radiusEnum = ICON_SIZE_TO_RADIUS[props.size]
	local radius = tokens.Radius[radiusEnum]

	-- TODO: Figure out right padding for this?
	local padding = UDim.new(0, radius)

	local iconSize = tokens.Semantic.Icon.Size[props.size] -- TODO(tokens): Replace with a non-sematic token
	local size = UDim2.fromOffset(iconSize, iconSize)

	local cursor = useCursor({
		radius = UDim.new(0, radius),
		borderWidth = tokens.Stroke.Thicker,
	})

	return React.createElement(
		View,
		withCommonProps(props, {
			onActivated = props.onActivated,

			Size = size + UDim2.new(padding, padding) + UDim2.new(padding, padding),
			selection = {
				Selectable = not props.isDisabled,
				SelectionImageObject = cursor,
			},
			padding = padding,
			cornerRadius = UDim.new(0, radius),

			ref = ref,
		}),
		{
			Icon = React.createElement(Icon, {
				name = props.icon,
				size = props.size,
			}),
		}
	)
end

return React.memo(React.forwardRef(IconButton))
