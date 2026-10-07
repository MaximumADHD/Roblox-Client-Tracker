local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local RadioGroup = require(Foundation.Components.RadioGroup)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

type InputGroupSize = Types.InputGroupSize

local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG

local DEFAULT_SENTINEL = "Default" :: "Default"
type SizeControl = InputSize | "Default"
type PlacementControl = InputPlacement | "Default"
type RootSizeControl = InputGroupSize | "Default"

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
}

local PLAYGROUND_SIZE_OPTIONS: { SizeControl } = {
	"Default",
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local PLACEMENT_ORDER: { InputPlacement } = {
	InputPlacement.Start,
	InputPlacement.End,
}

local PLAYGROUND_PLACEMENT_OPTIONS: { PlacementControl } = {
	"Default",
	InputPlacement.Start,
	InputPlacement.End,
}

local PLAYGROUND_ROOT_SIZE_OPTIONS: { RootSizeControl } = {
	"Default",
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
}

local LABEL = "Label"
local HINT = "Hint text"
local LONG_LABEL = "This is a longer radio label than the container fits on a single line"
local LONG_HINT = "A longer hint that also runs past the width its container gives it"
local ITEM_VALUE = "A"

local LABEL_COLUMN_WIDTH = 150
local CELL_COLUMN_WIDTH = 170
local BOUNDED_WIDTH = 200

type StateFixture = {
	label: string,
	isChecked: boolean,
	hint: string?,
}

local STATE_ORDER: { StateFixture } = {
	{ label = "unchecked", isChecked = false },
	{ label = "checked", isChecked = true },
	{ label = "hint", isChecked = false, hint = HINT },
}

local SIZE_HEADERS = MatrixGridShared.enumHeaders(SIZE_ORDER)

local function omitSize(value: SizeControl?): InputSize?
	if value == nil or value == DEFAULT_SENTINEL then
		return nil
	end
	return value :: any
end

local function omitPlacement(value: PlacementControl?): InputPlacement?
	if value == nil or value == DEFAULT_SENTINEL then
		return nil
	end
	return value :: any
end

local function omitRootSize(value: RootSizeControl?): InputGroupSize?
	if value == nil or value == DEFAULT_SENTINEL then
		return nil
	end
	return value :: any
end

local function StaticItem(props: {
	LayoutOrder: number?,
	value: string?,
	label: string?,
	hint: string?,
	size: InputSize?,
	placement: InputPlacement?,
	isDisabled: boolean?,
	isChecked: boolean?,
}): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)
	local value = props.value or ITEM_VALUE

	return React.createElement(RadioGroup.Root, {
		key = tostring(remountKey),
		value = if props.isChecked then value else nil,
		onValueChanged = function()
			setRemountKey(function(key)
				return key + 1
			end)
		end,
		LayoutOrder = props.LayoutOrder,
	}, {
		Item = React.createElement(RadioGroup.Item, {
			value = value,
			label = props.label or LABEL,
			hint = props.hint,
			size = props.size,
			placement = props.placement,
			isDisabled = props.isDisabled,
		}),
	})
end

type PlaygroundControls = {
	rootSize: RootSizeControl?,
	rootPlacement: PlacementControl?,
	label: string,
	hint: string?,
	size: SizeControl,
	placement: PlacementControl,
	isChecked: boolean,
	isDisabled: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls
	local remountKey, setRemountKey = React.useState(0)
	local itemSize: InputSize? = omitSize(controls.size)
	local itemPlacement: InputPlacement? = omitPlacement(controls.placement)
	local rootSize: InputGroupSize? = omitRootSize(controls.rootSize)
	local rootPlacement: InputPlacement? = omitPlacement(controls.rootPlacement)

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Group = React.createElement(RadioGroup.Root, {
			key = `{remountKey}-{tostring(controls.isChecked)}`,
			value = if controls.isChecked then ITEM_VALUE else nil,
			size = rootSize,
			placement = rootPlacement,
			onValueChanged = function()
				setRemountKey(function(key)
					return key + 1
				end)
			end,
		}, {
			Item = React.createElement(RadioGroup.Item, {
				value = ITEM_VALUE,
				label = controls.label,
				hint = if controls.hint ~= nil and controls.hint ~= "" then controls.hint else nil,
				size = itemSize,
				placement = itemPlacement,
				isDisabled = controls.isDisabled,
			}),
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Item = React.createElement(StaticItem, {
						size = size,
					}),
				})
			end)
		),
	})
end

local function PlacementStory()
	return React.createElement(
		View,
		{
			tag = `row wrap gap-large auto-xy {STORY_FRAME_TAG}`,
		},
		Dash.map(PLACEMENT_ORDER, function(placement, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = placement,
			}, {
				Item = React.createElement(StaticItem, {
					placement = placement,
				}),
			})
		end)
	)
end

local function stateItem(fixture: StateFixture, size: InputSize?, isDisabled: boolean?)
	return React.createElement(StaticItem, {
		label = LABEL,
		hint = fixture.hint,
		isChecked = fixture.isChecked,
		isDisabled = isDisabled,
		size = size,
	})
end

local function StatesStory()
	local fixtures = STATE_ORDER

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Selection = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = true,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = Dash.map(fixtures, function(fixture): MatrixGridRow
				return {
					label = matrixLabel(fixture.label),
					cells = Dash.map(SIZE_ORDER, function(size)
						return stateItem(fixture, size)
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
					Item = stateItem(fixture, nil, true),
				})
			end)
		),
	})
end

local function ContentStory()
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
						Item = React.createElement(StaticItem, {
							label = LONG_LABEL,
							hint = LONG_HINT,
							placement = placement,
						}),
					}),
				})
			end)
		),
	})
end

type StoryEntry = {
	name: string,
	story: unknown,
}

local stories: { StoryEntry } = {
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
		name = "Content",
		story = ContentStory,
	},
}

local controls: { [string]: unknown } = {
	label = LABEL,
	size = PLAYGROUND_SIZE_OPTIONS,
	placement = PLAYGROUND_PLACEMENT_OPTIONS,
	isChecked = false,
	isDisabled = false,
	hint = HINT,
	rootSize = PLAYGROUND_ROOT_SIZE_OPTIONS,
	rootPlacement = PLAYGROUND_PLACEMENT_OPTIONS,
}

return {
	summary = "RadioGroup.Item is one exclusive choice in a RadioGroup, with an optional label and hint beside the control.",
	stories = stories,
	controls = controls,
}
