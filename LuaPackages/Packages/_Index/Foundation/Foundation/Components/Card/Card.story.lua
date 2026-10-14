local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Card = require(Foundation.Components.Card)
local CardDensity = require(Foundation.Enums.CardDensity)
local CardHeaderSize = require(Foundation.Enums.CardHeaderSize)
local CardHeight = require(Foundation.Enums.CardHeight)
local CardMediaAspectRatio = require(Foundation.Enums.CardMediaAspectRatio)
local CardMediaPlacement = require(Foundation.Enums.CardMediaPlacement)
local CardModule = require(script.Parent.Card)
local CardVariant = require(Foundation.Enums.CardVariant)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Menu = require(Foundation.Components.Menu)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
local IconName = BuilderIcons.Icon
type CardDensity = CardDensity.CardDensity
type CardHeaderSize = CardHeaderSize.CardHeaderSize
type CardHeight = CardHeight.CardHeight
type CardMediaAspectRatio = CardMediaAspectRatio.CardMediaAspectRatio
type CardMediaPlacement = CardMediaPlacement.CardMediaPlacement
type CardMedia = CardModule.CardMedia
type CardVariant = CardVariant.CardVariant

local VARIANT_ORDER: { CardVariant } = {
	CardVariant.Standard,
	CardVariant.Emphasis,
}

local DENSITY_ORDER: { CardDensity } = {
	CardDensity.Compact,
	CardDensity.Default,
	CardDensity.Comfortable,
}

local HEADER_SIZE_ORDER: { CardHeaderSize } = {
	CardHeaderSize.XXSmall,
	CardHeaderSize.XSmall,
	CardHeaderSize.Small,
	CardHeaderSize.Medium,
	CardHeaderSize.Large,
}

local HEIGHT_ORDER: { CardHeight } = {
	CardHeight.Fit,
	CardHeight.Fill,
}

local PLACEMENT_ORDER: { CardMediaPlacement } = {
	CardMediaPlacement.End,
	CardMediaPlacement.Bottom,
}

local DEFAULT_MEDIA_WIDTH = 136

local MENU_ITEMS: { Menu.MenuItem } = {
	{ id = "action-1", text = "Action 1" },
	{ id = "action-2", text = "Action 2" },
}

local MEDIA_IMAGE = "rbxassetid://103403748802347"

local function cardMedia(src: string, placement: CardMediaPlacement, width: number?): CardMedia
	return {
		image = src,
		placement = placement,
		width = width,
	}
end

type ImageMediaConfig = {
	placement: CardMediaPlacement?,
	width: number?,
	aspectRatio: CardMediaAspectRatio?,
}

local function imageMedia(config: ImageMediaConfig): CardMedia
	return {
		image = MEDIA_IMAGE,
		placement = config.placement,
		width = config.width,
		aspectRatio = config.aspectRatio,
	}
end

local NONE = "None"
local CARD_WIDTH = 320
local SUBPART_CARD_WIDTH = 280
local SUBPART_LABEL_WIDTH = 200
local ACTION_CARD_WIDTH = 240
local IMAGE_CARD_WIDTH = 320
local OVERFLOW_CARD_WIDTH = 560
local FULL_COMPOSITION_FRAME_WIDTH = 880
local HEIGHT_FRAME_WIDTH = 340
local HEIGHT_FRAME_HEIGHT = 220
local LONG_EYEBROW =
	"An eyebrow that runs long enough to spill past the actions and onto a second line of its own before the title starts"
local LONG_TITLE = "A title long enough that it runs out of room beside the actions"
local LONG_DESCRIPTION =
	"A description that keeps going well past the first line so the wrap point sits inside the card rather than at its edge."
local EXTRA_LONG_DESCRIPTION =
	"A description long enough to run several lines past its neighbour, so the card beside it has a visibly taller height to grow into rather than a difference a reviewer has to squint at. It carries on to a third and fourth line to make the gap unmistakable."

local function noop() end

