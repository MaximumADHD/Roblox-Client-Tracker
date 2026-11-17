local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local MetadataAccessoryElement = require(script.Parent.MetadataAccessory)
local useMetadataVariants = require(script.Parent.useMetadataVariants)
type MetadataVariantProps = useMetadataVariants.MetadataVariantProps

type IconAccessoryConfig = Types.IconAccessoryConfig
type MetadataAccessory = IconAccessoryConfig | Types.AvatarAccessoryConfig

export type MetadataItemProps = {
	index: number,
	text: string,
	leading: (string | MetadataAccessory)?,
	trailing: (string | IconAccessoryConfig)?,
	variantProps: MetadataVariantProps,
	isWrapped: boolean,
	textHeight: number,
	shrinkRatio: number?,
	minTextWidth: number?,
	onTextSizeChanged: ((instance: GuiObject) -> ())?,
	LayoutOrder: number,
	testId: string,
}

local function MetadataItem(props: MetadataItemProps): React.ReactNode
	local getAccessoryWidth = React.useCallback(function(config: (string | MetadataAccessory)?): number
		if config == nil then
			return 0
		end
		local width = if type(config) ~= "string" and config.type == AccessoryType.Avatar
			then props.variantProps.accessory.avatarWidth
			else props.variantProps.accessory.width
		return width + props.variantProps.item.gap
	end, { props.variantProps.accessory, props.variantProps.item.gap } :: { unknown })

	local itemMinWidth = if props.minTextWidth
		then props.minTextWidth + getAccessoryWidth(props.leading) + getAccessoryWidth(props.trailing)
		else nil

	return React.createElement(View, {
		tag = props.variantProps.item.tag,
		flexItem = if props.shrinkRatio
			then { FlexMode = Enum.UIFlexMode.Custom, ShrinkRatio = props.shrinkRatio, GrowRatio = 0 }
			else nil,
		sizeConstraint = if itemMinWidth then { MinSize = Vector2.new(itemMinWidth, 0) } else nil,
		LayoutOrder = props.LayoutOrder,
		testId = `{props.testId}--item-{props.index}`,
	}, {
		Leading = if props.leading
			then React.createElement(MetadataAccessoryElement, {
				config = props.leading,
				variant = props.variantProps.accessory,
				LayoutOrder = 1,
				testId = `{props.testId}--item-{props.index}--leading`,
			})
			else nil,
		Text = React.createElement(Text, {
			Text = props.text,
			OpenTypeFeatures = props.variantProps.text.openTypeFeatures,
			tag = if props.isWrapped
				then props.variantProps.wrappedText.tag
				elseif props.shrinkRatio then props.variantProps.truncatedText.tag
				else props.variantProps.text.tag,
			sizeConstraint = if props.isWrapped then { MaxSize = Vector2.new(math.huge, props.textHeight) } else nil,
			onAbsoluteSizeChanged = props.onTextSizeChanged,
			LayoutOrder = 3,
			testId = `{props.testId}--text-{props.index}`,
		}),
		Trailing = if props.trailing
			then React.createElement(MetadataAccessoryElement, {
				config = props.trailing,
				variant = props.variantProps.accessory,
				LayoutOrder = 4,
				testId = `{props.testId}--trailing`,
			})
			else nil,
	})
end

return React.memo(MetadataItem)
