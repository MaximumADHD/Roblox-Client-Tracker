local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local AvatarIcon = require(Foundation.Components.AvatarIcon)
local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local Skeleton = require(Foundation.Components.Skeleton)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local getMultiLineTextHeight = require(Foundation.Utility.getMultiLineTextHeight)
local useTextSize = require(Foundation.Utility.useTextSize)
local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type IconAccessoryConfig = Types.IconAccessoryConfig
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
	-- 1-based list item that truncates when the parent is too narrow. Defaults to the last item; clamped to the list length.
	truncateIndex: number?,
	-- Lines a single item can wrap to before truncating. Defaults to 1; lists always stay on one line.
	maxLines: number?,
	-- Shows a skeleton sized to `text` in place of the items; the first item's `leading` and `trailing` still render. Defaults to false.
	isLoading: boolean?,
	-- Separates list items with `·`; when false, items are spaced apart instead. Defaults to true.
	hasSeparator: boolean?,
} & Types.CommonProps

local SEPARATOR = "·"
local TEXT_TAG = "auto-xy text-body-medium content-default"
local TRUNCATED_TEXT_TAG = "shrink auto-xy text-body-medium text-truncate-split content-default"
local WRAPPED_TEXT_TAG =
	"shrink auto-xy text-body-medium text-wrap text-truncate-split text-align-x-left text-align-y-top content-default"

local ITEM_TAG = "row align-y-center gap-xsmall auto-xy"
local TRUNCATED_ITEM_TAG = "row align-y-center shrink gap-xsmall auto-xy"

local defaultProps = {
	maxLines = 1,
	isLoading = false,
	hasSeparator = true,
	testId = "--foundation-metadata",
}

type MetadataAccessoryProps = {
	config: string | MetadataAccessory,
	LayoutOrder: number,
	testId: string,
}

local function MetadataAccessoryElement(props: MetadataAccessoryProps): React.ReactNode
	local tokens = useTokens()
	local config: MetadataAccessory = if type(props.config) == "string"
		then { iconName = props.config } :: MetadataAccessory
		else props.config :: MetadataAccessory

	if config.type == AccessoryType.Avatar then
		return React.createElement(View, {
			tag = "auto-xy padding-right-xxsmall",
			LayoutOrder = props.LayoutOrder,
		}, {
			Avatar = React.createElement(AvatarIcon, {
				userId = (config :: AvatarAccessoryConfig).userId,
				size = AvatarIconSize.Small,
				testId = props.testId,
			}),
		})
	end

	local iconConfig = config :: IconAccessoryConfig
	return React.createElement(Icon, {
		name = iconConfig.iconName,
		variant = iconConfig.iconVariant,
		size = IconSize.Small,
		style = tokens.Color.Content.Default,
		LayoutOrder = props.LayoutOrder,
		testId = props.testId,
	})
end

local function Metadata(metadataProps: MetadataProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(metadataProps, defaultProps)
	local tokens = useTokens()
	local textSizeOffset = useTextSizeOffset()
	local isSingleItem = type(props.text) == "string" or (props.text :: MetadataItemConfig).text ~= nil
	local entries: { MetadataItem } = if isSingleItem
		then { props.text :: MetadataItem }
		else props.text :: { MetadataItem }
	local items: { MetadataItemConfig } = {}
	for _, entry in entries do
		table.insert(items, if type(entry) == "string" then { text = entry } else entry :: MetadataItemConfig)
	end
	local itemCount = #items
	local truncateIndex = math.clamp(props.truncateIndex or itemCount, 1, math.max(itemCount, 1))
	local maxLines = if isSingleItem then math.max(props.maxLines, 1) else 1
	local textHeight = getMultiLineTextHeight(
		tokens.Typography.BodyMedium.FontSize + textSizeOffset,
		maxLines,
		tokens.Typography.BodyMedium.LineHeight
	)
	local skeletonText: string? = nil
	if props.isLoading then
		local itemTexts = {}
		for _, item in items do
			table.insert(itemTexts, item.text)
		end
		skeletonText = table.concat(itemTexts, ` {SEPARATOR} `)
	end
	local skeletonTextSize = useTextSize(if skeletonText ~= "" then skeletonText else nil, tokens.Typography.BodyMedium)
	local skeletonWidth = if skeletonTextSize and skeletonTextSize.X > 0
		then math.ceil(skeletonTextSize.X)
		else tokens.Size.Size_2000

	local children: { [string]: React.ReactNode } = {}

	if props.isLoading then
		local firstLeading = if items[1] then items[1].leading else nil
		children.Leading = if firstLeading
			then React.createElement(MetadataAccessoryElement, {
				config = firstLeading,
				LayoutOrder = 1,
				testId = `{props.testId}--item-1--leading`,
			})
			else nil
		children.Skeleton = React.createElement(View, {
			tag = "shrink auto-xy clip",
			LayoutOrder = 2,
		}, {
			Skeleton = React.createElement(Skeleton, {
				Size = UDim2.fromOffset(skeletonWidth, textHeight),
				testId = `{props.testId}--skeleton`,
			}),
		})
		children.Trailing = if props.trailing
			then React.createElement(MetadataAccessoryElement, {
				config = props.trailing,
				LayoutOrder = 3,
				testId = `{props.testId}--trailing`,
			})
			else nil
	else
		for index, item in items do
			if index > 1 and props.hasSeparator then
				children[`Separator{index - 1}`] = React.createElement(Text, {
					Text = SEPARATOR,
					tag = TEXT_TAG,
					LayoutOrder = index * 2 - 1,
					testId = `{props.testId}--separator-{index - 1}`,
				})
			end

			local leading = if item.leading
				then React.createElement(MetadataAccessoryElement, {
					config = item.leading,
					LayoutOrder = 1,
					testId = `{props.testId}--item-{index}--leading`,
				})
				else nil
			local trailing = if index == itemCount and props.trailing
				then React.createElement(MetadataAccessoryElement, {
					config = props.trailing,
					LayoutOrder = 4,
					testId = `{props.testId}--trailing`,
				})
				else nil

			children[`Item{index}`] = React.createElement(View, {
				tag = if index == truncateIndex then TRUNCATED_ITEM_TAG else ITEM_TAG,
				LayoutOrder = index * 2,
				testId = `{props.testId}--item-{index}`,
			}, {
				Leading = leading,
				Text = React.createElement(Text, {
					Text = item.text,
					tag = if maxLines > 1
						then WRAPPED_TEXT_TAG
						elseif index == truncateIndex then TRUNCATED_TEXT_TAG
						else TEXT_TAG,
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
			tag = if props.hasSeparator or props.isLoading
				then "row align-y-center gap-xsmall auto-xy"
				else "row align-y-center gap-small auto-xy",
			ref = ref,
		}),
		children
	)
end

return React.memo(React.forwardRef(Metadata))
