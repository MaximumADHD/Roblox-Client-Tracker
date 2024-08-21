local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Image = require(Foundation.Components.Image)
local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
type Bindable<T> = Types.Bindable<T>
type ColorStyle = Types.ColorStyle

type IconProps = {
	name: string,
	style: ColorStyle?,
	size: IconSize?,
	Rotation: Bindable<number>?,
	AnchorPoint: Vector2?,
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	size = IconSize.Medium,
}

local function Icon(iconProps: IconProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(iconProps, defaultProps)
	local tokens = useTokens()
	local semanticTokens = tokens.Semantic

	local iconSize = semanticTokens.Icon.Size[props.size] -- TODO(tokens): Replace with non-semantic token
	local size = UDim2.fromOffset(iconSize, iconSize)

	local iconStyle = props.style or tokens.Color.Content.Default

	return React.createElement(
		Image,
		withCommonProps(props, {
			imageStyle = iconStyle,
			Image = props.name,
			Size = size,

			-- Pass through props
			ref = ref,
			Rotation = props.Rotation,
			AnchorPoint = props.AnchorPoint,
		}),
		props.children
	)
end

return React.memo(React.forwardRef(Icon))
