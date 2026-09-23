local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local OverlayStoryAnchor = require(Foundation.Utility.Stories.Shared.OverlayStoryAnchor)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Tooltip = require(Foundation.Components.Tooltip)
local View = require(Foundation.Components.View)

type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG
local matrixLabel = MatrixGridShared.matrixLabel
local Anchor = OverlayStoryAnchor.Anchor

local SIDE_ORDER: { PopoverSide } = {
	PopoverSide.Right,
	PopoverSide.Bottom,
	PopoverSide.Left,
	PopoverSide.Top,
}

local ALIGN_ORDER: { PopoverAlign } = {
	PopoverAlign.Start,
	PopoverAlign.Center,
	PopoverAlign.End,
}

local ALIGN_HEADERS = Dash.map(ALIGN_ORDER, function(value): string
	return value
end)

local TITLE = "Title"
local TEXT = "Text"
local LONG_TITLE = "This is a longer title that should truncate at the tooltip max width instead of growing the panel"
local LONG_TEXT =
	"This is a longer body that should wrap within the tooltip max width instead of growing the panel past a few lines."

local SHORTCUT = { Enum.KeyCode.LeftControl, Enum.KeyCode.S }

local TALL_ANCHOR_SIZE = OverlayStoryAnchor.TALL_SIZE
local PLACEMENT_CELL_WIDTH = 96
local PLACEMENT_LABEL_WIDTH = 72

local function noop() end

type TooltipTargetProps = {
	LayoutOrder: number?,
	title: string?,
	text: string?,
	shortcut: { Enum.KeyCode }?,
	hasArrow: boolean?,
	side: PopoverSide?,
	align: PopoverAlign?,
	anchorSize: UDim2?,
	anchorLabel: string?,
}

local function TooltipTarget(props: TooltipTargetProps): React.ReactNode
	return React.createElement(
		Tooltip,
		{
			LayoutOrder = props.LayoutOrder,
			title = props.title or TITLE,
			text = props.text,
			shortcut = props.shortcut,
			hasArrow = if Flags.FoundationTooltipBeta then props.hasArrow else nil,
			side = props.side,
			align = props.align,
		},
		React.createElement(Anchor, {
			Size = props.anchorSize,
			label = props.anchorLabel,
			onActivated = noop,
		})
	)
end

type OccupancyCase = {
	label: string,
	title: string,
	text: string?,
	shortcut: { Enum.KeyCode }?,
}

local OCCUPANCY_ORDER: { OccupancyCase } = {
	{ label = "Title", title = TITLE },
	{ label = "Title + text", title = TITLE, text = TEXT },
	{ label = "Title + shortcut", title = TITLE, shortcut = SHORTCUT },
	{ label = "Text only", title = "", text = TEXT },
	{ label = "Shortcut only", title = "", shortcut = SHORTCUT },
}

type PlaygroundControls = {
	title: string,
	text: string,
	hasShortcut: boolean,
	side: PopoverSide,
	align: PopoverAlign,
	hasArrow: boolean?,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = OverlayStoryAnchor.PLAYGROUND_TAG,
		Size = OverlayStoryAnchor.PLAYGROUND_FRAME_SIZE,
	}, {
		Target = React.createElement(TooltipTarget, {
			LayoutOrder = 1,
			title = controls.title,
			text = if controls.text ~= "" then controls.text else nil,
			shortcut = if controls.hasShortcut then SHORTCUT else nil,
			hasArrow = controls.hasArrow,
			side = controls.side,
			align = controls.align,
		}),
	})
end

local function PlacementStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = true,
			labelColumnWidth = PLACEMENT_LABEL_WIDTH,
			columnHeaders = ALIGN_HEADERS,
			cellColumnWidth = PLACEMENT_CELL_WIDTH,
			rows = Dash.map(SIDE_ORDER, function(side): MatrixGridRow
				return {
					label = matrixLabel(side),
					cells = Dash.map(ALIGN_ORDER, function(align)
						return React.createElement(TooltipTarget, {
							side = side,
							align = align,
							anchorSize = TALL_ANCHOR_SIZE,
						})
					end),
				}
			end),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Occupancy = React.createElement(
			View,
			{
				LayoutOrder = 1,
				tag = "row wrap align-y-top gap-large auto-xy",
			},
			Dash.map(OCCUPANCY_ORDER, function(case, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = case.label,
				}, {
					Target = React.createElement(TooltipTarget, {
						LayoutOrder = 1,
						title = case.title,
						text = case.text,
						shortcut = case.shortcut,
						side = PopoverSide.Top,
					}),
				})
			end)
		),
		Truncation = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Truncation",
		}, {
			Title = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Long title",
			}, {
				Target = React.createElement(TooltipTarget, {
					LayoutOrder = 1,
					title = LONG_TITLE,
					side = PopoverSide.Top,
				}),
			}),
			TitleAndShortcut = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "Long title + shortcut",
			}, {
				Target = React.createElement(TooltipTarget, {
					LayoutOrder = 1,
					title = LONG_TITLE,
					shortcut = SHORTCUT,
					side = PopoverSide.Top,
				}),
			}),
		}),
		Wrapping = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Wrapping",
		}, {
			Body = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Long text",
			}, {
				Target = React.createElement(TooltipTarget, {
					LayoutOrder = 1,
					title = TITLE,
					text = LONG_TEXT,
					side = PopoverSide.Top,
				}),
			}),
		}),
		Arrow = if Flags.FoundationTooltipBeta
			then React.createElement(Section, {
				LayoutOrder = 4,
				name = "Arrow",
			}, {
				WithArrow = React.createElement(LabeledCell, {
					LayoutOrder = 1,
					label = "true",
				}, {
					Target = React.createElement(TooltipTarget, {
						LayoutOrder = 1,
						title = TITLE,
						text = TEXT,
						hasArrow = true,
						side = PopoverSide.Top,
					}),
				}),
				WithoutArrow = React.createElement(LabeledCell, {
					LayoutOrder = 2,
					label = "false",
				}, {
					Target = React.createElement(TooltipTarget, {
						LayoutOrder = 1,
						title = TITLE,
						text = TEXT,
						hasArrow = false,
						side = PopoverSide.Top,
					}),
				}),
			})
			else nil,
	})
end

local controls: { [string]: unknown } = Dash.join({
	title = TITLE,
	text = TEXT,
	hasShortcut = false,
	side = SIDE_ORDER,
	align = ALIGN_ORDER,
}, if Flags.FoundationTooltipBeta then { hasArrow = true } else {})

return {
	summary = "Hover overlay with a title and optional body and shortcut. There is no isOpen prop; hover an anchor to open the panel.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Placement",
			summary = "Rows are side, columns are align. Hover each cell; the tall target makes align readable.",
			story = PlacementStory,
		},
		{
			name = "Content",
			summary = "Hover each anchor. Empty title omits the title; shortcut can stand alone.",
			story = ContentStory,
		},
	},
	controls = controls,
}
