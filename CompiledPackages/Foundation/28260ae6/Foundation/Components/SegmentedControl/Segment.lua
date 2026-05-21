local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)

local Flags = require(Foundation.Utility.Flags)
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)

type IconSize = IconSize.IconSize
type InputSize = InputSize.InputSize
type ColorStyleValue = Types.ColorStyleValue

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useSegmentedControlVariants = require(script.Parent.useSegmentedControlVariants)

export type Segment = {
	id: Types.ItemId,
	text: string?,
	icon: (string | {
		name: BuilderIcons.Icon,
		variant: BuilderIcons.IconVariant?,
	})?,
	-- Ref to the segment element
	ref: React.RefObject<GuiObject?>?,
}

type SegmentProps = Segment & {
	isActive: boolean,
	onActivated: (id: Types.ItemId) -> (),
	size: InputSize,
} & Types.CommonProps

local function Segment(props: SegmentProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local variantProps = useSegmentedControlVariants(tokens, props.size)

	if _G.__DEV__ == true then
		assert(
			props.text == nil or props.icon == nil,
			"Segment: `text` and `icon` are mutually exclusive. Only one can be provided."
		)
	end

	local isIcon: boolean?
	local iconName: string?
	local iconVariant: BuilderIcons.IconVariant?
	local iconVariants
	if Flags.FoundationSegmentedControlIconSupport then
		isIcon = props.icon ~= nil

		if isIcon then
			if typeof(props.icon) == "table" then
				local iconConfig = props.icon :: {
					name: BuilderIcons.Icon,
					variant: BuilderIcons.IconVariant?,
				}
				iconName = iconConfig.name :: string
				iconVariant = iconConfig.variant
			else
				iconName = props.icon :: string
			end
			iconVariants = variantProps.icon :: { size: IconSize, style: ColorStyleValue }
		end
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.segment.tag,
			onActivated = function()
				props.onActivated(props.id)
			end,
			ref = ref,
		}),
		{
			Text = if isIcon
				then React.createElement(Icon, {
					name = iconName :: string,
					variant = iconVariant,
					size = iconVariants.size,
					style = iconVariants.style,
				})
				else React.createElement(Text, {
					tag = variantProps.text.tag,
					Text = props.text :: string,
				}),
		}
	)
end

return React.memo(React.forwardRef(Segment))
