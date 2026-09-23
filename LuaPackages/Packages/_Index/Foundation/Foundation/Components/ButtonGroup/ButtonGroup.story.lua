local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ButtonGroup = require(Foundation.Components.ButtonGroup)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Orientation = require(Foundation.Enums.Orientation)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid

type FillBehavior = FillBehavior.FillBehavior
type ButtonGroupSize = ButtonGroup.ButtonGroupSize
type Orientation = Orientation.Orientation
type ButtonGroupItem = ButtonGroup.ButtonGroupItem

type Controls = {
	orientation: Orientation,
	fillBehavior: FillBehavior?,
	size: ButtonGroupSize,
	buttonCount: number,
}

local SIZE_ORDER: { ButtonGroupSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
}

local LAYOUT_COLUMN_WIDTH = 280
local MODAL_WIDTH = 360
local OVERFLOW_CONTAINER_WIDTH = 520

local DEFAULT_BUTTONS: { ButtonGroupItem } = {
	{
		text = "Tertiary",
		variant = ButtonVariant.Standard,
		onActivated = function() end,
	},
	{
		text = "Secondary",
		variant = ButtonVariant.SoftEmphasis,
		onActivated = function() end,
	},
	{
		text = "Primary",
		variant = ButtonVariant.Emphasis,
		onActivated = function() end,
	},
}

local LONG_LABEL_BUTTONS: { ButtonGroupItem } = {
	{
		text = "This is a longer tertiary label",
		variant = ButtonVariant.Standard,
		onActivated = function() end,
	},
	{
		text = "This is a longer secondary label",
		variant = ButtonVariant.SoftEmphasis,
		onActivated = function() end,
	},
	{
		text = "This is a longer primary label",
		variant = ButtonVariant.Emphasis,
		onActivated = function() end,
	},
}

local BUTTON_COUNTS: { number } = { 2, 3 }

local ORIENTATION_ORDER: { Orientation } = {
	Orientation.Horizontal,
	Orientation.Vertical,
}

local FILL_BEHAVIOR_CONTROL: { FillBehavior } = {
	React.None,
	FillBehavior.Fit,
	FillBehavior.Fill,
} :: { FillBehavior }

local FILL_BEHAVIOR_ORDER: { FillBehavior } = {
	FillBehavior.Fit,
	FillBehavior.Fill,
}

local function makeButtons(count: number): { ButtonGroupItem }
	local buttons: { ButtonGroupItem } = {}
	local startIndex = #DEFAULT_BUTTONS - count + 1
	for index = 1, count do
		buttons[index] = DEFAULT_BUTTONS[startIndex + index - 1]
	end
	return buttons
end

local function needsBoundedContainer(orientation: Orientation, fillBehavior: FillBehavior?): boolean
	return orientation == Orientation.Vertical or fillBehavior == FillBehavior.Fill
end

