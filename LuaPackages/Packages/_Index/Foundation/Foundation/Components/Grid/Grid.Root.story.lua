local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointConfig = require(Foundation.Utility.Responsive.BreakpointConfig)
local Grid = require(Foundation.Components.Grid)
local GridConfig = require(Foundation.Utility.Responsive.GridConfig)
local StorySectionShared = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local LabeledCell = StorySectionShared.LabeledCell
local Section = StorySectionShared.Section

type Breakpoint = Breakpoint.Breakpoint
type ResponsiveValue<T> = Types.ResponsiveValue<T>
type Span = number | ResponsiveValue<number>

local STORY_FRAME_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local STACK_TAG = "col gap-xxlarge auto-xy"
local CELL_TAG = "auto-y padding-small radius-small margin-bottom-medium bg-shift-300"
local LABEL_TAG = "size-full-0 auto-y text-caption-small text-wrap text-align-x-center content-default"

local DEFAULT_WIDTH = 900

local ALIGN_ORDER: { Enum.ItemLineAlignment } = {
	Enum.ItemLineAlignment.Start,
	Enum.ItemLineAlignment.Center,
	Enum.ItemLineAlignment.End,
}

local SORT_ORDER_ORDER: { Enum.SortOrder } = {
	Enum.SortOrder.LayoutOrder,
	Enum.SortOrder.Name,
}

local WIDTH_OPTIONS: { number } = { 360, 600, 900 }

local FULL_SPAN: ResponsiveValue<number> = { xs = 3, sm = 6, md = 12, lg = 12, xl = 12 }
local THIRD_SPAN: ResponsiveValue<number> = { xs = 1, sm = 2, md = 4, lg = 4, xl = 4 }

type WidthCase = {
	width: number,
	breakpoint: Breakpoint,
	fullSpan: number,
	thirdSpan: number,
}

-- Each width must stay at or below its breakpoint's ceiling in BreakpointConfig.widths, or the grid resolves a
-- different breakpoint than the one these labels and spans are read from.
local WIDTH_ORDER: { WidthCase } = {
	{ width = 360, breakpoint = Breakpoint.XSmall, fullSpan = FULL_SPAN.xs, thirdSpan = THIRD_SPAN.xs },
	{ width = 600, breakpoint = Breakpoint.Small, fullSpan = FULL_SPAN.sm, thirdSpan = THIRD_SPAN.sm },
	{ width = 900, breakpoint = Breakpoint.Medium, fullSpan = FULL_SPAN.md, thirdSpan = THIRD_SPAN.md },
}

type CellProps = {
	label: string,
	size: Span,
	LayoutOrder: number,
}

local function DemoCell(props: CellProps): React.ReactNode
	return React.createElement(Grid.Cell, {
		size = props.size,
		tag = CELL_TAG,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = LABEL_TAG,
		}),
	})
end

type GridFrameProps = {
	LayoutOrder: number?,
	width: number,
	align: Enum.ItemLineAlignment?,
	Wraps: boolean?,
	SortOrder: Enum.SortOrder?,
	children: React.ReactNode,
}

local function GridFrame(props: GridFrameProps): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-y bg-surface-100",
		Size = UDim2.fromOffset(props.width, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Root = React.createElement(Grid.Root, {
			align = props.align,
			Wraps = props.Wraps,
			SortOrder = props.SortOrder,
			LayoutOrder = 1,
		}, props.children),
	})
end

local function spanCells(count: number, size: Span): { [string]: React.ReactNode }
	local cells: { [string]: React.ReactNode } = {}
	for index = 1, count do
		cells[`Cell{index}`] = React.createElement(DemoCell, {
			label = string.char(64 + index),
			size = size,
			LayoutOrder = index,
		})
	end
	return cells
end

type PlaygroundControls = {
	align: Enum.ItemLineAlignment,
	Wraps: boolean,
	SortOrder: Enum.SortOrder,
	containerWidth: number,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Frame = React.createElement(GridFrame, {
			LayoutOrder = 1,
			width = controls.containerWidth,
			align = controls.align,
			Wraps = controls.Wraps,
			SortOrder = controls.SortOrder,
		}, spanCells(4, THIRD_SPAN)),
	})
end

