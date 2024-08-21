local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local useTokens = require(Foundation.Providers.Style.useTokens)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
type Bindable<T> = Types.Bindable<T>

local ICON_SIZE_TO_RADIUS: { [IconSize]: Radius } = {
	[IconSize.Small] = Radius.Small,
	[IconSize.Medium] = Radius.Medium,
	[IconSize.Large] = Radius.Large,
	-- No Xlarge, map to large
	[IconSize.XLarge] = Radius.Large,
	-- No Xxlarge, map to large
	[IconSize.XXLarge] = Radius.Large,
}

type IconButtonProps = {
	onActivated: () -> (),
	isDisabled: boolean?,
	size: IconSize?,
	SelectionImageObject: Bindable<React.Ref<GuiObject>>?,
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	size = IconSize.Medium,
}

local function IconButton(iconButtonProps: IconButtonProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(iconButtonProps, defaultProps)
	local tokens = useTokens()
	local semanticTokens = tokens.Semantic

	-- TODO: Find better border radiuses based on icon button size
	local radiusEnum
	if typeof(props.size) == "UDim2" then
		radiusEnum = Radius.Medium
	else
		radiusEnum = ICON_SIZE_TO_RADIUS[props.size]
	end
	local radius = tokens.Radius[radiusEnum]

	-- TODO: Figure out right padding for this?
	local padding = UDim.new(0, radius)
	local size: UDim2
	if typeof(props.size) == "UDim2" then
		size = props.size
	else
		local iconSize = semanticTokens.Icon.Size[props.size] -- TODO(tokens): Replace with a non-sematic token
		size = UDim2.fromOffset(iconSize, iconSize)
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			onActivated = props.onActivated,

			Size = size + UDim2.new(padding, padding) + UDim2.new(padding, padding),
			selection = {
				Selectable = not props.isDisabled,
				SelectionImageObject = props.SelectionImageObject,
			},
			-- Pass through props
			ref = ref,
		}),
		Cryo.Dictionary.union({
			Padding = React.createElement("UIPadding", {
				PaddingTop = padding,
				PaddingBottom = padding,
				PaddingLeft = padding,
				PaddingRight = padding,
			}),
			Corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, radius),
			}),
		}, props.children)
	)
end

return React.memo(React.forwardRef(IconButton))