-- Fixed-width frame so cards that otherwise fill their parent stay comparable side by side.
local function CardFrame(props: {
	width: number?,
	height: number?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = if props.height then "col size-full-0" else "col size-full-0 auto-y",
		Size = UDim2.fromOffset(props.width or CARD_WIDTH, props.height or 0),
	}, props.children)
end

local function CardCell(props: {
	LayoutOrder: number,
	label: string,
	width: number?,
	height: number?,
	children: React.ReactNode,
})
	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Card = React.createElement(CardFrame, {
			width = props.width,
			height = props.height,
		}, props.children),
	})
end

-- Painted parent taller than the card it holds, so the frame edge shows the space Fit
-- leaves behind and Fill takes.
local function TallParentFrame(props: {
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-large padding-medium radius-medium bg-surface-100",
		Size = UDim2.fromOffset(HEIGHT_FRAME_WIDTH, HEIGHT_FRAME_HEIGHT),
	}, props.children)
end

-- Painted parent that hugs its tallest card rather than setting a height of its own.
local function HuggingParentFrame(props: {
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "row flex-x-fill align-y-top gap-large size-full-0 auto-y padding-medium radius-medium bg-surface-100",
		Size = UDim2.fromOffset(HEIGHT_FRAME_WIDTH, 0),
	}, props.children)
end

local function HeightCard(props: {
	height: CardHeight,
})
	return React.createElement(TallParentFrame, {}, {
		Card = React.createElement(Card, {
			height = props.height,
			title = "Title",
			description = "Description",
			LayoutOrder = 1,
		}),
	})
end

local HEIGHT_GROUP: { { title: string, description: string } } = {
	{ title = "Tall card", description = LONG_DESCRIPTION },
	{ title = "Short card", description = "One line of description." },
}

local function HeightGroup(props: {
	height: CardHeight,
})
	return React.createElement(
		HuggingParentFrame,
		{},
		Dash.map(HEIGHT_GROUP, function(card, index)
			return React.createElement(Card, {
				height = props.height,
				title = card.title,
				description = card.description,
				LayoutOrder = index,
			})
		end)
	)
end

local function buildHeightRows()
	return Dash.map(HEIGHT_ORDER, function(height)
		return {
			label = matrixLabel(height),
			cells = {
				React.createElement(HeightCard, { height = height }),
				React.createElement(HeightGroup, { height = height }),
			},
		}
	end)
end

-- Filled placeholder standing in for arbitrary content-slot children.
local function SlotPlaceholder(props: {
	LayoutOrder: number?,
}?)
	return React.createElement(View, {
		tag = "col align-x-center align-y-center size-full-0 radius-medium bg-shift-200",
		Size = UDim2.new(1, 0, 0, 64),
		LayoutOrder = if props then props.LayoutOrder else nil,
	}, {
		Label = React.createElement(Text, {
			Text = "Content slot",
			tag = "auto-xy text-caption-small content-muted",
		}),
	})
end

local function FullCompositionCard(props: {
	LayoutOrder: number,
	description: string,
})
	return React.createElement(Card, {
		variant = CardVariant.Emphasis,
		height = CardHeight.Fill,
		eyebrow = "Eyebrow",
		title = "Title",
		description = props.description,
		media = cardMedia(MEDIA_IMAGE, CardMediaPlacement.End),
		onOverflow = noop,
		onClose = noop,
		LayoutOrder = props.LayoutOrder,
	}, {
		Slot = React.createElement(SlotPlaceholder),
	})
end

type SubpartRow = {
	label: string,
	eyebrow: string?,
	title: string?,
	description: string?,
}

local SUBPART_ROWS: { SubpartRow } = {
	{ label = "Title only", title = "Title" },
	{ label = "Description only", description = "Description" },
	{ label = "+ eyebrow", eyebrow = "Eyebrow", title = "Title" },
	{ label = "+ description", title = "Title", description = "Description" },
	{
		label = "+ eyebrow + description",
		eyebrow = "Eyebrow",
		title = "Title",
		description = "Description",
	},
}

