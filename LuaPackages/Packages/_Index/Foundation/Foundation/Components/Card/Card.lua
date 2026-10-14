local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CardDensity = require(Foundation.Enums.CardDensity)
local CardHeaderSize = require(Foundation.Enums.CardHeaderSize)
local CardHeight = require(Foundation.Enums.CardHeight)
local CardMediaAspectRatio = require(Foundation.Enums.CardMediaAspectRatio)
local CardMediaPlacement = require(Foundation.Enums.CardMediaPlacement)
local CardVariant = require(Foundation.Enums.CardVariant)

local CardActions = require(script.Parent.Subcomponents.CardActions)
local CardHeader = require(script.Parent.Subcomponents.CardHeader)
local CardMedia = require(script.Parent.Subcomponents.CardMedia)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local useCardVariants = require(script.Parent.useCardVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type CardDensity = CardDensity.CardDensity
type CardHeaderSize = CardHeaderSize.CardHeaderSize
type CardHeight = CardHeight.CardHeight
type CardMediaAspectRatio = CardMediaAspectRatio.CardMediaAspectRatio
type CardMediaPlacement = CardMediaPlacement.CardMediaPlacement
type CardVariant = CardVariant.CardVariant

-- A string is an end image at the default width.
export type CardMedia = string | {
	image: string,
	placement: CardMediaPlacement?,
	-- End only. Defaults to 136.
	width: number?,
	-- Bottom only. Defaults to 2:1.
	aspectRatio: CardMediaAspectRatio?,
}

type CardLineClamp = {
	description: number,
}

export type CardProps = {
	-- Standard is bordered; Emphasis is filled. Defaults to Standard.
	variant: CardVariant?,
	-- Padding and corner radius: Compact, Default, or Comfortable. Defaults to Default.
	density: CardDensity?,
	-- Fit hugs content. Fill uses the height the parent layout assigns: leftover height in a column, or the row height in a row.
	height: CardHeight?,
	-- Header typography. Omit to inherit from density.
	headerSize: CardHeaderSize?,
	-- Renders above the title, and only when title is set.
	eyebrow: string?,
	-- Icon beside the title. Renders only when title is set.
	icon: Types.IconConfig?,
	title: string?,
	description: string?,
	-- Caps description wrapping, for example `{ description = 2 }`. Omit for no limit.
	lineClamp: CardLineClamp?,
	-- Shorthand image, or `{ image, placement?, width?, aspectRatio? }`. A string is an end image.
	media: CardMedia?,
	-- Activates the whole card.
	onActivated: (() -> ())?,
	-- Shows the overflow button. Does not activate the card.
	onOverflow: (() -> ())?,
	-- Shows the close button. Does not activate the card.
	onClose: (() -> ())?,
	-- Reference to the overflow button, for anchoring a menu to it
	overflowRef: React.Ref<GuiObject>?,
	-- Slot below the header.
	children: React.ReactNode?,
} & Types.CommonProps

type ResolvedMedia = {
	src: string,
	placement: CardMediaPlacement,
	width: number,
	-- Width / height used to size bottom media.
	aspectRatio: number,
}

local DEFAULT_END_MEDIA_WIDTH = 136
local DEFAULT_ASPECT_RATIO: CardMediaAspectRatio = CardMediaAspectRatio.Ratio2x1

local ASPECT_RATIO_VALUE: { [CardMediaAspectRatio]: number } = {
	[CardMediaAspectRatio.Ratio1x1] = 1,
	[CardMediaAspectRatio.Ratio5x4] = 5 / 4,
	[CardMediaAspectRatio.Ratio4x3] = 4 / 3,
	[CardMediaAspectRatio.Ratio3x2] = 3 / 2,
	[CardMediaAspectRatio.Ratio16x9] = 16 / 9,
	[CardMediaAspectRatio.Ratio2x1] = 2,
}

local defaultProps = {
	variant = CardVariant.Standard :: CardVariant,
	density = CardDensity.Default :: CardDensity,
	height = CardHeight.Fit :: CardHeight,
	testId = "--foundation-card",
}

local defaultHeaderSizes: { [CardDensity]: CardHeaderSize } = {
	[CardDensity.Compact] = CardHeaderSize.Small,
	[CardDensity.Default] = CardHeaderSize.Medium,
	[CardDensity.Comfortable] = CardHeaderSize.Large,
}

local function resolveMedia(media: CardMedia?): ResolvedMedia?
	if typeof(media) == "string" then
		return {
			src = media,
			placement = CardMediaPlacement.End,
			width = DEFAULT_END_MEDIA_WIDTH,
			aspectRatio = ASPECT_RATIO_VALUE[DEFAULT_ASPECT_RATIO],
		}
	end

	if typeof(media) ~= "table" then
		return nil
	end

	local placement: CardMediaPlacement = media.placement or CardMediaPlacement.End
	local width = if placement == CardMediaPlacement.End and media.width ~= nil
		then media.width
		else DEFAULT_END_MEDIA_WIDTH
	local aspectRatio: CardMediaAspectRatio = if placement == CardMediaPlacement.Bottom
			and media.aspectRatio ~= nil
		then media.aspectRatio
		else DEFAULT_ASPECT_RATIO

	return {
		src = media.image,
		placement = placement,
		width = width,
		aspectRatio = ASPECT_RATIO_VALUE[aspectRatio],
	}
end

local function getBottomMediaHeight(media: ResolvedMedia?, bodyWidth: number): number
	if media == nil or media.placement ~= CardMediaPlacement.Bottom then
		return 0
	end

	return math.round(bodyWidth / media.aspectRatio)
end

local function Card(cardProps: CardProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(cardProps, defaultProps)
	local tokens = useTokens()
	local headerSize: CardHeaderSize = props.headerSize or defaultHeaderSizes[props.density]

	local hasHeader = props.title ~= nil or props.description ~= nil
	local resolvedMedia = resolveMedia(props.media)
	local hasEndMedia = resolvedMedia ~= nil and resolvedMedia.placement == CardMediaPlacement.End
	local hasActions = props.onOverflow ~= nil or props.onClose ~= nil
	local actionsAreInline = hasHeader and not hasEndMedia
	local isFillHeight = props.height == CardHeight.Fill
	local isSingleLine = (props.eyebrow == nil or props.title == nil) and props.description == nil

	local variantProps = useCardVariants(
		tokens,
		props.variant,
		props.density,
		headerSize,
		props.height,
		hasEndMedia,
		isSingleLine,
		actionsAreInline
	)
	local bodyWidth, setBodyWidth = React.useState(0)
	local contentHeight, setContentHeight = React.useState(0)

	local onBodyAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		local width = rbx.AbsoluteSize.X
		setBodyWidth(function(previous)
			return if previous == width then previous else width
		end)
	end, {})

	local onContentAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setContentHeight(rbx.AbsoluteSize.Y)
	end, {})

	local actions: React.ReactElement? = if hasActions
		then React.createElement(CardActions, {
			testId = props.testId,
			variantProps = variantProps,
			onOverflow = props.onOverflow,
			onClose = props.onClose,
			overflowRef = props.overflowRef,
			isOverMedia = hasEndMedia,
			isInline = actionsAreInline,
		})
		else nil

	local bottomMediaHeight = getBottomMediaHeight(resolvedMedia, bodyWidth)
	local fillMinHeight = contentHeight + bottomMediaHeight

	return React.createElement(
		View,
		withCommonProps(props, {
			-- Fill uses a measured min height so the body can size-full while stretching with siblings.
			tag = variantProps.container.tag,
			sizeConstraint = if isFillHeight then { MinSize = Vector2.new(0, fillMinHeight) } else nil,
			onActivated = props.onActivated,
			ref = ref,
		}),
		{
			Body = React.createElement(View, {
				tag = variantProps.body.tag,
				-- Bottom media needs a pixel height; AbsoluteSize only reports changes, so width is
				-- tracked even before media exists.
				onAbsoluteSizeChanged = onBodyAbsoluteSizeChanged,
			}, {
				Content = React.createElement(View, {
					tag = variantProps.content.tag,
					onAbsoluteSizeChanged = onContentAbsoluteSizeChanged,
					LayoutOrder = 1,
				}, {
					Header = if hasHeader
						then React.createElement(CardHeader, {
							testId = props.testId,
							variantProps = variantProps,
							eyebrow = props.eyebrow,
							icon = props.icon,
							title = props.title,
							description = props.description,
							descriptionLineClamp = if props.lineClamp then props.lineClamp.description else nil,
							actions = if actionsAreInline then actions else nil,
						})
						else nil,
					Children = if props.children
						then React.createElement(View, {
							tag = variantProps.children.tag,
							LayoutOrder = 2,
							testId = `{props.testId}--content`,
						}, props.children)
						else nil,
				}),
				Media = if resolvedMedia
					then React.createElement(CardMedia, {
						image = resolvedMedia.src,
						width = resolvedMedia.width,
						isEnd = hasEndMedia,
						isFillHeight = isFillHeight,
						bottomHeight = bottomMediaHeight,
						tag = variantProps.media.tag,
						testId = props.testId,
					})
					else nil,
			}),
			Actions = if actionsAreInline then nil else actions,
		}
	)
end

return React.memo(React.forwardRef(Card))
