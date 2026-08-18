local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local Flags = require(Foundation.Utility.Flags)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local SegmentedControlVariant = require(Foundation.Enums.SegmentedControlVariant)

type FillBehavior = FillBehavior.FillBehavior
type IconSize = IconSize.IconSize
type InputSize = InputSize.InputSize
type ColorStyleValue = Types.ColorStyleValue
type SegmentedControlVariant = SegmentedControlVariant.SegmentedControlVariant

local devAssert = require(Foundation.Utility.devAssert)
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
	variant: SegmentedControlVariant,
	fillBehavior: FillBehavior,
	isCircular: boolean?,
} & Types.CommonProps

local function Segment(props: SegmentProps, ref: React.Ref<GuiObject>?)
	local variant: SegmentedControlVariant = if Flags.FoundationSegmentedControlBeta
		then props.variant
		else nil :: never
	local fillBehavior: FillBehavior = if Flags.FoundationSegmentedControlBeta then props.fillBehavior else nil :: never
	local tokens = useTokens()
	local variantProps = useSegmentedControlVariants(
		tokens,
		props.size,
		if Flags.FoundationSegmentedControlBeta then variant else nil :: never,
		if Flags.FoundationSegmentedControlBeta then fillBehavior else nil :: never,
		props.isCircular,
		if Flags.FoundationSegmentedControlBeta then props.isActive else nil
	)

	devAssert(
		props.text == nil or props.icon == nil,
		"Segment: `text` and `icon` are mutually exclusive. Only one can be provided."
	)

	local isIcon = props.icon ~= nil
	local iconName: string?
	local iconVariant: BuilderIcons.IconVariant?
	local iconVariants

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
					testId = if Flags.FoundationSegmentedControlBeta then `{props.testId}--icon` else nil,
				})
				else React.createElement(Text, {
					tag = variantProps.text.tag,
					Text = props.text :: string,
					textStyle = if Flags.FoundationSegmentedControlBeta then variantProps.text.style else nil,
					testId = if Flags.FoundationSegmentedControlBeta then `{props.testId}--text` else nil,
				}),
		}
	)
end

return React.memo(React.forwardRef(Segment))
