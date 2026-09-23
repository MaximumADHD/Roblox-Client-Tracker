local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Text = require(Foundation.Components.Text)
local Toggle = require(Foundation.Components.Toggle)
local View = require(Foundation.Components.View)

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local STORY_FRAME_TAG = "padding-y-large bg-surface-0"

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
local LONG_LABEL = "This is a longer toggle label than the container fits on a single line"
local LONG_HINT = "A longer hint that also runs past the width its container gives it"

local LABEL_COLUMN_WIDTH = 150
local CELL_COLUMN_WIDTH = 170
local BOUNDED_WIDTH = 200

type StateFixture = {
	label: string,
	isChecked: boolean,
	hint: string?,
}

local STATE_ORDER: { StateFixture } = {
	{ label = "isChecked = false", isChecked = false },
	{ label = "isChecked = true", isChecked = true },
}

local HINT_FIXTURE: StateFixture = { label = "hint", isChecked = false, hint = HINT }

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local function noop(_value: boolean) end

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
				tag = "auto-xy text-body-small content-muted",
				LayoutOrder = 2,
			})
			else nil,
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-top auto-xy wrap",
			LayoutOrder = 3,
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

local function BoundedFrame(props: {
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "auto-y",
		Size = UDim2.fromOffset(BOUNDED_WIDTH, 0),
	}, props.children)
end

local function StoryMatrixGrid(props: {
	LayoutOrder: number,
	showLabelColumn: boolean?,
	columnHeaders: { string },
	rows: { MatrixGridRow },
})
	return React.createElement(View, {
		tag = "auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(MatrixGrid, {
			showLabelColumn = if props.showLabelColumn == nil then true else props.showLabelColumn,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = props.columnHeaders,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = props.rows,
		}),
	})
end

type PlaygroundControls = {
	label: string,
	hint: string?,
	size: InputSize,
	placement: InputPlacement,
	isChecked: boolean,
	isDisabled: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Toggle = React.createElement(Toggle, {
			label = controls.label,
			hint = if Flags.FoundationToggleBetaUpdate and controls.hint ~= "" then controls.hint else nil,
			isChecked = controls.isChecked,
			isDisabled = controls.isDisabled,
			size = controls.size,
			placement = controls.placement,
			onActivated = noop,
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col auto-xy {STORY_FRAME_TAG}`,
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
				rows = {
					{
						label = matrixLabel(""),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(Toggle, {
								label = LABEL,
								size = size,
								isChecked = false,
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
				Toggle = React.createElement(Toggle, {
					label = LABEL,
					placement = placement,
					isChecked = false,
					onActivated = noop,
				}),
			})
		end)
	)
end

local function stateToggle(fixture: StateFixture, size: InputSize?, isDisabled: boolean?)
	return React.createElement(Toggle, {
		label = LABEL,
		hint = fixture.hint,
		isChecked = fixture.isChecked,
		isDisabled = isDisabled,
		size = size,
		onActivated = noop,
	})
end

local function StatesStory()
	local fixtures = table.clone(STATE_ORDER)

	if Flags.FoundationToggleBetaUpdate then
		table.insert(fixtures, HINT_FIXTURE)
	end

	return React.createElement(View, {
		tag = `col gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			columnHeaders = SIZE_HEADERS,
			rows = Dash.map(fixtures, function(fixture): MatrixGridRow
				return {
					label = matrixLabel(fixture.label),
					cells = Dash.map(SIZE_ORDER, function(size)
						return stateToggle(fixture, size)
					end),
				}
			end),
		}),
		Disabled = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Disabled",
			},
			Dash.map(fixtures, function(fixture, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = fixture.label,
				}, {
					Toggle = stateToggle(fixture, nil, true),
				})
			end)
		),
	})
end

local function ControlledExample(props: {
	LayoutOrder: number,
})
	local isChecked, setIsChecked = React.useState(false)

	return React.createElement(Toggle, {
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

local function wrappingCells(): { React.ReactNode }
	local hint = if Flags.FoundationToggleBetaUpdate then LONG_HINT else nil

	return Dash.map(PLACEMENT_ORDER, function(placement, index)
		return React.createElement(LabeledCell, {
			LayoutOrder = index,
			label = placement,
		}, {
			Frame = React.createElement(BoundedFrame, {}, {
				Toggle = React.createElement(Toggle, {
					label = LONG_LABEL,
					hint = hint,
					placement = placement,
					isChecked = false,
					onActivated = noop,
				}),
			}),
		})
	end)
end

local function ContentStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, {
		Wrapping = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Wrapping",
		}, wrappingCells()),
	})
end

local controls: { [string]: unknown } = Dash.join({
	label = LABEL,
	size = SIZE_ORDER,
	placement = PLACEMENT_ORDER,
	isChecked = false,
	isDisabled = false,
}, if Flags.FoundationToggleBetaUpdate then { hint = HINT } else {})

return {
	summary = "Toggle turns a single boolean on or off, with an optional label and hint beside it.",
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
