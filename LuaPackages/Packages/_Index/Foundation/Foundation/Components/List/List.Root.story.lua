local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local List = require(Foundation.Components.List)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection).StorySection
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

type MatrixGridRow = MatrixGridShared.MatrixGridRow

type InputSize = InputSize.InputSize
type HasDivider = boolean | { hasDivider: true, isInset: boolean }
type IsContained = boolean | { isContained: false, hasMargin: boolean? }

local LIST_WIDTH = 280
local FIXTURE_ROW_COUNT = 3
local CONTROLLED_ROW_COUNT = 2
local STORY_FRAME_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local UNSET_SIZE = "Default"

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

type DividerCase = { name: string, hasDivider: HasDivider }

local DIVIDER_ORDER: { DividerCase } = {
	{ name = "Inset", hasDivider = { hasDivider = true, isInset = true } },
	{ name = "Full width", hasDivider = { hasDivider = true, isInset = false } },
	{ name = "None", hasDivider = false },
}

type ContainedCase = { name: string, isContained: IsContained }

local CONTAINED_ORDER: { ContainedCase } = {
	{ name = "Margin", isContained = { isContained = false, hasMargin = true } },
	{ name = "Full bleed", isContained = { isContained = false, hasMargin = false } },
	{ name = "Contained", isContained = true },
}

local SIZE_HEADERS: { string } = {}
for _, size in SIZE_ORDER do
	table.insert(SIZE_HEADERS, size)
end

local SIZE_CONTROL_OPTIONS: { string } = { UNSET_SIZE }
for _, size in SIZE_ORDER do
	table.insert(SIZE_CONTROL_OPTIONS, size)
end

local DIVIDER_CONTROL_OPTIONS: { string } = {}
for _, case in DIVIDER_ORDER do
	table.insert(DIVIDER_CONTROL_OPTIONS, case.name)
end

local CONTAINED_CONTROL_OPTIONS: { string } = {}
for _, case in CONTAINED_ORDER do
	table.insert(CONTAINED_CONTROL_OPTIONS, case.name)
end

local function sizeFor(name: string): InputSize?
	return if name == UNSET_SIZE then nil else name :: InputSize
end

local function dividerFor(name: string): HasDivider
	for _, case in DIVIDER_ORDER do
		if case.name == name then
			return case.hasDivider
		end
	end
	return DIVIDER_ORDER[1].hasDivider
end

local function containmentFor(name: string): IsContained
	for _, case in CONTAINED_ORDER do
		if case.name == name then
			return case.isContained
		end
	end
	return CONTAINED_ORDER[1].isContained
end

local function paintsContainment(isContained: IsContained): boolean
	return not (if type(isContained) == "boolean" then isContained else isContained.isContained)
end

type BoundedListProps = {
	LayoutOrder: number?,
	hasDivider: HasDivider?,
	isContained: IsContained?,
	size: InputSize?,
	isPainted: boolean?,
	children: React.ReactNode?,
}

