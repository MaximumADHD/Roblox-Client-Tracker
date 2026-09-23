local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection).StorySection
local Text = require(Foundation.Components.Text)
local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)

local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
local IconName = BuilderIcons.Icon

type InputFocusBehavior = InputFocusBehavior.InputFocusBehavior
type InputSize = InputSize.InputSize
type InputVariant = InputVariant.InputVariant
type TextInputElementProps = TextInput.TextInputProps & { key: string? }
type TrailingIcon = string | { name: string, onActivated: () -> () }

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local SIZE_HEADERS: { string } = Dash.map(SIZE_ORDER, function(size: InputSize): string
	return size
end)

local VARIANT_ORDER: { InputVariant } = {
	InputVariant.Standard,
	InputVariant.Contrast,
	InputVariant.Utility,
}

local FOCUS_BEHAVIOR_ORDER: { InputFocusBehavior } = {
	InputFocusBehavior.Clear,
	InputFocusBehavior.Highlight,
}

local TEXT_INPUT_TYPE_ORDER: { Enum.TextInputType } = {
	Enum.TextInputType.Default,
	Enum.TextInputType.Password,
	Enum.TextInputType.Number,
}

-- An optional prop is driven by an option list whose first entry is React.None, the
-- storybook sentinel for "leave the prop unset", so the list is wider than the prop.
type ControlOption<T> = T | typeof(React.None)

local FOCUS_BEHAVIOR_CONTROL_OPTIONS: { ControlOption<InputFocusBehavior> } = {
	React.None,
	table.unpack(FOCUS_BEHAVIOR_ORDER),
}
local TEXT_INPUT_TYPE_CONTROL_OPTIONS: { ControlOption<Enum.TextInputType> } = {
	React.None,
	table.unpack(TEXT_INPUT_TYPE_ORDER),
}
local IS_REQUIRED_CONTROL_OPTIONS: { ControlOption<boolean> } = { React.None, false, true }
local ICON_CONTROL_OPTIONS = StoryIcons.buildIconControlOptions()

local LABEL_TEXT = "Label"
local HINT_TEXT = "Hint"
local PLACEHOLDER_TEXT = "Placeholder"
local VALUE_TEXT = "Value"

local STORY_PAGE_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local SWEEP_TAG = "col gap-xlarge size-full-0 auto-y"
local SWEEP_ROW_TAG = "row wrap align-y-top gap-large size-full-0 auto-y"
local SWEEP_ROW_PAGE_TAG = "row wrap align-y-top gap-large size-full-0 auto-y padding-y-large bg-surface-0"
local ICON_LABEL_COLUMN_WIDTH = 260
local WIDTH_FRAME_WIDTH = 600
local SWEEP_CELL_WIDTH = 200

local WIDTH_EXAMPLES: { { label: string, width: UDim } } = {
	{ label = "Fixed", width = UDim.new(0, 240) },
	{ label = "Fill", width = UDim.new(1, 0) },
}

local function noop() end

type StaticTextInputProps = {
	text: string,
	label: string?,
	hint: string?,
	placeholder: string?,
	size: InputSize?,
	variant: InputVariant?,
	width: UDim?,
	leadingIcon: string?,
	iconTrailing: TrailingIcon?,
	hasClearButton: boolean?,
	hasError: boolean?,
	isDisabled: boolean?,
	isRequired: boolean?,
	LayoutOrder: number?,
}

