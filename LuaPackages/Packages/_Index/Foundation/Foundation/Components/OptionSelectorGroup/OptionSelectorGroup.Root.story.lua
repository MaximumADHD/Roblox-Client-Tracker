local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local OptionSelectorGroup = require(Foundation.Components.OptionSelectorGroup)
local OptionSelectorGroupSize = require(Foundation.Enums.OptionSelectorGroupSize)
local Orientation = require(Foundation.Enums.Orientation)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type FillBehavior = FillBehavior.FillBehavior
type OptionSelectorGroupSize = OptionSelectorGroupSize.OptionSelectorGroupSize
type Orientation = Orientation.Orientation

local SIZE_ORDER: { OptionSelectorGroupSize } = {
	OptionSelectorGroupSize.XSmall,
	OptionSelectorGroupSize.Small,
	OptionSelectorGroupSize.Medium,
}

local PLAYGROUND_SIZE_OPTIONS = {
	React.None,
	OptionSelectorGroupSize.XSmall,
	OptionSelectorGroupSize.Small,
	OptionSelectorGroupSize.Medium,
}

local PLAYGROUND_FILL_BEHAVIOR_OPTIONS = {
	React.None,
	FillBehavior.Fit,
	FillBehavior.Fill,
}

local ORIENTATION_ORDER: { Orientation } = {
	Orientation.Vertical,
	Orientation.Horizontal,
}

local ITEM_VALUES = { "Option A", "Option B", "Option C" }
-- Varied lengths so wrapping / taller items show up in Orientation and Sizing stories.
local ITEM_DESCRIPTIONS = {
	"Description",
	"A little bit longer description",
}

local GROUP_COLUMN_WIDTH = 280

local function Section(props: {
	LayoutOrder: number,
	name: string,
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
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function makeItems(props: {
	count: number?,
	withDescriptions: boolean?,
})
	local count = props.count or #ITEM_VALUES
	local items: { [string]: React.ReactNode } = {}

	for index = 1, count do
		local value = ITEM_VALUES[index]

		items[`Item-{value}`] = React.createElement(OptionSelectorGroup.Item, {
			value = value,
			label = value,
			description = if props.withDescriptions then ITEM_DESCRIPTIONS[index] else nil,
			LayoutOrder = index,
		})
	end

	return items
end

local function GroupExample(
	props: {
		LayoutOrder: number?,
		orientation: Orientation?,
		value: string?,
		onValueChanged: ((string) -> ())?,
		size: OptionSelectorGroupSize?,
		legend: string?,
		itemCount: number?,
		fillBehavior: FillBehavior?,
		containerWidth: number?,
		-- Draws a surface behind the bounded parent so Fill vs Fit sizing is easier to see.
		parentSurface: boolean?,
		withDescriptions: boolean?,
	}
)
	local orientation: Orientation = props.orientation or Orientation.Vertical
	local needsBoundedWidth = orientation == Orientation.Vertical
		or props.fillBehavior == FillBehavior.Fill
		or props.containerWidth ~= nil

	local wrapperTag = if needsBoundedWidth then "size-full-0 auto-y" else "auto-xy"
	if props.parentSurface then
		wrapperTag = `{wrapperTag} bg-surface-100 radius-medium padding-large`
	end

	return React.createElement(View, {
		tag = wrapperTag,
		Size = if needsBoundedWidth then UDim2.fromOffset(props.containerWidth or GROUP_COLUMN_WIDTH, 0) else nil,
		LayoutOrder = props.LayoutOrder,
	}, {
		Group = React.createElement(
			OptionSelectorGroup.Root,
			{
				value = props.value,
				onValueChanged = props.onValueChanged or Dash.noop,
				orientation = orientation,
				size = props.size,
				fillBehavior = props.fillBehavior,
				legend = props.legend,
				Selectable = true,
			},
			makeItems({
				count = props.itemCount,
				withDescriptions = props.withDescriptions,
			})
		),
	})
end

local function LabeledGroup(props: {
	label: string,
	LayoutOrder: number,
	orientation: Orientation?,
	value: string?,
	size: OptionSelectorGroupSize?,
	legend: string?,
	itemCount: number?,
	fillBehavior: FillBehavior?,
	containerWidth: number?,
	parentSurface: boolean?,
	note: string?,
	withDescriptions: boolean?,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Note = if props.note ~= nil
			then React.createElement(Text, {
				Text = props.note,
				tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
				Size = UDim2.fromOffset(props.containerWidth or GROUP_COLUMN_WIDTH, 0),
				LayoutOrder = 2,
			})
			else nil,
		Group = React.createElement(GroupExample, {
			LayoutOrder = 3,
			orientation = props.orientation,
			value = props.value,
			size = props.size,
			legend = props.legend,
			itemCount = props.itemCount,
			fillBehavior = props.fillBehavior,
			containerWidth = props.containerWidth,
			parentSurface = props.parentSurface,
			withDescriptions = props.withDescriptions,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		orientation: Orientation,
		size: OptionSelectorGroupSize?,
		fillBehavior: FillBehavior?,
		legend: string,
	},
})
	local controls = props.controls
	local isHorizontal = controls.orientation == Orientation.Horizontal

	return React.createElement(GroupExample, {
		orientation = controls.orientation,
		size = if controls.size == React.None then nil else controls.size :: OptionSelectorGroupSize?,
		fillBehavior = if controls.fillBehavior == React.None then nil else controls.fillBehavior :: FillBehavior?,
		legend = if #controls.legend > 0 then controls.legend else nil,
		onValueChanged = Dash.noop,
		itemCount = 2,
		containerWidth = if isHorizontal then GROUP_COLUMN_WIDTH * 2 else nil,
		parentSurface = isHorizontal,
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
				contentTag = "row gap-large auto-xy wrap",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledGroup, {
					label = size :: string,
					LayoutOrder = index,
					size = size,
					orientation = Orientation.Vertical,
					itemCount = 2,
				})
			end)
		),
		FillBehavior = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Fill behavior",
			contentTag = "col gap-large align-x-left size-full-0 auto-y",
		}, {
			Fit = React.createElement(LabeledGroup, {
				label = "Fit",
				LayoutOrder = 1,
				orientation = Orientation.Horizontal,
				itemCount = 2,
				fillBehavior = FillBehavior.Fit,
				containerWidth = 560,
				parentSurface = true,
			}),
			Fill = React.createElement(LabeledGroup, {
				label = "Fill",
				LayoutOrder = 2,
				orientation = Orientation.Horizontal,
				itemCount = 2,
				fillBehavior = FillBehavior.Fill,
				containerWidth = 560,
				parentSurface = true,
			}),
		}),
	})
