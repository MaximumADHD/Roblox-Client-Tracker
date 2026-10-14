local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local InputSize = require(Foundation.Enums.InputSize)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local getSharedVariants = require(Foundation.Components.Button.getSharedVariants)
local useCardVariants = require(script.Parent.Parent.useCardVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

type CardVariantProps = useCardVariants.CardVariantProps

type CardHeaderProps = {
	testId: string,
	variantProps: CardVariantProps,
	eyebrow: string?,
	icon: Types.IconConfig?,
	title: string?,
	description: string?,
	actions: React.ReactElement?,
	descriptionLineClamp: number?,
}

local function CardHeader(props: CardHeaderProps)
	local tokens = useTokens()
	local variantProps = props.variantProps
	local titleGap = variantProps.titleRow.gap
	local iconName = if typeof(props.icon) == "table" then props.icon.name else props.icon
	local iconVariant: BuilderIcons.IconVariant? = if typeof(props.icon) == "table" then props.icon.variant else nil

	local descriptionMaxHeight = if props.descriptionLineClamp ~= nil
		then variantProps.description.lineHeight * props.descriptionLineClamp
		else nil

	local text = React.createElement(View, {
		tag = variantProps.headerText.tag,
		LayoutOrder = 1,
		testId = `{props.testId}--header-content`,
	}, {
		Eyebrow = if props.eyebrow and props.title ~= nil
			then React.createElement(Text, {
				Text = props.eyebrow,
				tag = variantProps.eyebrow.tag,
				LayoutOrder = 1,
				testId = `{props.testId}--eyebrow`,
			})
			else nil,
		TitleRow = if props.title ~= nil
			then React.createElement(View, {
				tag = variantProps.titleRow.tag,
				layout = if titleGap
					then {
						FillDirection = Enum.FillDirection.Horizontal,
						Padding = UDim.new(0, titleGap),
					}
					else nil,
				LayoutOrder = 2,
				testId = `{props.testId}--title-row`,
			}, {
				Icon = if iconName
					then React.createElement(Icon, {
						name = iconName,
						variant = iconVariant,
						size = variantProps.icon.size,
						LayoutOrder = 1,
						testId = `{props.testId}--icon`,
					})
					else nil,
				-- The title hugs its text and shrinks, so a long title wraps beside the icon
				-- rather than pushing it out of the row.
				Title = if props.title
					then React.createElement(Text, {
						Text = props.title,
						tag = variantProps.title.tag,
						LayoutOrder = 2,
						testId = `{props.testId}--title`,
					})
					else nil,
			})
			else nil,
		Description = if props.description
			then React.createElement(Text, {
				Text = props.description,
				TextTruncate = if descriptionMaxHeight then Enum.TextTruncate.AtEnd else nil,
				sizeConstraint = if descriptionMaxHeight
					then {
						MaxSize = Vector2.new(math.huge, descriptionMaxHeight),
					}
					else nil,
				tag = variantProps.description.tag,
				LayoutOrder = 3,
				testId = `{props.testId}--description`,
			})
			else nil,
	})

	-- The minimum height belongs to the row so the text hugs its own content: a text column
	-- padded out to the minimum would top-align its title while the row centers the actions.
	-- The height is the Small IconButton used by the overflow and close buttons, so a header
	-- without those buttons stays the same height in a group.
	local sharedVariants = getSharedVariants(tokens)
	local minHeight = sharedVariants.sizes[InputSize.Small].container.height

	return React.createElement(View, {
		tag = variantProps.header.tag,
		sizeConstraint = {
			MinSize = Vector2.new(0, minHeight),
		},
		LayoutOrder = 1,
		testId = `{props.testId}--header`,
	}, {
		Text = text,
		Actions = props.actions,
	})
end

return CardHeader
