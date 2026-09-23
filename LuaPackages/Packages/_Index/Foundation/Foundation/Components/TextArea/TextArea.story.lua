local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local StorySection = require(Foundation.Utility.Stories.Shared.StorySection).StorySection
local Text = require(Foundation.Components.Text)
local TextArea = require(Foundation.Components.TextArea)
local View = require(Foundation.Components.View)

local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)

type InputFocusBehavior = InputFocusBehavior.InputFocusBehavior
type InputSize = InputSize.InputSize
type InputVariant = InputVariant.InputVariant
type TextAreaElementProps = TextArea.TextAreaProps & { key: string? }

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local VARIANT_ORDER: { InputVariant } = {
	InputVariant.Standard,
	InputVariant.Contrast,
	InputVariant.Utility,
}

local FOCUS_BEHAVIOR_ORDER: { InputFocusBehavior } = {
	InputFocusBehavior.Clear,
	InputFocusBehavior.Highlight,
}

-- An optional prop is driven by an option list whose first entry is React.None, the
-- storybook sentinel for "leave the prop unset", so the list is wider than the prop.
type ControlOption<T> = T | typeof(React.None)

local FOCUS_BEHAVIOR_CONTROL_OPTIONS: { ControlOption<InputFocusBehavior> } = {
	React.None,
	table.unpack(FOCUS_BEHAVIOR_ORDER),
}
local IS_REQUIRED_CONTROL_OPTIONS: { ControlOption<boolean> } = { React.None, false, true }

local LABEL_TEXT = "Label"
local HINT_TEXT = "Hint"
local PLACEHOLDER_TEXT = "Placeholder"
local VALUE_TEXT = "Value"
local WRAPPING_TEXT = "This is a longer value that runs past one line and wraps inside the text area."
local OVERFLOW_TEXT = "This is a much longer value. It runs well past the lines the text area shows at once, "
	.. "so the box keeps its height and the content scrolls instead. Keep typing to move the cursor past the "
	.. "last visible line and watch the view follow it."

local STORY_PAGE_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local SWEEP_TAG = "col gap-xlarge size-full-0 auto-y"
local SWEEP_ROW_TAG = "row wrap align-y-top gap-large size-full-0 auto-y"
local SWEEP_ROW_PAGE_TAG = "row wrap align-y-top gap-large size-full-0 auto-y padding-y-large bg-surface-0"
local WIDTH_FRAME_WIDTH = 600
local SWEEP_CELL_WIDTH = 240

local WIDTH_EXAMPLES: { { label: string, width: UDim } } = {
	{ label = "Fixed", width = UDim.new(0, 240) },
	{ label = "Fill", width = UDim.new(1, 0) },
}

local NUM_LINES_EXAMPLES: { { label: string, numLines: number? } } = {
	{ label = "numLines = 1", numLines = 1 },
	{ label = "default (3)", numLines = nil },
	{ label = "numLines = 6", numLines = 6 },
}

local function noop() end

type StaticTextAreaProps = {
	text: string,
	label: string?,
	hint: string?,
	placeholder: string?,
	size: InputSize?,
	variant: InputVariant?,
	width: UDim?,
	numLines: number?,
	hasClearButton: boolean?,
	hasError: boolean?,
	isDisabled: boolean?,
	isRequired: boolean?,
	LayoutOrder: number?,
}

-- Snaps the cell back to its seeded props once a reviewer types into it, so a static
-- matrix keeps documenting the props it was authored with.
local function StaticTextArea(props: StaticTextAreaProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		TextArea,
		Dash.join(
			{
				label = "",
			},
			props,
			{
				key = tostring(remountKey),
				onChanged = function()
					setRemountKey(function(key)
						return key + 1
					end)
				end,
			}
		) :: TextAreaElementProps
	)
end

-- A cell here is a whole input field, so a swept axis laid out as a MatrixGrid header
-- row runs wider than any screen. Each cell carries its own caption instead.
local function LabeledCell(props: { LayoutOrder: number, label: string, children: React.ReactNode? })
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
			tag = "col auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function WidthFrame(props: { children: React.ReactNode? })
	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-medium radius-medium bg-surface-100",
		Size = UDim2.fromOffset(WIDTH_FRAME_WIDTH, 0),
	}, props.children)
