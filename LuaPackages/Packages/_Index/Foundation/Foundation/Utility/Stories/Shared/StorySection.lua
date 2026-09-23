local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local STORY_FRAME_TAG = "padding-y-large bg-surface-0"
local STORY_PAGE_TAG = `size-full-0 auto-y {STORY_FRAME_TAG}`
local DEFAULT_CONTENT_TAG = "row gap-large align-y-top auto-xy wrap"

export type StorySectionProps = {
	caption: string,
	note: string?,
	contentTag: string?,
	LayoutOrder: number?,
	children: React.ReactNode?,
}

local function StorySection(props: StorySectionProps): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.caption,
			tag = "auto-xy text-label-medium text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Note = if props.note
			then React.createElement(Text, {
				Text = props.note,
				tag = "auto-xy text-body-small text-wrap text-align-x-left content-muted",
				LayoutOrder = 2,
			})
			else nil,
		Content = React.createElement(View, {
			tag = props.contentTag or DEFAULT_CONTENT_TAG,
			LayoutOrder = 3,
		}, props.children),
	})
end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	local title = if props.note
		then React.createElement(View, {
			tag = "col align-x-left gap-xsmall auto-xy",
			LayoutOrder = 1,
		}, {
			Name = React.createElement(Text, {
				Text = props.name,
				tag = "auto-xy text-label-medium content-default",
				LayoutOrder = 1,
			}),
			Note = React.createElement(Text, {
				Text = props.note,
				tag = "auto-xy text-caption-small text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
		})
		else React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		})

	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = title,
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledCell(props: {
	LayoutOrder: number,
	label: string,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function StoryMatrixGrid(props: {
	LayoutOrder: number,
	showLabelColumn: boolean?,
	labelColumnWidth: number?,
	columnHeaders: { string },
	cellColumnWidth: number?,
	cellColumnWidths: { number }?,
	rows: { MatrixGridRow },
})
	return React.createElement(View, {
		tag = "auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(MatrixGrid, {
			showLabelColumn = props.showLabelColumn,
			labelColumnWidth = props.labelColumnWidth,
			columnHeaders = props.columnHeaders,
			cellColumnWidth = props.cellColumnWidth,
			cellColumnWidths = props.cellColumnWidths,
			headerTextAlign = "left",
			cellAlign = "left",
			rowAlign = "top",
			rows = props.rows,
		}),
	})
end

local function MatrixSection(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	showLabelColumn: boolean?,
	labelColumnWidth: number?,
	columnHeaders: { string },
	cellColumnWidth: number?,
	cellColumnWidths: { number }?,
	rows: { MatrixGridRow },
})
	return React.createElement(Section, {
		LayoutOrder = props.LayoutOrder,
		name = props.name,
		note = props.note,
		contentTag = props.contentTag or "col auto-xy",
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = props.showLabelColumn,
			labelColumnWidth = props.labelColumnWidth,
			columnHeaders = props.columnHeaders,
			cellColumnWidth = props.cellColumnWidth,
			cellColumnWidths = props.cellColumnWidths,
			rows = props.rows,
		}),
	})
end

return {
	StorySection = StorySection,
	STORY_FRAME_TAG = STORY_FRAME_TAG,
	STORY_PAGE_TAG = STORY_PAGE_TAG,
	Section = Section,
	LabeledCell = LabeledCell,
	StoryMatrixGrid = StoryMatrixGrid,
	MatrixSection = MatrixSection,
}