local function SubpartCard(props: {
	row: SubpartRow,
	hasSlot: boolean,
})
	return React.createElement(CardFrame, { width = SUBPART_CARD_WIDTH }, {
		Card = React.createElement(
			Card,
			{
				density = CardDensity.Compact,
				eyebrow = props.row.eyebrow,
				title = props.row.title,
				description = props.row.description,
			},
			if props.hasSlot
				then {
					Slot = React.createElement(SlotPlaceholder, {
						LayoutOrder = 1,
					}),
				}
				else nil
		),
	})
end

local function ImageCard(props: {
	placement: CardMediaPlacement,
	hasHeader: boolean?,
	hasContent: boolean?,
})
	return React.createElement(CardFrame, { width = IMAGE_CARD_WIDTH }, {
		Card = React.createElement(
			Card,
			{
				media = cardMedia(MEDIA_IMAGE, props.placement),
				title = if props.hasHeader then "Title" else nil,
				description = if props.hasHeader then "Description" else nil,
			},
			if props.hasContent
				then {
					Slot = React.createElement(SlotPlaceholder, {
						LayoutOrder = 1,
					}),
				}
				else nil
		),
	})
end

local function ActionPresenceCard(props: {
	hasDescription: boolean?,
	hasOverflow: boolean?,
	hasClose: boolean?,
})
	return React.createElement(CardFrame, { width = ACTION_CARD_WIDTH }, {
		Card = React.createElement(Card, {
			title = "Title",
			description = if props.hasDescription then "Description" else nil,
			onOverflow = if props.hasOverflow then noop else nil,
			onClose = if props.hasClose then noop else nil,
		}),
	})
end

local function buildActionPresenceRows()
	return Dash.map({ false, true }, function(hasDescription)
		return {
			label = matrixLabel(if hasDescription then "Multi-line header" else "Single-line header"),
			cells = {
				React.createElement(ActionPresenceCard, { hasDescription = hasDescription, hasOverflow = true }),
				React.createElement(ActionPresenceCard, { hasDescription = hasDescription, hasClose = true }),
				React.createElement(
					ActionPresenceCard,
					{ hasDescription = hasDescription, hasOverflow = true, hasClose = true }
				),
			},
		}
	end)
end

local function PlaygroundStory(props: {
	controls: {
		variant: CardVariant,
		density: CardDensity,
		height: CardHeight,
		headerSize: CardHeaderSize,
		eyebrow: string,
		title: string,
		description: string,
		lineClamp: number,
		hasIcon: boolean,
		image: string,
		placement: CardMediaPlacement,
		mediaWidth: number,
		isActivatable: boolean,
		hasOverflow: boolean,
		hasClose: boolean,
	},
}): React.ReactNode
	local controls = props.controls
	return React.createElement(View, {
		tag = "col align-x-center size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Card = React.createElement(
			CardCell,
			{
				LayoutOrder = 1,
				label = "Card",
				width = 420,
				-- Fill needs a parent taller than the card; Fit keeps hugging its content.
				height = if controls.height == CardHeight.Fill then HEIGHT_FRAME_HEIGHT else nil,
			},
			React.createElement(Card, {
				variant = controls.variant,
				density = controls.density,
				height = controls.height,
				headerSize = controls.headerSize,
				eyebrow = if #controls.eyebrow > 0 then controls.eyebrow else nil,
				icon = if controls.hasIcon then IconName.House else nil,
				title = if #controls.title > 0 then controls.title else nil,
				description = if #controls.description > 0 then controls.description else nil,
				lineClamp = if controls.lineClamp > 0 then { description = controls.lineClamp } else nil,
				media = if controls.image ~= NONE
					then cardMedia(
						controls.image,
						controls.placement,
						if controls.placement == CardMediaPlacement.End then controls.mediaWidth else nil
					)
					else nil,
				onActivated = if controls.isActivatable then noop else nil,
				onOverflow = if controls.hasOverflow then noop else nil,
				onClose = if controls.hasClose then noop else nil,
			}, {
				Content = React.createElement(SlotPlaceholder),
			})
		),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row wrap align-y-top gap-large auto-xy padding-large bg-surface-0",
		},
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(
				CardCell,
				{
					LayoutOrder = index,
					label = variant,
				},
				React.createElement(Card, {
					variant = variant,
				}, {
					Content = React.createElement(SlotPlaceholder),
				})
			)
		end)
	)
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Density = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Density",
				note = "Density controls padding and corner radius.",
				contentTag = "row gap-large align-y-top auto-xy wrap",
			},
			Dash.map(DENSITY_ORDER, function(density, index)
				return React.createElement(
					CardCell,
					{
						LayoutOrder = index,
						label = density,
					},
					React.createElement(Card, {
						density = density,
					}, {
						Content = React.createElement(SlotPlaceholder),
					})
				)
			end)
		),
		Height = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Height",
			note = "Fit hugs the card's content. Fill uses the height the parent layout assigns: leftover height in a column, or the row height in a row. Filling a row divides its width in the same pass, so give every card in a group the same height — a Fit sibling sits that pass out and loses its share. Content stays top-aligned either way, so the height a card gains falls to its bottom edge.",
			labelColumnWidth = SUBPART_LABEL_WIDTH,
			columnHeaders = { "Taller parent", "Row of cards" },
			cellColumnWidth = HEIGHT_FRAME_WIDTH,
			rowAlign = "top",
			rows = buildHeightRows(),
		}),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Interaction = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Interaction",
			note = "onActivated makes the whole card pressable.",
			contentTag = "row gap-large align-y-top auto-xy wrap",
		}, {
			Activatable = React.createElement(
				CardCell,
				{
					LayoutOrder = 1,
					label = "onActivated",
				},
				React.createElement(Card, {
					onActivated = noop,
				}, {
					Content = React.createElement(SlotPlaceholder),
				})
			),
		}),
	})
