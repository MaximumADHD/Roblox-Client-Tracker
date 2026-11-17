local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local MetadataSize = require(Foundation.Enums.MetadataSize)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local getMultiLineTextHeight = require(Foundation.Utility.getMultiLineTextHeight)
local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local MetadataAccessoryElement = require(script.Parent.MetadataAccessory)
local MetadataItems = require(script.Parent.MetadataItems)
local useMetadataVariants = require(script.Parent.useMetadataVariants)

type IconAccessoryConfig = Types.IconAccessoryConfig
type MetadataSize = MetadataSize.MetadataSize
type AvatarAccessoryConfig = Types.AvatarAccessoryConfig

export type MetadataAccessory = IconAccessoryConfig | AvatarAccessoryConfig

type MetadataItemConfig = {
	-- Label for this item; it truncates when it is the list's `truncateIndex` item.
	text: string,
	-- Icon name, icon config, or avatar rendered before this item's text.
	leading: (string | MetadataAccessory)?,
}

export type MetadataItem = string | MetadataItemConfig

export type MetadataProps = {
	-- A single item, or a list of items joined by `·` (or spaced apart when `hasSeparator` is false).
	text: MetadataItem | { MetadataItem },
	-- Icon rendered after the last item.
	trailing: (string | IconAccessoryConfig)?,
	-- 1-based list item that truncates first when the parent is too narrow; once it is down to `…`, the others truncate in reading order. Defaults to the last item; clamped to the list length.
	truncateIndex: number?,
	-- Lines a single item can wrap to before truncating. Defaults to 1; lists always stay on one line.
	maxLines: number?,
	-- **DEPRECATED**: Loading belongs on the containing tile or card. Still accepted but ignored.
	isLoading: boolean?,
	-- Separates list items with `·`; when false, items are spaced apart instead. Defaults to true.
	hasSeparator: boolean?,
	-- Text style: `Medium` (body medium) or `Small` (body small, for use next to smaller headings). Icons, avatars, and spacing stay the same. Defaults to `Medium`.
	size: MetadataSize?,
} & Types.CommonProps

local SEPARATOR = "·"

local defaultProps = {
	size = MetadataSize.Medium,
	maxLines = 1,
	hasSeparator = true,
	testId = "--foundation-metadata",
}

local function Metadata(metadataProps: MetadataProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(metadataProps, defaultProps)
	local tokens = useTokens()
	local textSizeOffset = useTextSizeOffset()
	local variantProps = useMetadataVariants(tokens, props.size, not props.hasSeparator)
	local typography = variantProps.text.fontStyle
	local isSingleItem = type(props.text) == "string" or (props.text :: MetadataItemConfig).text ~= nil
	local entries: { MetadataItem } = if isSingleItem
		then { props.text :: MetadataItem }
		else props.text :: { MetadataItem }
	local items: { MetadataItemConfig } = {}
	for _, entry in entries do
		table.insert(items, if type(entry) == "string" then { text = entry } else entry)
	end
	local itemCount = #items
	local truncateIndex = math.clamp(props.truncateIndex or itemCount, 1, math.max(itemCount, 1))
	local maxLines = if isSingleItem then math.max(props.maxLines, 1) else 1
	local textHeight =
		getMultiLineTextHeight((typography.FontSize or 0) + textSizeOffset, maxLines, typography.LineHeight or 1)
	local children: { [string]: React.ReactNode } = {}

	if Flags.FoundationMetadataTruncateFallback then
		children.Items = React.createElement(MetadataItems, {
			items = items,
			trailing = props.trailing,
			truncateIndex = truncateIndex,
			maxLines = maxLines,
			textHeight = textHeight,
			hasSeparator = props.hasSeparator,
			size = props.size,
			variantProps = variantProps,
			testId = props.testId,
		})
	else
		for index, item in items do
			if index > 1 and props.hasSeparator then
				children[`Separator{index - 1}`] = React.createElement(Text, {
					Text = SEPARATOR,
					tag = variantProps.text.tag,
					LayoutOrder = index * 2 - 1,
					testId = `{props.testId}--separator-{index - 1}`,
				})
			end

			local leading = if item.leading
				then React.createElement(MetadataAccessoryElement, {
					config = item.leading,
					variant = variantProps.accessory,
					LayoutOrder = 1,
					testId = `{props.testId}--item-{index}--leading`,
				})
				else nil
			local trailing = if index == itemCount and props.trailing
				then React.createElement(MetadataAccessoryElement, {
					config = props.trailing,
					variant = variantProps.accessory,
					LayoutOrder = 4,
					testId = `{props.testId}--trailing`,
				})
				else nil

			children[`Item{index}`] = React.createElement(View, {
				tag = if index == truncateIndex then variantProps.truncatedItem.tag else variantProps.item.tag,
				LayoutOrder = index * 2,
				testId = `{props.testId}--item-{index}`,
			}, {
				Leading = leading,
				Text = React.createElement(Text, {
					Text = item.text,
					OpenTypeFeatures = variantProps.text.openTypeFeatures,
					tag = if maxLines > 1
						then variantProps.wrappedText.tag
						elseif index == truncateIndex then variantProps.truncatedText.tag
						else variantProps.text.tag,
					sizeConstraint = if maxLines > 1 then { MaxSize = Vector2.new(math.huge, textHeight) } else nil,
					LayoutOrder = 3,
					testId = `{props.testId}--text-{index}`,
				}),
				Trailing = trailing,
			})
		end
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
		}),
		children
	)
end

return React.memo(React.forwardRef(Metadata))
