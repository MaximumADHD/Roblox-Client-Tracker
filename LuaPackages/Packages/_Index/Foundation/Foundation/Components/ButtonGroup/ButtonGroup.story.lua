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
local matrixLabel = MatrixGridShared.matrixLabel

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

local LABEL_COLUMN_WIDTH = 90
local LAYOUT_COLUMN_WIDTH = 280
local MODAL_WIDTH = 360
local OVERFLOW_HUG_WIDTH = 720
local OVERFLOW_FILL_WIDTH = 400

local DEFAULT_BUTTONS: { ButtonGroupItem } = {
	{
		text = "Cancel",
		variant = ButtonVariant.Standard,
		onActivated = function() end,
	},
	{
		text = "Continue",
		variant = ButtonVariant.SoftEmphasis,
		onActivated = function() end,
	},
	{
		text = "Accept",
		variant = ButtonVariant.Emphasis,
		onActivated = function() end,
	},
}

local LONG_LABEL_BUTTONS: { ButtonGroupItem } = {
	{
		text = "Discard all changes and go back",
		variant = ButtonVariant.Standard,
		onActivated = function() end,
	},
	{
		text = "Save progress and close application",
		variant = ButtonVariant.SoftEmphasis,
		onActivated = function() end,
	},
	{
		text = "Confirm and continue to the next step",
		variant = ButtonVariant.Emphasis,
		onActivated = function() end,
	},
}

local BUTTON_COUNTS = { 2, 3 }

local ORIENTATION_ORDER: { Orientation } = {
	Orientation.Horizontal,
	Orientation.Vertical,
}

type FillBehaviorColumn = {
	label: string,
	fillBehavior: FillBehavior?,
}

local FILL_BEHAVIOR_COLUMNS: { FillBehaviorColumn } = {
	{
		label = "Hug",
		fillBehavior = nil,
	},
	{
		label = "Fill",
		fillBehavior = FillBehavior.Fill,
	},
}

local function makeButtons(count: number): { ButtonGroupItem }
	local buttons: { ButtonGroupItem } = {}
	for index = 1, count do
		buttons[index] = DEFAULT_BUTTONS[index]
	end
	return buttons
end

local function needsBoundedContainer(orientation: Orientation, fillBehavior: FillBehavior?): boolean
	return orientation == Orientation.Vertical or fillBehavior == FillBehavior.Fill
end

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
			tag = props.contentTag or "col gap-large size-full-0 auto-y",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function GroupContainer(props: {
	LayoutOrder: number?,
	orientation: Orientation,
	fillBehavior: FillBehavior?,
	size: ButtonGroupSize,
	buttonCount: number,
	containerWidth: number?,
})
	local bounded = needsBoundedContainer(props.orientation, props.fillBehavior)
	local width = props.containerWidth or LAYOUT_COLUMN_WIDTH

	return React.createElement(View, {
		tag = if bounded then "size-full-0 auto-y" else "auto-xy",
		Size = if bounded then UDim2.fromOffset(width, 0) else nil,
		LayoutOrder = props.LayoutOrder,
	}, {
		Group = React.createElement(ButtonGroup, {
			orientation = props.orientation,
			fillBehavior = props.fillBehavior,
			size = props.size,
			buttons = makeButtons(props.buttonCount),
		}),
	})
end

local function LabeledGroup(props: {
	label: string,
	LayoutOrder: number,
	size: ButtonGroupSize?,
	orientation: Orientation?,
	fillBehavior: FillBehavior?,
	buttonCount: number?,
})
	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Group = React.createElement(GroupContainer, {
			LayoutOrder = 2,
			orientation = props.orientation or Orientation.Horizontal,
			fillBehavior = props.fillBehavior,
			size = props.size or InputSize.Medium,
			buttonCount = props.buttonCount or 2,
		}),
	})
end