-- Snaps the cell back to its seeded props once a reviewer types into it, so a static
-- matrix keeps documenting the props it was authored with.
local function StaticTextInput(props: StaticTextInputProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		TextInput,
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
		) :: TextInputElementProps
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
	widthOffset: number,
	leadingIcon: string,
	iconTrailing: string,
	focusBehavior: ControlOption<InputFocusBehavior>,
	textInputType: ControlOption<Enum.TextInputType>,
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
		Input = React.createElement(TextInput, {
			LayoutOrder = 1,
			text = controls.text,
			onChanged = noop,
			label = controls.label,
			hint = if controls.hint == "" then nil else controls.hint,
			placeholder = if controls.placeholder == "" then nil else controls.placeholder,
			size = controls.size,
			variant = controls.variant,
			width = if controls.widthOffset == 0 then nil else UDim.new(0, controls.widthOffset),
			leadingIcon = StoryIcons.parseIconControl(controls.leadingIcon),
			iconTrailing = StoryIcons.parseIconControl(controls.iconTrailing),
			focusBehavior = if controls.focusBehavior == React.None
				then nil
				else controls.focusBehavior :: InputFocusBehavior,
			textInputType = if controls.textInputType == React.None
				then nil
				else controls.textInputType :: Enum.TextInputType,
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
				React.createElement(StaticTextInput, {
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
				note = "size drives the label typography as well as the field, so they scale together. Cells share one width so only the scaling differs. Icon scaling is in Content.",
				contentTag = SWEEP_ROW_TAG,
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(
					LabeledCell,
					{ LayoutOrder = index, label = size },
					React.createElement(StaticTextInput, {
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
						React.createElement(StaticTextInput, {
							text = VALUE_TEXT,
							width = example.width,
							LayoutOrder = 1,
						})
					)
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
			React.createElement(StaticTextInput, {
				text = VALUE_TEXT,
				label = LABEL_TEXT,
				isDisabled = true,
				width = UDim.new(0, SWEEP_CELL_WIDTH),
			})
		),
		Hint = React.createElement(
			LabeledCell,
			{ LayoutOrder = 2, label = "hint" },
			React.createElement(StaticTextInput, {
				text = VALUE_TEXT,
				label = LABEL_TEXT,
				hint = HINT_TEXT,
				width = UDim.new(0, SWEEP_CELL_WIDTH),
			})
		),
		Error = React.createElement(
			LabeledCell,
			{ LayoutOrder = 3, label = "Error" },
			React.createElement(StaticTextInput, {
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
			React.createElement(StaticTextInput, {
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
		Input = React.createElement(TextInput, {
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
		LeadingIcon = React.createElement(StorySection, {
			LayoutOrder = 1,
			caption = "Leading icon",
			note = "leadingIcon takes any icon string the design system accepts; the migrated path resolves to a builder icon and the non-migrated one renders through Image. size scales the icon with the field, so each kind is shown at every size.",
			contentTag = SWEEP_TAG,
		}, {
			-- StoryIcons labels each kind with a title and its resolved path, which only the
			-- grid's label column can carry.
			Examples = React.createElement(MatrixGrid, {
				labelColumnWidth = ICON_LABEL_COLUMN_WIDTH,
				columnHeaders = SIZE_HEADERS,
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = SWEEP_CELL_WIDTH,
				rowGap = "xxlarge",
				rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
					return Dash.map(SIZE_ORDER, function(size)
						return React.createElement(StaticTextInput, {
							text = VALUE_TEXT,
							size = size,
							leadingIcon = iconExample.name,
							width = UDim.new(0, SWEEP_CELL_WIDTH),
						})
					end)
				end),
			}),
		}),
		TrailingIcon = React.createElement(StorySection, {
			LayoutOrder = 2,
			caption = "Trailing icon",
			note = "iconTrailing is a union: a bare string renders a static Icon, while the table arm renders a pressable IconButton that disables with the field. size scales both arms with the field.",
			contentTag = SWEEP_TAG,
		}, {
			Examples = React.createElement(MatrixGrid, {
				labelColumnWidth = ICON_LABEL_COLUMN_WIDTH,
				columnHeaders = SIZE_HEADERS,
				headerTextAlign = "left",
				cellAlign = "left",
				cellColumnWidth = SWEEP_CELL_WIDTH,
				rowGap = "xxlarge",
				rows = {
					{
						label = matrixLabel("Icon"),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(StaticTextInput, {
								text = VALUE_TEXT,
								size = size,
								iconTrailing = IconName.CircleQuestion,
								width = UDim.new(0, SWEEP_CELL_WIDTH),
							})
						end),
					},
					{
						label = matrixLabel("IconButton"),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(StaticTextInput, {
								text = VALUE_TEXT,
								size = size,
								iconTrailing = { name = IconName.CircleQuestion, onActivated = noop },
								width = UDim.new(0, SWEEP_CELL_WIDTH),
							})
						end),
					},
				},
			}),
		}),
		ClearButton = React.createElement(StorySection, {
			LayoutOrder = 3,
			caption = "Clear button",
			note = "The clear affordance is only rendered while the field holds text, so the cells are seeded. With a trailing icon present the two sit side by side. Clearing is in Controlled component.",
			contentTag = SWEEP_ROW_TAG,
		}, {
			Alone = React.createElement(
				LabeledCell,
				{ LayoutOrder = 1, label = "hasClearButton = true" },
				React.createElement(StaticTextInput, {
					text = VALUE_TEXT,
					hasClearButton = true,
				})
			),
			WithTrailingIcon = React.createElement(
				LabeledCell,
				{ LayoutOrder = 2, label = "hasClearButton = true with iconTrailing" },
				React.createElement(StaticTextInput, {
					text = VALUE_TEXT,
					hasClearButton = true,
					iconTrailing = IconName.CircleQuestion,
				})
			),
		}),
		Placeholder = React.createElement(StorySection, {
			LayoutOrder = 4,
			caption = "Placeholder",
			contentTag = SWEEP_TAG,
		}, {
			Empty = React.createElement(StaticTextInput, {
				text = "",
				placeholder = PLACEHOLDER_TEXT,
				LayoutOrder = 1,
			}),
		}),
	})
end

return {
	summary = "Single-line text field with a label, an optional hint, and optional leading and trailing icons.",
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
		widthOffset = 0,
		leadingIcon = ICON_CONTROL_OPTIONS,
		iconTrailing = ICON_CONTROL_OPTIONS,
		focusBehavior = FOCUS_BEHAVIOR_CONTROL_OPTIONS,
		textInputType = TEXT_INPUT_TYPE_CONTROL_OPTIONS,
		hasClearButton = false,
		hasError = false,
		isDisabled = false,
		isRequired = IS_REQUIRED_CONTROL_OPTIONS,
	},
}