local function widthFrames(): { [string]: React.ReactNode }
	local frames: { [string]: React.ReactNode } = {}
	for index, case in WIDTH_ORDER do
		local shortName = BreakpointConfig.shortNames[case.breakpoint]
		local columns = GridConfig.columns[case.breakpoint]
		local thirdLabel = `size.{shortName} = {case.thirdSpan} of {columns}`

		frames[`Width{index}`] = React.createElement(LabeledCell, {
			LayoutOrder = index,
			label = `parent {case.width}px → {shortName} · {columns} columns · margin {GridConfig.margins[case.breakpoint]}`
				.. ` · gutter {GridConfig.gutters[case.breakpoint]}`,
		}, {
			Frame = React.createElement(GridFrame, { width = case.width }, {
				Band = React.createElement(DemoCell, {
					label = `size.{shortName} = {case.fullSpan} of {columns}`,
					size = FULL_SPAN,
					LayoutOrder = 1,
				}),
				ThirdA = React.createElement(DemoCell, {
					label = thirdLabel,
					size = THIRD_SPAN,
					LayoutOrder = 2,
				}),
				ThirdB = React.createElement(DemoCell, {
					label = thirdLabel,
					size = THIRD_SPAN,
					LayoutOrder = 3,
				}),
				ThirdC = React.createElement(DemoCell, {
					label = thirdLabel,
					size = THIRD_SPAN,
					LayoutOrder = 4,
				}),
			}),
		})
	end
	return frames
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Width = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Width",
			note = "Grid has no width prop. It measures the parent it is dropped into, resolves a breakpoint from "
				.. "that width, and reads column count, margin and gutter from it. All three frames hold the same "
				.. "four cells with the same two responsive `size` maps, so each cell re-resolves its span per "
				.. "breakpoint and keeps its share of the row as the parent grows.",
			contentTag = STACK_TAG,
		}, widthFrames()),
	})
end

local function WrapsStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Wrapping = React.createElement(LabeledCell, {
			LayoutOrder = 1,
			label = "Wraps = true",
		}, {
			Frame = React.createElement(GridFrame, {
				width = DEFAULT_WIDTH,
				Wraps = true,
			}, spanCells(4, THIRD_SPAN)),
		}),
		SingleLine = React.createElement(LabeledCell, {
			LayoutOrder = 2,
			label = "Wraps = false",
		}, {
			Frame = React.createElement(GridFrame, {
				width = DEFAULT_WIDTH,
				Wraps = false,
			}, spanCells(4, THIRD_SPAN)),
		}),
	})
end

local function sortedCells(): { [string]: React.ReactNode }
	return {
		CellA = React.createElement(DemoCell, { label = "A · LayoutOrder 3", size = THIRD_SPAN, LayoutOrder = 3 }),
		CellB = React.createElement(DemoCell, { label = "B · LayoutOrder 2", size = THIRD_SPAN, LayoutOrder = 2 }),
		CellC = React.createElement(DemoCell, { label = "C · LayoutOrder 1", size = THIRD_SPAN, LayoutOrder = 1 }),
	}
end

local function SortOrderStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		ByLayoutOrder = React.createElement(LabeledCell, {
			LayoutOrder = 1,
			label = "SortOrder = Enum.SortOrder.LayoutOrder",
		}, {
			Frame = React.createElement(GridFrame, {
				width = DEFAULT_WIDTH,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}, sortedCells()),
		}),
		ByName = React.createElement(LabeledCell, {
			LayoutOrder = 2,
			label = "SortOrder = Enum.SortOrder.Name",
		}, {
			Frame = React.createElement(GridFrame, {
				width = DEFAULT_WIDTH,
				SortOrder = Enum.SortOrder.Name,
			}, sortedCells()),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Occupancy = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Occupancy",
			note = "A wrapped grid spaces its children with SpaceBetween, so a row that leaves columns unclaimed "
				.. "spreads its children to the margins instead of packing them left.",
			contentTag = STACK_TAG,
		}, {
			Complete = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "12 of 12 columns claimed",
			}, {
				Frame = React.createElement(GridFrame, { width = DEFAULT_WIDTH }, spanCells(3, THIRD_SPAN)),
			}),
			Incomplete = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "8 of 12 columns claimed",
			}, {
				Frame = React.createElement(GridFrame, { width = DEFAULT_WIDTH }, spanCells(2, THIRD_SPAN)),
			}),
		}),
	})
end

return {
	base = true,
	summary = "A responsive column layout that reads its breakpoint from its own container width; children claim "
		.. "columns with Grid.Cell or `{breakpoint}-col-{n}` tags.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			summary = "Medium and every wider breakpoint keep 12 columns and differ only in margin and gutter, so the "
				.. "sweep stops at 900px; `align` moves the grid only in a container wider than its 1920px clamp.",
			story = SizingStory,
		},
		{
			name = "Wraps",
			summary = "A wrapped row carries no vertical gap of its own, so every cell on this page adds "
				.. "`margin-bottom-medium` to separate the rows it wraps into.",
			story = WrapsStory,
		},
		{
			name = "Sort order",
			story = SortOrderStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		align = ALIGN_ORDER,
		Wraps = true,
		SortOrder = SORT_ORDER_ORDER,
		containerWidth = WIDTH_OPTIONS,
	},
}
