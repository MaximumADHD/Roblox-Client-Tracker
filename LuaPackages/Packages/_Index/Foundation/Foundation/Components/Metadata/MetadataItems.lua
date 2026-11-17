local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local MetadataSize = require(Foundation.Enums.MetadataSize)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)

local MetadataItem = require(script.Parent.MetadataItem)
local useMetadataVariants = require(script.Parent.useMetadataVariants)
local useTruncationFallback = require(script.Parent.useTruncationFallback)
type MetadataVariantProps = useMetadataVariants.MetadataVariantProps

type IconAccessoryConfig = Types.IconAccessoryConfig
type MetadataSize = MetadataSize.MetadataSize

local SEPARATOR = "·"

type MetadataItemsProps = {
	items: { { text: string, leading: (string | IconAccessoryConfig | Types.AvatarAccessoryConfig)? } },
	trailing: (string | IconAccessoryConfig)?,
	truncateIndex: number,
	maxLines: number,
	textHeight: number,
	hasSeparator: boolean,
	size: MetadataSize,
	variantProps: MetadataVariantProps,
	testId: string,
}

local function MetadataItems(props: MetadataItemsProps): React.ReactNode
	local itemCount = #props.items
	local priorities = React.useMemo(function(): { number }
		local result = { [props.truncateIndex] = 0 }
		local nextPriority = 1
		for index = 1, itemCount do
			if index ~= props.truncateIndex then
				result[index] = nextPriority
				nextPriority += 1
			end
		end
		return result
	end, { itemCount, props.truncateIndex })
	local textSizeOffset = useTextSizeOffset()
	local truncationKey = React.useMemo(
		function(): string
			local parts = {}
			for _, item in props.items do
				local leading = item.leading
				local leadingKind = if leading == nil
					then ""
					elseif type(leading) == "string" then "icon"
					else leading.type
				table.insert(parts, `{leadingKind}:{item.text}`)
			end
			return table.concat({
				tostring(props.truncateIndex),
				props.size,
				tostring(props.hasSeparator),
				tostring(props.trailing ~= nil),
				tostring(textSizeOffset),
				table.concat(parts, "\0"),
			}, "|")
		end,
		{ props.items, props.truncateIndex, props.size, props.hasSeparator, props.trailing, textSizeOffset } :: { unknown }
	)
	local fallback = useTruncationFallback(truncationKey, itemCount, props.variantProps.text.fontStyle)
	local sizeChangedCallbacks = React.useMemo(function(): { [number]: (instance: GuiObject) -> () }
		local callbacks = {}
		for priority = 0, itemCount - 1 do
			callbacks[priority] = function(instance: GuiObject)
				fallback.onSizeChanged(priority, instance :: TextLabel)
			end
		end
		return callbacks
	end, { itemCount, fallback.onSizeChanged } :: { unknown })
	local children: { [string]: React.ReactNode } = {}

	for index, item in props.items do
		local priority = priorities[index]
		local shrinkRatio = fallback.getShrinkRatio(priority)
		if index > 1 and props.hasSeparator then
			children[`Separator{index - 1}`] = React.createElement(Text, {
				Text = SEPARATOR,
				tag = props.variantProps.text.tag,
				LayoutOrder = index * 2 - 1,
				testId = `{props.testId}--separator-{index - 1}`,
			})
		end

		local isTruncatingListItem = itemCount > 1 and shrinkRatio ~= nil
		children[`Item{index}`] = React.createElement(MetadataItem, {
			index = index,
			text = item.text,
			leading = item.leading,
			trailing = if index == itemCount then props.trailing else nil,
			variantProps = props.variantProps,
			isWrapped = props.maxLines > 1,
			textHeight = props.textHeight,
			shrinkRatio = shrinkRatio,
			minTextWidth = if isTruncatingListItem and fallback.isPinned(priority) then fallback.minWidth else nil,
			onTextSizeChanged = if isTruncatingListItem and fallback.isDeciding(priority)
				then sizeChangedCallbacks[priority]
				else nil,
			LayoutOrder = index * 2,
			testId = props.testId,
		})
	end

	return React.createElement(React.Fragment, nil, children)
end

return MetadataItems