local function Section(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	local headingChildren: { [string]: React.ReactNode } = {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
	}

	if props.note then
		headingChildren.Note = React.createElement(Text, {
			Text = props.note,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 2,
		})
	end

	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Heading = React.createElement(View, {
			tag = "col gap-xsmall size-full-0 auto-y",
			LayoutOrder = 1,
		}, headingChildren),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-top auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function MatrixGroupCell(props: {
	LayoutOrder: number?,
	orientation: Orientation?,
	size: ButtonGroupSize?,
	buttonCount: number,
})
	return React.createElement(View, {
		tag = "row size-full-0 auto-y",
		Size = UDim2.fromOffset(LAYOUT_COLUMN_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Group = React.createElement(ButtonGroup, {
			orientation = props.orientation or Orientation.Horizontal,
			size = props.size or InputSize.Medium,
			buttons = makeButtons(props.buttonCount),
			LayoutOrder = 1,
		}),
	})
end

local function LongLabelExample(props: {
	LayoutOrder: number,
	fillBehavior: FillBehavior,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		Size = UDim2.fromOffset(OVERFLOW_CONTAINER_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		FillBehaviorLabel = React.createElement(Text, {
			Text = props.fillBehavior :: string,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Container = React.createElement(View, {
			tag = "row size-full-0 auto-y padding-large radius-medium bg-surface-100",
			Size = UDim2.fromOffset(OVERFLOW_CONTAINER_WIDTH, 0),
			LayoutOrder = 2,
		}, {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				fillBehavior = props.fillBehavior,
				size = InputSize.Medium,
				buttons = LONG_LABEL_BUTTONS,
				LayoutOrder = 1,
			}),
		}),
	})
end

local function FillBehaviorMatrixCell(props: {
	LayoutOrder: number,
	fillBehavior: FillBehavior,
})
	return React.createElement(View, {
		tag = "row size-full-0 auto-y padding-large radius-medium bg-surface-100",
		Size = UDim2.fromOffset(LAYOUT_COLUMN_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Group = React.createElement(ButtonGroup, {
			orientation = Orientation.Horizontal,
			fillBehavior = props.fillBehavior,
			size = InputSize.Medium,
			buttons = makeButtons(2),
			LayoutOrder = 1,
		}),
	})
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls
	local fillBehavior: FillBehavior? = if controls.fillBehavior == React.None
		then nil
		else controls.fillBehavior :: FillBehavior
	local bounded = needsBoundedContainer(controls.orientation, fillBehavior)

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Group = React.createElement(View, {
			tag = if bounded then "size-full-0 auto-y" else "auto-xy",
			Size = if bounded then UDim2.fromOffset(MODAL_WIDTH, 0) else nil,
			LayoutOrder = 1,
		}, {
			Content = React.createElement(ButtonGroup, {
				orientation = controls.orientation,
				fillBehavior = fillBehavior,
				size = controls.size,
				buttons = makeButtons(controls.buttonCount),
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		ButtonCount = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Button count",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = Dash.map(BUTTON_COUNTS, function(buttonCount): string
					return `{buttonCount} buttons`
				end),
				cellColumnWidth = LAYOUT_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = {
					{
						cells = Dash.map(BUTTON_COUNTS, function(buttonCount)
							return React.createElement(MatrixGroupCell, {
								buttonCount = buttonCount,
							})
						end),
					},
				},
			}),
		}),
		Wrapping = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Wrapping",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(LongLabelExample, {
				LayoutOrder = 1,
				fillBehavior = FillBehavior.Fit,
			}),
		}),
		Truncation = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Truncation",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(LongLabelExample, {
				LayoutOrder = 1,
				fillBehavior = FillBehavior.Fill,
			}),
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = Dash.map(SIZE_ORDER, function(size): string
					return size
				end),
				cellColumnWidth = LAYOUT_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowAlign = "top",
				rows = {
					{
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(MatrixGroupCell, {
								size = size,
								buttonCount = 2,
							})
						end),
					},
				},
			}),
		}),
		FillBehavior = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Fill behavior",
				note = "fillBehavior only applies to horizontal orientation. Vertical buttons always stretch to full width.",
				contentTag = "row gap-xxlarge auto-xy",
			},
			Dash.map(FILL_BEHAVIOR_ORDER, function(fillBehavior, index)
				return React.createElement(View, {
					tag = "col align-x-left gap-small auto-xy",
					LayoutOrder = index,
				}, {
					Label = React.createElement(Text, {
						Text = fillBehavior :: string,
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						LayoutOrder = 1,
					}),
					Content = React.createElement(FillBehaviorMatrixCell, {
						LayoutOrder = 2,
						fillBehavior = fillBehavior,
					}),
				})
			end)
		),
	})
end

local function OrientationStory(): React.ReactNode
	return React.createElement(View, {
		tag = "size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			showLabelColumn = false,
			columnHeaders = Dash.map(ORIENTATION_ORDER, function(orientation): string
				return orientation
			end),
			cellColumnWidth = LAYOUT_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rowAlign = "top",
			rows = {
				{
					cells = Dash.map(ORIENTATION_ORDER, function(orientation)
						return React.createElement(MatrixGroupCell, {
							orientation = orientation,
							buttonCount = 2,
						})
					end),
				},
			},
		}),
	})
end

return {
	summary = "A wrapper for multiple, related buttons.",
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
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		orientation = ORIENTATION_ORDER,
		fillBehavior = FILL_BEHAVIOR_CONTROL,
		size = SIZE_ORDER,
		buttonCount = BUTTON_COUNTS,
	},
}
