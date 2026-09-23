local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Grid = require(Foundation.Components.Grid)
local StorySectionShared = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local LabeledCell = StorySectionShared.LabeledCell
local Section = StorySectionShared.Section

type ResponsiveValue<T> = Types.ResponsiveValue<T>
type Span = number | ResponsiveValue<number>

local STORY_FRAME_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local STACK_TAG = "col gap-xxlarge auto-xy"
local CELL_TAG = "auto-y padding-small radius-small margin-bottom-medium bg-shift-200"
local SUBJECT_CELL_TAG = "auto-y padding-small radius-small margin-bottom-medium bg-shift-400"
local LABEL_TAG = "size-full-0 auto-y text-caption-small text-wrap text-align-x-center content-default"

local DEFAULT_WIDTH = 900

local SIZE_OPTIONS: { number } = { 1, 2, 3, 4, 6, 12 }
local SIZE_ORDER: { number } = { 1, 3, 6, 12 }
local ROOT_WIDTH_OPTIONS: { number } = { 360, 600, 900 }

type WidthCase = { label: string, width: number }

local WIDTH_ORDER: { WidthCase } = {
	{ label = "360 · xs · 3 columns", width = 360 },
	{ label = "600 · sm · 6 columns", width = 600 },
	{ label = "900 · md · 12 columns", width = 900 },
}

local SIBLING_SPAN: ResponsiveValue<number> = { xs = 1, sm = 2, md = 4, lg = 4, xl = 4 }
local MAIN_SPAN: ResponsiveValue<number> = { xs = 3, sm = 4, md = 8, lg = 8, xl = 8 }
local ASIDE_SPAN: ResponsiveValue<number> = { xs = 0, sm = 2, md = 4, lg = 4, xl = 4 }

local MAIN_SPAN_LABEL = "size = { xs = 3, sm = 4, md = 8, lg = 8, xl = 8 }"
local ASIDE_SPAN_LABEL = "size = { xs = 0, sm = 2, md = 4, lg = 4, xl = 4 }"

type CellProps = {
	label: string,
	size: Span,
	isSubject: boolean?,
	LayoutOrder: number,
}

local function DemoCell(props: CellProps): React.ReactNode
	return React.createElement(Grid.Cell, {
		size = props.size,
		tag = if props.isSubject then SUBJECT_CELL_TAG else CELL_TAG,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = LABEL_TAG,
		}),
	})
end

type ShellProps = {
	LayoutOrder: number?,
	width: number,
	children: React.ReactNode,
}

local function Shell(props: ShellProps): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-y bg-surface-100",
		Size = UDim2.fromOffset(props.width, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Root = React.createElement(Grid.Root, { LayoutOrder = 1 }, props.children),
	})
end

type PlaygroundControls = {
	size: number,
	rootWidth: number,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Shell = React.createElement(Shell, { LayoutOrder = 1, width = controls.rootWidth }, {
			Subject = React.createElement(DemoCell, {
				label = `Subject · size = {controls.size}`,
				size = controls.size,
				isSubject = true,
				LayoutOrder = 1,
			}),
			SiblingA = React.createElement(DemoCell, {
				label = "Sibling",
				size = SIBLING_SPAN,
				LayoutOrder = 2,
			}),
			SiblingB = React.createElement(DemoCell, {
				label = "Sibling",
				size = SIBLING_SPAN,
				LayoutOrder = 3,
			}),
		}),
	})
end

local function sizeFrames(): { [string]: React.ReactNode }
	local frames: { [string]: React.ReactNode } = {}
	for index, span in SIZE_ORDER do
		frames[`Size{index}`] = React.createElement(LabeledCell, {
			LayoutOrder = index,
			label = `size = {span}`,
		}, {
			Shell = React.createElement(Shell, { width = DEFAULT_WIDTH }, {
				Subject = React.createElement(DemoCell, {
					label = `{span} of 12 columns`,
					size = span,
					isSubject = true,
					LayoutOrder = 1,
				}),
			}),
		})
	end
	return frames
end

local function responsiveFrames(): { [string]: React.ReactNode }
	local frames: { [string]: React.ReactNode } = {}
	for index, case in WIDTH_ORDER do
		frames[`Width{index}`] = React.createElement(LabeledCell, {
			LayoutOrder = index,
			label = case.label,
		}, {
			Shell = React.createElement(Shell, { width = case.width }, {
				Main = React.createElement(DemoCell, {
					label = MAIN_SPAN_LABEL,
					size = MAIN_SPAN,
					isSubject = true,
					LayoutOrder = 1,
				}),
				Aside = React.createElement(DemoCell, {
					label = ASIDE_SPAN_LABEL,
					size = ASIDE_SPAN,
					isSubject = true,
					LayoutOrder = 2,
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
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			note = "A number claims the same column count at every breakpoint, clamped to the columns the container "
				.. "has: 12 resolves to 3 columns at xs and 6 at sm.",
			contentTag = STACK_TAG,
		}, sizeFrames()),
		ResponsiveSize = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Responsive size",
			note = "A key set to 0 hides the cell at that breakpoint, and a missing key falls back to the container's "
				.. "full column count.",
			contentTag = STACK_TAG,
		}, responsiveFrames()),
	})
end

return {
	summary = "A grid child that claims columns. `size` is either a column count or a per-breakpoint map, resolved "
		.. "against the column count of the Grid.Root that measures it.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
	},
	controls = {
		size = SIZE_OPTIONS,
		rootWidth = ROOT_WIDTH_OPTIONS,
	},
}