end

local function ActionCard(): React.ReactNode
	local isVisible, setIsVisible = React.useState(true)
	local isMenuOpen, setIsMenuOpen = React.useState(false)
	local activationCount, setActivationCount = React.useState(0)
	local overflowRef = React.useRef(nil :: GuiObject?)

	return React.createElement(
		CardCell,
		{
			LayoutOrder = 1,
			label = "onActivated, onOverflow, and onClose",
		},
		if isVisible
			then {
				Card = React.createElement(Card, {
					overflowRef = overflowRef,
					onActivated = function()
						setActivationCount(function(count)
							return count + 1
						end)
					end,
					onOverflow = function()
						setIsMenuOpen(function(isOpen)
							return not isOpen
						end)
					end,
					onClose = function()
						setIsVisible(false)
					end,
				}, {
					Slot = React.createElement(SlotPlaceholder, {
						LayoutOrder = 1,
					}),
					Readout = React.createElement(Text, {
						Text = `Activated {activationCount}`,
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						LayoutOrder = 2,
					}),
				}),
				-- Anchored to the overflow button, so the menu adds no layout of its own.
				Menu = React.createElement(Menu, {
					isOpen = isMenuOpen,
					items = MENU_ITEMS,
					size = InputSize.Small,
					anchorRef = overflowRef,
					onPressedOutside = function()
						setIsMenuOpen(false)
					end,
					onActivated = function()
						setIsMenuOpen(false)
					end,
				}),
			}
			else {
				Reopen = React.createElement(Button, {
					text = "Reopen card",
					size = InputSize.Small,
					onActivated = function()
						setIsVisible(true)
					end,
				}),
			}
	)
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Actions = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Actions",
			note = "One card wiring all three callbacks: activating the card counts a press, overflow opens a menu anchored to its button, and close dismisses the card behind a reopen button.",
			contentTag = "row gap-large align-y-top auto-xy",
		}, {
			Actions = React.createElement(ActionCard),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Subparts = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Subparts",
			note = "Compact density. Each row adds a subpart; the second column pairs the same header with children in the content slot. Description is the only subpart that renders without a title.",
			labelColumnWidth = SUBPART_LABEL_WIDTH,
			columnHeaders = { "Header only", "With content slot" },
			cellColumnWidth = SUBPART_CARD_WIDTH,
			rowAlign = "top",
			rows = Dash.map(SUBPART_ROWS, function(row)
				return {
					label = matrixLabel(row.label),
					cells = {
						React.createElement(SubpartCard, { row = row, hasSlot = false }),
						React.createElement(SubpartCard, { row = row, hasSlot = true }),
					},
				}
			end),
		}),
		HeaderSize = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Header size",
				note = "Header size defaults from density and can be overridden independently. Typography, icon size, title spacing, and the content gap scale together; every subpart and both actions are present for comparison.",
				contentTag = "row gap-large align-y-top auto-xy wrap",
			},
			Dash.map(HEADER_SIZE_ORDER, function(headerSize, index)
				return React.createElement(
					CardCell,
					{
						LayoutOrder = index,
						label = headerSize,
					},
					React.createElement(Card, {
						density = CardDensity.Compact,
						headerSize = headerSize,
						eyebrow = "Eyebrow",
						icon = IconName.House,
						title = "Title",
						description = "Description",
						onOverflow = noop,
						onClose = noop,
					})
				)
			end)
		),
		Actions = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Actions",
			note = "Overflow and close are independent; passing a callback shows that button. They center on a single-line header and top-align once it wraps, sit on the image over end media, and overlay the children without a header.",
			contentTag = "col gap-large align-x-left auto-xy",
		}, {
			Presence = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = true,
				labelColumnWidth = SUBPART_LABEL_WIDTH,
				columnHeaders = { "onOverflow", "onClose", "Both" },
				cellColumnWidth = ACTION_CARD_WIDTH,
				rowAlign = "top",
				rows = buildActionPresenceRows(),
			}),
			Placement = React.createElement(View, {
				tag = "row wrap align-y-top gap-large auto-xy",
				LayoutOrder = 2,
			}, {
				OverChildren = React.createElement(
					CardCell,
					{
						LayoutOrder = 1,
						label = "No header, over children",
					},
					React.createElement(Card, {
						onOverflow = noop,
						onClose = noop,
					}, {
						Slot = React.createElement(SlotPlaceholder, {
							LayoutOrder = 1,
						}),
					})
				),
				OverMedia = React.createElement(
					CardCell,
					{
						LayoutOrder = 2,
						label = "Header and end media, over the image",
						width = 420,
					},
					React.createElement(Card, {
						title = "Title",
						description = "Description",
						media = cardMedia(MEDIA_IMAGE, CardMediaPlacement.End),
						onOverflow = noop,
						onClose = noop,
					})
				),
			}),
		}),
		Image = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Image",
			note = `End media is {DEFAULT_MEDIA_WIDTH}px wide unless media.width is set. Bottom fills the card width at media.aspectRatio, default 2:1. End ignores aspectRatio. Bottom ignores width.`,
			contentTag = "col gap-large align-x-left auto-xy",
		}, {
			Placements = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = true,
				labelColumnWidth = SUBPART_LABEL_WIDTH,
				columnHeaders = { "Header only", "Content only", "Header and content" },
				cellColumnWidth = IMAGE_CARD_WIDTH,
				rowAlign = "top",
				rows = Dash.map(PLACEMENT_ORDER, function(placement)
					return {
						label = matrixLabel(placement),
						cells = {
							React.createElement(ImageCard, { placement = placement, hasHeader = true }),
							React.createElement(ImageCard, { placement = placement, hasContent = true }),
							React.createElement(
								ImageCard,
								{ placement = placement, hasHeader = true, hasContent = true }
							),
						},
					}
				end),
			}),
			CustomWidth = React.createElement(
				CardCell,
				{
					LayoutOrder = 2,
					label = "End, width = 172",
				},
				React.createElement(Card, {
					title = "Title",
					description = "Description",
					media = imageMedia({
						placement = CardMediaPlacement.End,
						width = 172,
					}),
				})
			),
			CustomAspectRatio = React.createElement(
				CardCell,
				{
					LayoutOrder = 3,
					label = "Bottom, aspectRatio = 16:9",
				},
				React.createElement(Card, {
					title = "Title",
					description = "Description",
					media = imageMedia({
						placement = CardMediaPlacement.Bottom,
						aspectRatio = CardMediaAspectRatio.Ratio16x9,
					}),
				})
			),
		}),
		Truncation = React.createElement(Section, {
			LayoutOrder = 5,
			name = "Truncation",
			note = "lineClamp.description caps wrapped description height; leftover copy ellipsizes. Omit lineClamp and description wraps without a limit.",
			contentTag = "row gap-large align-y-top auto-xy",
		}, {
			TwoLines = React.createElement(
				CardCell,
				{
					LayoutOrder = 1,
					label = "description = 2",
					width = OVERFLOW_CARD_WIDTH,
				},
				React.createElement(Card, {
					title = "Title",
					description = EXTRA_LONG_DESCRIPTION,
					lineClamp = { description = 2 },
				})
			),
			ThreeLines = React.createElement(
				CardCell,
				{
					LayoutOrder = 2,
					label = "description = 3",
					width = OVERFLOW_CARD_WIDTH,
				},
				React.createElement(Card, {
					title = "Title",
					description = EXTRA_LONG_DESCRIPTION,
					lineClamp = { description = 3 },
				})
			),
		}),
		Overflow = React.createElement(Section, {
			LayoutOrder = 6,
			name = "Overflow",
			note = "A wide card gives the header room, so what collides is the title against the actions rather than the card edge.",
			contentTag = "col gap-large align-x-left auto-xy",
		}, {
			Title = React.createElement(
				CardCell,
				{
					LayoutOrder = 1,
					label = "Long title beside actions",
					width = OVERFLOW_CARD_WIDTH,
				},
				React.createElement(Card, {
					title = LONG_TITLE,
					onOverflow = noop,
					onClose = noop,
				})
			),
			Copy = React.createElement(
				CardCell,
				{
					LayoutOrder = 2,
					label = "Long eyebrow, title, and description",
					width = OVERFLOW_CARD_WIDTH,
				},
				React.createElement(Card, {
					eyebrow = LONG_EYEBROW,
					icon = IconName.House,
					title = LONG_TITLE,
					description = LONG_DESCRIPTION,
					onOverflow = noop,
					onClose = noop,
				})
			),
		}),
		FullComposition = React.createElement(Section, {
			LayoutOrder = 7,
			name = "Full composition",
			note = "Both cards fill, so the longer description sets the height and the card beside it grows to match.",
			contentTag = "row gap-large align-y-top auto-xy",
		}, {
			Full = React.createElement(
				LabeledCell,
				{
					LayoutOrder = 1,
					label = "Header, content, media, and actions",
				},
				React.createElement(View, {
					tag = "row align-y-top gap-large size-full-0 auto-y",
					Size = UDim2.fromOffset(FULL_COMPOSITION_FRAME_WIDTH, 0),
				}, {
					Short = React.createElement(FullCompositionCard, {
						LayoutOrder = 1,
						description = "Description",
					}),
					Long = React.createElement(FullCompositionCard, {
						LayoutOrder = 2,
						description = EXTRA_LONG_DESCRIPTION,
					}),
				})
			),
		}),
	})
end

return {
	summary = "Card groups an optional header, arbitrary content, media, and independent overflow or close actions in a bordered or filled surface.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			story = VariantsStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "States",
			story = StatesStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		variant = VARIANT_ORDER,
		density = DENSITY_ORDER,
		height = HEIGHT_ORDER,
		headerSize = HEADER_SIZE_ORDER,
		eyebrow = "",
		title = "",
		description = "",
		lineClamp = 0,
		hasIcon = false,
		image = { NONE, MEDIA_IMAGE },
		placement = PLACEMENT_ORDER,
		mediaWidth = DEFAULT_MEDIA_WIDTH,
		isActivatable = false,
		hasOverflow = false,
		hasClose = false,
	},
}