local function ButtonsMatrixCell(props: {
	LayoutOrder: number,
	orientation: Orientation,
	buttonCount: number,
})
	return React.createElement(View, {
		tag = "col align-x-left auto-xy",
		Size = UDim2.fromOffset(LAYOUT_COLUMN_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(GroupContainer, {
			orientation = props.orientation,
			fillBehavior = nil,
			size = InputSize.Medium,
			buttonCount = props.buttonCount,
		}),
	})
end

local function OverflowExampleCell(props: {
	LayoutOrder: number,
	column: FillBehaviorColumn,
})
	local isFill = props.column.fillBehavior == FillBehavior.Fill
	local fillBehaviorLabel = if isFill then "fillBehavior = Fill" else "fillBehavior = nil"
	local behaviorNote = if isFill then "Text truncates" else "Buttons wrap"
	local containerWidth = if isFill then OVERFLOW_FILL_WIDTH else OVERFLOW_HUG_WIDTH

	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		Size = UDim2.fromOffset(containerWidth, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		FillBehaviorLabel = React.createElement(Text, {
			Text = fillBehaviorLabel,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		BehaviorNote = React.createElement(Text, {
			Text = behaviorNote,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
		Container = React.createElement(View, {
			tag = if isFill
				then "size-full-0 auto-y padding-large radius-medium bg-surface-100"
				else "col align-x-left auto-y padding-large radius-medium bg-surface-100",
			Size = UDim2.fromOffset(containerWidth, 0),
			LayoutOrder = 3,
		}, {
			Group = React.createElement(ButtonGroup, {
				orientation = Orientation.Horizontal,
				fillBehavior = props.column.fillBehavior,
				size = InputSize.Medium,
				buttons = LONG_LABEL_BUTTONS,
			}),
		}),
	})
end

local function FillBehaviorMatrixCell(props: {
	LayoutOrder: number,
	orientation: Orientation,
	fillBehavior: FillBehavior?,
})
	return React.createElement(View, {
		tag = "col align-x-left auto-xy",
		Size = UDim2.fromOffset(LAYOUT_COLUMN_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Content = React.createElement(GroupContainer, {
			orientation = props.orientation,
			fillBehavior = props.fillBehavior,
			size = InputSize.Medium,
			buttonCount = 2,
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
		tag = "col gap-large size-full-0 auto-y",
	}, {
		Group = React.createElement(View, {
			tag = if bounded then "size-full-0 auto-y" else "auto-xy",
			Size = if bounded then UDim2.fromOffset(MODAL_WIDTH, 0) else nil,
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
		Buttons = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Buttons",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = LABEL_COLUMN_WIDTH,
				columnHeaders = Dash.map(BUTTON_COUNTS, function(buttonCount)
					return `{buttonCount} buttons`
				end),
				cellColumnWidth = LAYOUT_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = Dash.map(ORIENTATION_ORDER, function(orientation)
					return {
						label = matrixLabel(orientation :: string),
						cells = Dash.map(BUTTON_COUNTS, function(buttonCount)
							return React.createElement(ButtonsMatrixCell, {
								LayoutOrder = 1,
								orientation = orientation,
								buttonCount = buttonCount,
							})
						end),
					}
				end),
			}),
		}),
		Overflow = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Overflow",
			contentTag = "col gap-large align-x-left auto-xy",
		}, {
			Examples = React.createElement(
				View,
				{
					tag = "col align-x-left gap-xlarge auto-xy",
					LayoutOrder = 1,
				},
				Dash.map(FILL_BEHAVIOR_COLUMNS, function(column, index)
					return React.createElement(OverflowExampleCell, {
						LayoutOrder = index,
						column = column,
					})
				end)
			),
		}),
	})
end

local function SizingStory(): React.ReactNode
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
					orientation = Orientation.Horizontal,
					fillBehavior = nil,
					buttonCount = 2,
				})
			end)
		),
		FillBehavior = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Fill behavior",
				contentTag = "row gap-xxlarge auto-xy",
			},
			Dash.map(FILL_BEHAVIOR_COLUMNS, function(column, index)
				return React.createElement(View, {
					tag = "col align-x-left gap-small auto-xy",
					LayoutOrder = index,
				}, {
					Label = React.createElement(Text, {
						Text = column.label,
						tag = "auto-xy text-caption-small text-align-x-left content-muted",
						LayoutOrder = 1,
					}),
					Content = React.createElement(FillBehaviorMatrixCell, {
						LayoutOrder = 2,
						orientation = Orientation.Horizontal,
						fillBehavior = column.fillBehavior,
					}),
				})
			end)
		),
	})
end

local function OrientationStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row wrap gap-large auto-xy padding-y-large bg-surface-0",
		},
		Dash.map(ORIENTATION_ORDER, function(orientation, index)
			return React.createElement(LabeledGroup, {
				label = orientation :: string,
				LayoutOrder = index,
				orientation = orientation,
				fillBehavior = nil,
				size = InputSize.Medium,
				buttonCount = 2,
			})
		end)
	)
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
			summary = "fillBehavior only applies to horizontal orientation. Vertical buttons always stretch to full width.",
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
		orientation = {
			Orientation.Horizontal,
			Orientation.Vertical,
		} :: { Orientation },
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		},
		size = {
			InputSize.Medium,
			InputSize.Small,
			InputSize.XSmall,
		} :: { ButtonGroupSize },
		buttonCount = { 2, 3 },
	},
}
