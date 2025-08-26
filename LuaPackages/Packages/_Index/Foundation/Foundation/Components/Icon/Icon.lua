local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local Font = BuilderIcons.Font
local IconVariant = BuilderIcons.IconVariant
type IconVariant = BuilderIcons.IconVariant

local Text = require(Foundation.Components.Text)
local Image = require(Foundation.Components.Image)
local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useIconSize = require(Foundation.Utility.useIconSize)
local Logger = require(Foundation.Utility.Logger)
local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)
local migrateIconName = require(script.Parent.migrateIconName)
local migrateFontSize = require(script.Parent.migrateFontSize)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type ColorStyle = Types.ColorStyle

export type IconProps = {
	name: string,
	style: ColorStyle?,
	size: IconSize | Bindable<number>?,
	variant: IconVariant?,
	Rotation: Bindable<number>?,
	-- **DEPRECATED**
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	size = IconSize.Medium,
	variant = IconVariant.Regular,
}

local function Icon(iconProps: IconProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(iconProps, defaultProps)
	local tokens = useTokens()
	local textSizeOffset = useTextSizeOffset()
	local migratedIcon = migrateIconName(props.name)
	local size = useIconSize(props.size, isBuilderIcon(props.name))

	local variant = props.variant
	local name = props.name
	local fontSize: number? = if typeof(size) == "table" then nil else size.Y.Offset

	if not isBuilderIcon(name) then
		if migratedIcon then
			if typeof(size) == "table" then
				error("Binding size isn't supported when migrating a UIBlox icon, use Builder Icons directly")
			end
			variant = migratedIcon.variant or variant
			name = migratedIcon.name
			fontSize = migrateFontSize(fontSize :: number, tokens)
		end
	end

	local iconStyle = props.style or tokens.Color.Content.Default

	if not isBuilderIcon(name) and not migratedIcon then
		if iconProps.variant ~= nil then
			Logger:warning("variant is not supported when using FoundationImages, consider using BuilderIcons")
		end
		return React.createElement(
			Image,
			withCommonProps(props, {
				imageStyle = iconStyle,
				Image = name,
				Size = size,

				-- Pass through props
				ref = ref,
				Rotation = props.Rotation,
			}),
			props.children
		) :: React.Node
	else
		return React.createElement(
			Text,
			withCommonProps(props, {
				textStyle = iconStyle,
				Text = name,
				fontStyle = {
					Font = Font[variant],
					FontSize = fontSize,
				},
				TextScaled = typeof(size) == "table",
				Size = size,

				-- Pass through props
				ref = ref,
				Rotation = props.Rotation,
			}),
			{
				UITextSizeConstraint = if textSizeOffset > 0 and fontSize
					then React.createElement("UITextSizeConstraint", {
						MaxTextSize = fontSize,
					})
					else nil,
				Children = React.createElement(React.Fragment, props.children),
			}
		)
	end
end

return React.memo(React.forwardRef(Icon))