end

local FILL_BEHAVIOR_ORDER: { { label: string, value: FillBehavior } } = {
	{ label = "Fit", value = FillBehavior.Fit },
	{ label = "Fill", value = FillBehavior.Fill },
}

local ORIENTATION_MATRIX_LABEL_WIDTH = 90
local ORIENTATION_MATRIX_CELL_WIDTH = 400

local function OrientationStory()
	local headerCells: { [string]: React.ReactNode } = {
		Corner = React.createElement(View, {
			Size = UDim2.fromOffset(ORIENTATION_MATRIX_LABEL_WIDTH, 0),
			LayoutOrder = 1,
		}),
	}
	for columnIndex, fill in FILL_BEHAVIOR_ORDER do
		headerCells[`Header-{fill.label}`] = React.createElement(Text, {
			Text = `fillBehavior = {fill.label}`,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			Size = UDim2.fromOffset(ORIENTATION_MATRIX_CELL_WIDTH, 0),
			LayoutOrder = columnIndex + 1,
		})
	end

	local rows = Dash.map(ORIENTATION_ORDER, function(orientation, rowIndex)
		local cells: { [string]: React.ReactNode } = {
			Label = React.createElement(Text, {
				Text = orientation :: string,
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				Size = UDim2.fromOffset(ORIENTATION_MATRIX_LABEL_WIDTH, 0),
				LayoutOrder = 1,
			}),
		}
		for columnIndex, fill in FILL_BEHAVIOR_ORDER do
			cells[`Cell-{fill.label}`] = React.createElement(GroupExample, {
				LayoutOrder = columnIndex + 1,
				orientation = orientation,
				onValueChanged = Dash.noop,
				itemCount = 2,
				fillBehavior = fill.value,
				containerWidth = ORIENTATION_MATRIX_CELL_WIDTH,
				parentSurface = true,
				withDescriptions = true,
			})
		end
		return React.createElement(View, {
			tag = "row gap-large auto-xy",
			LayoutOrder = rowIndex + 1,
		}, cells)
	end)

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Note = React.createElement(Text, {
			Text = "A horizontal OptionSelectorGroup lays its items out in a single row and does not wrap: items that don't fit overflow the parent instead of moving to a new line.",
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Header = React.createElement(View, {
			tag = "row align-y-center gap-large auto-xy",
			LayoutOrder = 2,
		}, headerCells),
		Rows = React.createElement(View, {
			tag = "col gap-large auto-xy",
			LayoutOrder = 3,
		}, rows),
		NoWrap = React.createElement(LabeledGroup, {
			label = "No wrap (horizontal)",
			LayoutOrder = 4,
			orientation = Orientation.Horizontal,
			itemCount = 3,
			fillBehavior = FillBehavior.Fit,
			containerWidth = 240,
			parentSurface = true,
			note = "The parent (gray) is too narrow for all three items, so the row overflows to the right instead of wrapping onto a new line.",
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Legend = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Legend",
				contentTag = "row gap-large auto-xy wrap",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledGroup, {
					label = size :: string,
					LayoutOrder = index,
					size = size,
					legend = "Legend",
					orientation = Orientation.Vertical,
					itemCount = 2,
				})
			end)
		),
	})
end

local function ControlledExample()
	local value, setValue = React.useState(nil :: string?)

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
	}, {
		Group = React.createElement(GroupExample, {
			LayoutOrder = 1,
			value = value,
			onValueChanged = function(newValue: string)
				setValue(newValue)
			end,
			itemCount = 3,
		}),
		Readout = React.createElement(Text, {
			Text = `Selected: {value or "none"}`,
			tag = "auto-xy text-body-medium text-align-x-left content-emphasis",
			LayoutOrder = 2,
		}),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Controlled = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Selection updates value",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(ControlledExample),
		}),
	})
end

return {
	summary = "A single-choice list of options laid out vertically or horizontally. Selecting an option deselects the previous one; selecting the same option again clears the selection.",
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
			name = "Orientation",
			story = OrientationStory,
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
		orientation = ORIENTATION_ORDER,
		size = PLAYGROUND_SIZE_OPTIONS,
		fillBehavior = PLAYGROUND_FILL_BEHAVIOR_OPTIONS,
		legend = "",
	},
}
