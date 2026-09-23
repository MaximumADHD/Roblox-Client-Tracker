local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Accordion = require(Foundation.Components.Accordion)
local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

local IconName = BuilderIcons.Icon

type AccordionItemProps = Accordion.AccordionItemProps
type AccordionItemElementProps = AccordionItemProps & { key: string? }
type InputPlacement = InputPlacement.InputPlacement
type InputSize = InputSize.InputSize

type PlaygroundControls = {
	rootSize: InputSize | typeof(React.None),
	rootChevronPosition: InputPlacement?,
	rootIsContained: boolean?,
	text: string,
	description: string?,
	icon: string,
	hasDivider: boolean,
	isExpanded: boolean,
}

local MATRIX_ITEM_WIDTH = UDim.new(0, 260)
local MATRIX_COLUMN_WIDTH = 260
local TRUNCATION_WIDTH = UDim.new(0, 240)
local TALL_CONTENT_HEIGHT = 320
local LONG_TITLE = "This is a longer title that should truncate at the end of the header"
local LONG_DESCRIPTION = "This is a longer description that stays on one line and truncates when it runs out of width"

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local PLAYGROUND_ROOT_SIZE_ORDER = {
	React.None,
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local ICON_ORDER = { "None", IconName.Star }

local CHEVRON_POSITION_ORDER: { InputPlacement } = {
	InputPlacement.End,
	InputPlacement.Start,
}

local function Section(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Note = if props.note
			then React.createElement(Text, {
				Text = props.note,
				tag = "auto-xy text-caption-small text-wrap text-align-x-left content-muted",
				LayoutOrder = 2,
			})
			else nil,
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-top auto-xy wrap",
			LayoutOrder = 3,
		}, props.children),
	})
end

local function ItemBody(props: { height: number? })
	return React.createElement(View, {
		tag = if props.height
			then "row align-x-center align-y-center padding-small stroke-default radius-medium bg-shift-200"
			else "row align-x-center align-y-center size-full-0 auto-y padding-small stroke-default radius-medium bg-shift-200",
		Size = if props.height then UDim2.new(1, 0, 0, props.height) else nil,
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = if props.height then `Content area, {props.height}px tall` else "Content area",
			tag = "auto-xy text-caption-small content-muted",
		}),
	})
end

local function resolveIcon(value: string): string?
	if value == "None" then
		return nil
	end
	return value
end

local function Shell(props: {
	LayoutOrder: number?,
	width: UDim?,
	size: InputSize?,
	chevronPosition: InputPlacement?,
	isContained: boolean?,
	children: React.ReactNode,
})
	return React.createElement(Accordion.Root, {
		LayoutOrder = props.LayoutOrder,
		width = props.width,
		size = props.size,
		chevronPosition = props.chevronPosition,
		isContained = props.isContained,
	}, props.children)
end

local function StaticItem(props: AccordionItemProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		Accordion.Item,
		Dash.join(props, {
			key = tostring(remountKey),
			onActivated = function()
				setRemountKey(function(key)
					return key + 1
				end)
			end,
		}) :: AccordionItemElementProps
	)
end

local function TruncationCell(props: {
	text: string,
	description: string?,
	icon: string?,
	chevronPosition: InputPlacement?,
})
	return React.createElement(Shell, {
		width = TRUNCATION_WIDTH,
		chevronPosition = props.chevronPosition,
	}, {
		Item = React.createElement(StaticItem, {
			LayoutOrder = 1,
			id = 1,
			text = props.text,
			description = props.description,
			icon = props.icon,
			isExpanded = true,
		}, React.createElement(ItemBody, {})),
	})
end

local function AccessoryCell(props: {
	icon: string?,
	description: string?,
	hasDivider: boolean?,
	chevronPosition: InputPlacement?,
})
	return React.createElement(Shell, {
		width = MATRIX_ITEM_WIDTH,
		chevronPosition = props.chevronPosition,
	}, {
		Item = React.createElement(StaticItem, {
			LayoutOrder = 1,
			id = 1,
			text = "Title",
			icon = props.icon,
			description = props.description,
			hasDivider = props.hasDivider,
			isExpanded = true,
		}, React.createElement(ItemBody, {})),
	})
end

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls
	local description = if controls.description == "" then nil else controls.description

	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Accordion = React.createElement(Shell, {
			LayoutOrder = 1,
			size = if controls.rootSize == React.None then nil else controls.rootSize :: InputSize,
			chevronPosition = controls.rootChevronPosition,
			isContained = controls.rootIsContained,
		}, {
			Subject = React.createElement(Accordion.Item, {
				LayoutOrder = 1,
				id = 1,
				text = controls.text,
				description = description,
				icon = resolveIcon(controls.icon),
				hasDivider = controls.hasDivider,
				isExpanded = controls.isExpanded,
				onActivated = function() end,
			}, React.createElement(ItemBody, {})),
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		ContextSize = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Context size",
			note = "Item has no size prop. Header type, padding, radius, and bleed follow Root.size.",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = Dash.map(SIZE_ORDER, function(value): string
					return value
				end),
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = MATRIX_COLUMN_WIDTH,
				rows = {
					{
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(Shell, {
								size = size,
								width = MATRIX_ITEM_WIDTH,
							}, {
								Item = React.createElement(StaticItem, {
									LayoutOrder = 1,
									id = 1,
									text = "Title",
									isExpanded = true,
								}, React.createElement(ItemBody, {})),
							})
						end),
					},
				},
			}),
		}),
	})
