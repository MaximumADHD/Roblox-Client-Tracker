local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Checkbox = require(Foundation.Components.Checkbox)
local Flags = require(Foundation.Utility.Flags)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local View = require(Foundation.Components.View)

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local PLACEMENT_ORDER: { InputPlacement } = {
	InputPlacement.Start,
	InputPlacement.End,
}

local LABEL = "Label"
local HINT = "Hint text"
local LONG_LABEL = "This is a longer checkbox label than the container fits on a single line"
local LONG_HINT = "A longer hint that also runs past the width its container gives it"

local LABEL_COLUMN_WIDTH = 150
local CELL_COLUMN_WIDTH = 170
local BOUNDED_WIDTH = 200

type StateFixture = {
	label: string,
	isChecked: boolean?,
	isIndeterminate: boolean?,
	isDisabled: boolean?,
	hint: string?,
}

local STATE_ORDER: { StateFixture } = {
	{ label = "unchecked" },
	{ label = "checked", isChecked = true },
	{ label = "indeterminate", isIndeterminate = true },
	{ label = "isDisabled", isDisabled = true },
	{ label = "isDisabled · checked", isChecked = true, isDisabled = true },
	{ label = "isDisabled · indeterminate", isIndeterminate = true, isDisabled = true },
}

local HINT_FIXTURE: StateFixture = { label = "hint", hint = HINT }

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local function noop() end

type PlaygroundControls = {
	label: string,
	hint: string,
	size: InputSize,
	placement: InputPlacement,
	isChecked: boolean,
	isIndeterminate: boolean,
	isDisabled: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Checkbox = React.createElement(Checkbox, {
			label = controls.label,
			hint = if Flags.FoundationCheckboxBeta and controls.hint ~= "" then controls.hint else nil,
			isChecked = controls.isChecked,
			isIndeterminate = controls.isIndeterminate,
			isDisabled = controls.isDisabled,
			size = controls.size,
			placement = controls.placement,
			onActivated = noop,
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			contentTag = "auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = CELL_COLUMN_WIDTH,
				rows = {
					{
						label = matrixLabel(""),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(Checkbox, {
								label = LABEL,
								size = size,
								onActivated = noop,
							})
						end),
					},
				},
			}),
		}),
	})
end

local function PlacementStory()
	return React.createElement(
		View,
		{
			tag = `row align-y-top gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
		},
		Dash.map(PLACEMENT_ORDER, function(placement, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = placement,
			}, {
				Checkbox = React.createElement(Checkbox, {
					label = LABEL,
					placement = placement,
					onActivated = noop,
				}),
			})
		end)
	)
end

local function stateCheckbox(fixture: StateFixture, size: InputSize)
	return React.createElement(Checkbox, {
		label = LABEL,
		hint = fixture.hint,
		isChecked = fixture.isChecked,
		isIndeterminate = fixture.isIndeterminate,
		isDisabled = fixture.isDisabled,
		size = size,
		onActivated = noop,
	})
end

local function StatesStory()
	local fixtures = table.clone(STATE_ORDER)

	if Flags.FoundationCheckboxBeta then
		table.insert(fixtures, HINT_FIXTURE)
	end

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = true,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = Dash.map(fixtures, function(fixture): MatrixGridRow
				return {
					label = matrixLabel(fixture.label),
					cells = Dash.map(SIZE_ORDER, function(size)
						return stateCheckbox(fixture, size)
					end),
				}
			end),
		}),
	})
end

local function ControlledExample(props: {
	LayoutOrder: number,
})
	local isChecked, setIsChecked = React.useState(false)

	return React.createElement(Checkbox, {
		label = LABEL,
		isChecked = isChecked,
		onActivated = setIsChecked,
		LayoutOrder = props.LayoutOrder,
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Example = React.createElement(ControlledExample, { LayoutOrder = 1 }),
	})
end

local function ContentStory()
	local hint = if Flags.FoundationCheckboxBeta then LONG_HINT else nil

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Wrapping = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Wrapping",
			},
			Dash.map(PLACEMENT_ORDER, function(placement, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = placement,
				}, {
					Frame = React.createElement(View, {
						tag = "auto-y",
						Size = UDim2.fromOffset(BOUNDED_WIDTH, 0),
					}, {
						Checkbox = React.createElement(Checkbox, {
							label = LONG_LABEL,
							hint = hint,
							placement = placement,
							onActivated = noop,
						}),
					}),
				})
			end)
		),
	})
end

local controls: { [string]: unknown } = Dash.join({
	label = LABEL,
	size = SIZE_ORDER,
	placement = PLACEMENT_ORDER,
	isChecked = false,
	isIndeterminate = false,
	isDisabled = false,
}, if Flags.FoundationCheckboxBeta then { hint = HINT } else {})

return {
	summary = "Checkbox turns a single boolean on or off, with an optional label and hint beside it.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Placement",
			story = PlacementStory,
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
	controls = controls,
}