local function BoundedList(props: BoundedListProps): React.ReactNode
	return React.createElement(View, {
		tag = if props.isPainted then "col auto-y bg-surface-100" else "col auto-y",
		Size = UDim2.fromOffset(LIST_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		List = React.createElement(List.Root, {
			hasDivider = props.hasDivider,
			isContained = props.isContained,
			size = props.size,
			LayoutOrder = 1,
		}, props.children),
	})
end

local function fixtureRows(): { [string]: React.ReactNode }
	local rows: { [string]: React.ReactNode } = {}
	for index = 1, FIXTURE_ROW_COUNT do
		rows[`Row{index}`] = React.createElement(List.Item, {
			title = "Title",
			LayoutOrder = index,
		})
	end
	return rows
end

local function containmentDividerRows(): { MatrixGridRow }
	local rows: { MatrixGridRow } = {}
	for _, divider in DIVIDER_ORDER do
		local cells: { React.ReactNode } = {}
		for _, contained in CONTAINED_ORDER do
			table.insert(
				cells,
				React.createElement(BoundedList, {
					hasDivider = divider.hasDivider,
					isContained = contained.isContained,
					isPainted = paintsContainment(contained.isContained),
				}, fixtureRows())
			)
		end
		table.insert(rows, {
			label = matrixLabel(divider.name),
			cells = cells,
		})
	end
	return rows
end

local function sizeCells(): { React.ReactNode }
	local cells: { React.ReactNode } = {}
	for _, size in SIZE_ORDER do
		table.insert(
			cells,
			React.createElement(BoundedList, { size = size :: InputSize, isContained = true }, fixtureRows())
		)
	end
	return cells
end

type PlaygroundControls = {
	dividerPreset: string,
	containmentPreset: string,
	size: string,
}

local function MultiSelectExample(props: {
	LayoutOrder: number,
	inputType: "Toggle" | "Checkbox",
}): React.ReactNode
	local checked, setChecked = React.useState({ true, false } :: { boolean })

	local rows: { [string]: React.ReactNode } = {}
	for index = 1, CONTROLLED_ROW_COUNT do
		rows[`Row{index}`] = React.createElement(List.Item, {
			title = "Title",
			input = {
				type = props.inputType,
				isChecked = checked[index],
				onActivated = function(isChecked: boolean)
					local nextChecked = table.clone(checked)
					nextChecked[index] = isChecked
					setChecked(nextChecked)
				end,
			},
			LayoutOrder = index,
		})
	end

	return React.createElement(BoundedList, {
		LayoutOrder = props.LayoutOrder,
		isContained = true,
	}, rows)
end

local function RadioSelectExample(props: { LayoutOrder: number }): React.ReactNode
	local selected, setSelected = React.useState(1)

	local rows: { [string]: React.ReactNode } = {}
	for index = 1, CONTROLLED_ROW_COUNT do
		rows[`Row{index}`] = React.createElement(List.Item, {
			title = "Title",
			input = {
				type = ListItemInputType.Radio,
				isChecked = selected == index,
				onActivated = function(isChecked: boolean)
					if isChecked then
						setSelected(index)
					end
				end,
			},
			LayoutOrder = index,
		})
	end

	return React.createElement(BoundedList, {
		LayoutOrder = props.LayoutOrder,
		isContained = true,
	}, rows)
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Selection = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "Selection",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = { "Toggles", "Checkboxes", "Radio" },
				cellColumnWidth = LIST_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = {
					{
						cells = {
							React.createElement(MultiSelectExample, {
								LayoutOrder = 1,
								inputType = ListItemInputType.Toggle,
							}),
							React.createElement(MultiSelectExample, {
								LayoutOrder = 2,
								inputType = ListItemInputType.Checkbox,
							}),
							React.createElement(RadioSelectExample, { LayoutOrder = 3 }),
						},
					},
				},
			}),
		}),
	})
end

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls
	local isContained = containmentFor(controls.containmentPreset)

	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		List = React.createElement(BoundedList, {
			LayoutOrder = 1,
			hasDivider = dividerFor(controls.dividerPreset),
			isContained = isContained,
			size = sizeFor(controls.size),
			isPainted = paintsContainment(isContained),
		}, fixtureRows()),
	})
end

local function ContainmentStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Matrix = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "hasDivider × isContained",
			contentTag = "auto-xy",
		}, {
			Grid = React.createElement(MatrixGrid, {
				labelColumnWidth = 80,
				columnHeaders = CONTAINED_CONTROL_OPTIONS,
				cellColumnWidth = LIST_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = containmentDividerRows(),
			}),
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Size = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "Size",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = LIST_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = { { cells = sizeCells() } },
			}),
		}),
	})
end

local stories = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Sizing",
		story = SizingStory,
	},
	{
		name = "Containment",
		summary = "`hasDivider` and `isContained` share an edge: inset start follows `hasMargin` and the "
			.. "title, so they are signed off together.",
		story = ContainmentStory,
	},
}

if Flags.FoundationListItemDecoupledInput then
	table.insert(stories, 4, {
		name = "Controlled component",
		story = ControlledStory,
	})
end

return {
	summary = "A vertical list container. It draws the divider under each row, optionally frames the rows in a "
		.. "border, and publishes `size` to every row.",
	stories = stories,
	controls = {
		dividerPreset = DIVIDER_CONTROL_OPTIONS,
		containmentPreset = CONTAINED_CONTROL_OPTIONS,
		size = SIZE_CONTROL_OPTIONS,
	},
}