end

type PlaygroundControls = {
	text: string,
	label: string,
	hint: string,
	placeholder: string,
	size: InputSize,
	variant: InputVariant,
	numLines: number,
	widthOffset: number,
	focusBehavior: ControlOption<InputFocusBehavior>,
	hasClearButton: boolean,
	hasError: boolean,
	isDisabled: boolean,
	isRequired: ControlOption<boolean>,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Input = React.createElement(TextArea, {
			LayoutOrder = 1,
			text = controls.text,
			onChanged = noop,
			label = controls.label,
			hint = if controls.hint == "" then nil else controls.hint,
			placeholder = if controls.placeholder == "" then nil else controls.placeholder,
			size = controls.size,
			variant = controls.variant,
			numLines = controls.numLines,
			width = if controls.widthOffset == 0 then nil else UDim.new(0, controls.widthOffset),
			focusBehavior = if controls.focusBehavior == React.None
				then nil
				else controls.focusBehavior :: InputFocusBehavior,
			hasClearButton = controls.hasClearButton,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
			isRequired = if controls.isRequired == React.None then nil else controls.isRequired :: boolean,
		}),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = SWEEP_ROW_PAGE_TAG,
		},
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(
				LabeledCell,
				{ LayoutOrder = index, label = variant },
				React.createElement(StaticTextArea, {
					text = VALUE_TEXT,
					variant = variant,
					width = UDim.new(0, SWEEP_CELL_WIDTH),
				})
			)
		end)
	)
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_PAGE_TAG,
	}, {
		Size = React.createElement(
			StorySection,
			{
				LayoutOrder = 1,
				caption = "Size",
				note = "size drives the label typography as well as the field, so both scale together. Cells share one width so only the scaling differs.",
				contentTag = SWEEP_ROW_TAG,
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(
					LabeledCell,
					{ LayoutOrder = index, label = size },
					React.createElement(StaticTextArea, {
						text = VALUE_TEXT,
						label = LABEL_TEXT,
						size = size,
						width = UDim.new(0, SWEEP_CELL_WIDTH),
					})
				)
			end)
		),
		Width = React.createElement(
			StorySection,
			{
				LayoutOrder = 2,
				caption = "Width",
				note = "Omitting width falls back to a 400px footprint scaled for the platform. Cells sit in a 600px frame so Fill has a parent to fill.",
				contentTag = SWEEP_TAG,
			},
			Dash.map(WIDTH_EXAMPLES, function(example, index)
				return React.createElement(
					LabeledCell,
					{ LayoutOrder = index, label = example.label },
					React.createElement(
						WidthFrame,
						{},
						React.createElement(StaticTextArea, {
							text = VALUE_TEXT,
							width = example.width,
							LayoutOrder = 1,
						})
					)
				)
			end)
		),
		Height = React.createElement(
			StorySection,
			{
				LayoutOrder = 3,
				caption = "Height",
				note = "numLines fixes how many lines the field shows at once; anything longer scrolls. A single line drops the multi-line treatment entirely.",
				contentTag = SWEEP_ROW_TAG,
			},
			Dash.map(NUM_LINES_EXAMPLES, function(example, index)
				return React.createElement(
					LabeledCell,
					{ LayoutOrder = index, label = example.label },
					React.createElement(StaticTextArea, {
						text = VALUE_TEXT,
						numLines = example.numLines,
						width = UDim.new(0, SWEEP_CELL_WIDTH),
					})
				)
			end)
		),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = SWEEP_ROW_PAGE_TAG,
	}, {
		Disabled = React.createElement(
			LabeledCell,
			{ LayoutOrder = 1, label = "isDisabled" },
			React.createElement(StaticTextArea, {
				text = VALUE_TEXT,
				label = LABEL_TEXT,
				isDisabled = true,
				width = UDim.new(0, SWEEP_CELL_WIDTH),
			})
		),
		Hint = React.createElement(
			LabeledCell,
			{ LayoutOrder = 2, label = "hint" },
			React.createElement(StaticTextArea, {
				text = VALUE_TEXT,
				label = LABEL_TEXT,
				hint = HINT_TEXT,
				width = UDim.new(0, SWEEP_CELL_WIDTH),
			})
		),
		Error = React.createElement(
			LabeledCell,
			{ LayoutOrder = 3, label = "Error" },
			React.createElement(StaticTextArea, {
				text = VALUE_TEXT,
				label = LABEL_TEXT,
				hint = HINT_TEXT,
				hasError = true,
				width = UDim.new(0, SWEEP_CELL_WIDTH),
			})
		),
		Required = React.createElement(
			LabeledCell,
			{ LayoutOrder = 4, label = "Required" },
			React.createElement(StaticTextArea, {
				text = VALUE_TEXT,
				label = LABEL_TEXT,
				isRequired = true,
				width = UDim.new(0, SWEEP_CELL_WIDTH),
			})
		),
	})