end

local ACCESSORY_HEADERS = { "None", "icon", "description", "hasDivider = false" }

local function accessoryCells(chevronPosition: InputPlacement?): { React.ReactNode }
	return {
		React.createElement(AccessoryCell, {
			chevronPosition = chevronPosition,
		}),
		React.createElement(AccessoryCell, {
			icon = IconName.Star,
			chevronPosition = chevronPosition,
		}),
		React.createElement(AccessoryCell, {
			description = "Description",
			chevronPosition = chevronPosition,
		}),
		React.createElement(AccessoryCell, {
			hasDivider = false,
			chevronPosition = chevronPosition,
		}),
	}
end

local ACCESSORY_ROWS = {
	{ label = matrixLabel("Start"), cells = accessoryCells(InputPlacement.Start) },
	{ label = matrixLabel("End"), cells = accessoryCells(InputPlacement.End) },
}

local TRUNCATION_NOTE =
	"Title and description use end truncation. Width is a Root harness. Rows sweep Root.chevronPosition. icon sits opposite the chevron, so both change remaining header width."

local TRUNCATION_HEADERS = { "Title", "Description" }

local function truncationCells(props: {
	icon: string?,
	chevronPosition: InputPlacement?,
}): { React.ReactNode }
	return {
		React.createElement(TruncationCell, {
			text = LONG_TITLE,
			icon = props.icon,
			chevronPosition = props.chevronPosition,
		}),
		React.createElement(TruncationCell, {
			text = "Title",
			description = LONG_DESCRIPTION,
			icon = props.icon,
			chevronPosition = props.chevronPosition,
		}),
	}
end

local TRUNCATION_ROWS = {
	{
		label = matrixLabel("Start"),
		cells = truncationCells({ chevronPosition = InputPlacement.Start }),
	},
	{
		label = matrixLabel("Start · icon"),
		cells = truncationCells({ icon = IconName.Star, chevronPosition = InputPlacement.Start }),
	},
	{ label = matrixLabel("End"), cells = truncationCells({}) },
	{ label = matrixLabel("End · icon"), cells = truncationCells({ icon = IconName.Star }) },
}

local ICON_NOTE = "Columns sweep Root.chevronPosition. The leading icon sits opposite the chevron."

local function iconCell(icon: string, chevronPosition: InputPlacement?): React.ReactNode
	return React.createElement(Shell, {
		width = MATRIX_ITEM_WIDTH,
		chevronPosition = chevronPosition,
	}, {
		Item = React.createElement(StaticItem, {
			LayoutOrder = 1,
			id = 1,
			text = "Title",
			icon = icon,
			isExpanded = true,
		}, React.createElement(ItemBody, {})),
	})
end

local function iconCells(icon: string): { React.ReactNode }
	return {
		iconCell(icon, InputPlacement.Start),
		iconCell(icon, InputPlacement.End),
	}
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		OptionalAccessories = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Optional accessories",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = 90,
				columnHeaders = ACCESSORY_HEADERS,
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = MATRIX_COLUMN_WIDTH,
				rows = ACCESSORY_ROWS,
			}),
		}),
		Truncation = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Truncation",
			note = TRUNCATION_NOTE,
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = 110,
				columnHeaders = TRUNCATION_HEADERS,
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = 240,
				rows = TRUNCATION_ROWS,
			}),
		}),
		ContentHeight = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Content height",
			note = "The panel animates to its child's measured height. There is no maximum and no scrolling, so a tall child makes the item tall. A caller that needs a cap has to clamp or scroll its own child.",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(Shell, { width = MATRIX_ITEM_WIDTH }, {
				Item = React.createElement(StaticItem, {
					LayoutOrder = 1,
					id = 1,
					text = "Title",
					isExpanded = true,
				}, React.createElement(ItemBody, { height = TALL_CONTENT_HEIGHT })),
			}),
		}),
		IconByType = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Icon variations",
			note = ICON_NOTE,
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = 220,
				columnHeaders = { "Start", "End" },
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = MATRIX_COLUMN_WIDTH,
				rowGap = "xxlarge",
				rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
					return iconCells(iconExample.name)
				end),
			}),
		}),
	})
end

return {
	summary = "A collapsible row with a title, optional description and icon, and expandable content.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Sizing", story = SizingStory },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		rootSize = PLAYGROUND_ROOT_SIZE_ORDER,
		rootChevronPosition = CHEVRON_POSITION_ORDER,
		rootIsContained = false,
		text = "Title",
		description = "Description",
		icon = ICON_ORDER,
		hasDivider = true,
		isExpanded = false,
	},
}