end

local function ControlledStory(): React.ReactNode
	local text, setText = React.useState("")

	local function onChanged(newText: string)
		setText(newText)
	end

	return React.createElement(View, {
		tag = "col size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Input = React.createElement(TextArea, {
			LayoutOrder = 1,
			text = text,
			onChanged = onChanged,
			label = "",
			placeholder = PLACEHOLDER_TEXT,
			hasClearButton = true,
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_PAGE_TAG,
	}, {
		Wrapping = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "Wrapping",
			contentTag = SWEEP_TAG,
		}, {
			LongValue = React.createElement(
				LabeledCell,
				{ LayoutOrder = 1, label = "long value" },
				React.createElement(StaticTextArea, {
					text = WRAPPING_TEXT,
				})
			),
		}),
		Overflow = React.createElement(StorySection, {
			LayoutOrder = 2,
			caption = "Overflow",
			note = "Past numLines the field keeps its height and scrolls.",
			contentTag = SWEEP_TAG,
		}, {
			LongValue = React.createElement(
				LabeledCell,
				{ LayoutOrder = 1, label = "value longer than numLines" },
				React.createElement(StaticTextArea, {
					text = OVERFLOW_TEXT,
				})
			),
		}),
		ClearButton = React.createElement(StorySection, {
			LayoutOrder = 3,
			caption = "Clear button",
			note = "The clear affordance is only rendered while the field holds text, so the cell is seeded. Clearing is in Controlled component.",
			contentTag = SWEEP_TAG,
		}, {
			Present = React.createElement(
				LabeledCell,
				{ LayoutOrder = 1, label = "hasClearButton = true" },
				React.createElement(StaticTextArea, {
					text = VALUE_TEXT,
					hasClearButton = true,
				})
			),
		}),
		Placeholder = React.createElement(StorySection, {
			LayoutOrder = 4,
			caption = "Placeholder",
			contentTag = SWEEP_TAG,
		}, {
			Empty = React.createElement(StaticTextArea, {
				text = "",
				placeholder = PLACEHOLDER_TEXT,
				LayoutOrder = 1,
			}),
		}),
	})
end

return {
	summary = "Multi-line text field with a label, an optional hint, and a fixed number of visible lines.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			summary = "Utility drops both the container background and its stroke, so only the text marks the field.",
			story = VariantsStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "States",
			summary = "hasError restyles the hint rather than adding layout, so Error is shown with a hint. isRequired is swept in its true form only; false renders an optional marker on the label rather than a state.",
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
	controls = {
		text = VALUE_TEXT,
		label = LABEL_TEXT,
		hint = "",
		placeholder = PLACEHOLDER_TEXT,
		size = SIZE_ORDER,
		variant = VARIANT_ORDER,
		numLines = 3,
		widthOffset = 0,
		focusBehavior = FOCUS_BEHAVIOR_CONTROL_OPTIONS,
		hasClearButton = false,
		hasError = false,
		isDisabled = false,
		isRequired = IS_REQUIRED_CONTROL_OPTIONS,
	},
}
