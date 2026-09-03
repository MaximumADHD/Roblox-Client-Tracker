local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
type InputFocusBehavior = InputFocusBehavior.InputFocusBehavior
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant
local OnChangeCallbackReason = require(Foundation.Enums.OnChangeCallbackReason)
type OnChangeCallbackReason = OnChangeCallbackReason.OnChangeCallbackReason
local ScrubBehavior = require(Foundation.Enums.ScrubBehavior)
type ScrubBehavior = ScrubBehavior.ScrubBehavior
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid

local Flags = require(Foundation.Utility.Flags)
local NumberInput = require(Foundation.Components.NumberInput)

-- Shared ordered constants: reuse the same enum order in every matrix and control.
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
local CONTROLS_VARIANT_ORDER: { NumberInputControlsVariant } = {
	NumberInputControlsVariant.Stacked,
	NumberInputControlsVariant.Split,
	NumberInputControlsVariant.None,
}
local SCRUB_ORDER: { ScrubBehavior } = {
	ScrubBehavior.Off,
	ScrubBehavior.On,
}

local WIDTH_EXAMPLES: { { label: string, width: UDim? } } = {
	{ label = "Default (300)", width = nil },
	{ label = "120", width = UDim.new(0, 120) },
	{ label = "200", width = UDim.new(0, 200) },
	{ label = "320", width = UDim.new(0, 320) },
}

local ICON_TYPE_EXAMPLES = StoryIcons.ICON_TYPE_EXAMPLES
local ICON_CONTROL_OPTIONS = StoryIcons.buildIconControlOptions()

local ICON_INFO_COLUMN_WIDTH = 140
local ICON_CELL_COLUMN_WIDTH = 220

type FormatAsStringEntry = {
	name: string,
	callback: ((value: number) -> string)?,
}
local FORMAT_AS_STRING_CALLBACKS: { FormatAsStringEntry } = {
	{
		name = "none",
		callback = nil,
	},
	{
		name = "stringified",
		callback = function(numValue)
			return `{numValue}`
		end,
	},
	{
		name = "punctuation",
		callback = function(numValue)
			local withPunctuation = ""
			local roundedNumString = tostring(math.round(numValue))
			local s, e = math.max(#roundedNumString - 2, 1), #roundedNumString
			while e >= 1 do
				local nextThreeChars = string.sub(roundedNumString, s, e)
				e = s - 1
				s = math.max(e - 2, 1)
				if e >= 1 then
					withPunctuation = "," .. nextThreeChars .. withPunctuation
				else
					withPunctuation = nextThreeChars .. withPunctuation
				end
			end
			local numString = tostring(numValue)
			local decimalsStart, _ = string.find(numString, ".", 1, true)
			return withPunctuation .. string.sub(numString, decimalsStart or #numString + 1, #numString)
		end,
	},
}

type SectionProps = {
	caption: string,
	contentTag: string?,
	LayoutOrder: number?,
	children: React.ReactNode?,
}

local function Section(props: SectionProps)
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.caption,
			tag = "auto-xy text-label-medium text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-xxlarge auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

type GroupProps = {
	caption: string,
	contentTag: string,
	LayoutOrder: number?,
	children: React.ReactNode?,
}

local function Group(props: GroupProps)
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Caption = React.createElement(Text, {
			Text = props.caption,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag,
			LayoutOrder = 2,
		}, props.children),
	})
end

local function StatefulNumberInput(props)
	local value, setValue = React.useState(props.defaultValue or 0)

	return React.createElement(
		NumberInput,
		Dash.join(props, {
			defaultValue = React.None,
			value = value,
			onChanged = function(newValue: number)
				setValue(newValue)
			end,
		})
	)
end

local function IconMatrixCell(props: { LayoutOrder: number, leadingIcon: string?, trailingIcon: string? })
	return React.createElement(View, {
		tag = "col align-x-left auto-y",
		Size = UDim2.fromOffset(ICON_CELL_COLUMN_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Input = React.createElement(StatefulNumberInput, {
			defaultValue = 0,
			label = "Value",
			leadingIcon = props.leadingIcon,
			trailingIcon = props.trailingIcon,
			minimum = 0,
			maximum = 100,
			step = 1,
			width = UDim.new(0, 200),
		}),
	})
end

local function PlaygroundStory(props): React.ReactNode
	local controls = props.controls
	local formatAsString = (Dash.find(FORMAT_AS_STRING_CALLBACKS, function(entry)
		return entry.name == controls.format
	end) :: FormatAsStringEntry).callback

	local value, setValue = React.useState(0)

	local handleTextChanged = React.useCallback(function(text: string)
		print(text)
	end, {})

	return React.createElement(NumberInput, {
		value = value,
		variant = controls.variant,
		controlsVariant = if Flags.FoundationNumberInputBeta then nil else controls.controlsVariant,
		hasError = controls.hasError,
		isDisabled = controls.isDisabled,
		isRequired = controls.isRequired,
		onChanged = function(newValue: number)
			setValue(newValue)
		end,
		onTextChanged = if Flags.FoundationNumberInputOnTextChanged and controls.onTextChanged
			then handleTextChanged
			else nil,
		formatAsString = formatAsString,
		label = controls.label,
		size = controls.size,
		width = if controls.width == 0 then nil else UDim.new(0, controls.width),
		maximum = controls.maximum,
		minimum = controls.minimum,
		step = controls.step,
		hint = controls.hint,
		precision = controls.precision,
		leadingIcon = StoryIcons.parseIconControl(controls.leadingIcon),
		trailingIcon = if Flags.FoundationNumberInputBeta
			then StoryIcons.parseIconControl(controls.trailingIcon)
			else nil,
		scrubBehavior = controls.scrubBehavior,
		prefix = if controls.prefix == "" then nil else controls.prefix,
		suffix = if controls.suffix == "" then nil else controls.suffix,
		hasControls = controls.hasControls,
		focusBehavior = controls.focusBehavior,
	})
end

local function VariantsStory()
	return React.createElement(
		View,
		{ tag = "row wrap gap-xxlarge auto-xy" },
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(Group, {
				caption = variant,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 0,
					variant = variant,
					label = "Value",
					minimum = 0,
					maximum = 100,
					step = 1,
					width = UDim.new(0, 200),
				}),
			})
		end)
	)
end

local function SizingStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y",
	}, {
		Size = React.createElement(
			Section,
			{ caption = "Size", LayoutOrder = 1, contentTag = "row gap-xxlarge auto-xy align-y-bottom wrap" },
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(Group, {
					caption = size,
					contentTag = "auto-xy",
					LayoutOrder = index,
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 0,
						size = size,
						label = "Value",
						minimum = 0,
						maximum = 100,
						step = 1,
						width = UDim.new(0, 200),
					}),
				})
			end)
		),
		Width = React.createElement(
			Section,
			{ caption = "Width", LayoutOrder = 2, contentTag = "row gap-xxlarge auto-xy align-y-bottom wrap" },
			Dash.map(WIDTH_EXAMPLES, function(example, index)
				return React.createElement(Group, {
					caption = example.label,
					contentTag = "auto-xy",
					LayoutOrder = index,
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 0,
						label = "Value",
						width = example.width,
						minimum = 0,
						maximum = 100,
						step = 1,
					}),
				})
			end)
		),
	})
end

local function StatesStory()
	local states: { { caption: string, hint: string?, isDisabled: boolean?, hasError: boolean?, isRequired: boolean? } } =
		{
			{ caption = "Enabled" },
			{ caption = "Hint", hint = "Hint text" },
			{ caption = "Disabled", isDisabled = true },
			{ caption = "Error", hasError = true, hint = "Value is invalid" },
			{ caption = "Required", isRequired = true },
		}

	return React.createElement(
		View,
		{ tag = "row wrap gap-xxlarge auto-xy" },
		Dash.map(states, function(state, index)
			return React.createElement(Group, {
				caption = state.caption,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 0,
					label = "Value",
					hint = state.hint,
					isDisabled = state.isDisabled,
					hasError = state.hasError,
					isRequired = state.isRequired,
					minimum = 0,
					maximum = 100,
					step = 1,
					width = UDim.new(0, 200),
				}),
			})
		end)
	)
end

local function ControlledStory()
	local value, setValue = React.useState(0)
	local lastReason, setLastReason = React.useState(nil :: OnChangeCallbackReason?)

	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
	}, {
		Input = React.createElement(NumberInput, {
			value = value,
			onChanged = function(newValue: number, reason: OnChangeCallbackReason)
				setValue(newValue)
				setLastReason(reason)
			end,
			label = "Quantity",
			hint = "Number from 0 to 100",
			hasControls = true,
			controlsVariant = NumberInputControlsVariant.Split,
			minimum = 0,
			maximum = 100,
			step = 1,
			width = UDim.new(0, 200),
			LayoutOrder = 1,
		}),
		Readout = React.createElement(Text, {
			Text = `Value: {value} — last change: {lastReason or "none"}`,
			tag = "auto-xy text-body-medium text-align-x-left content-emphasis",
			LayoutOrder = 2,
		}),
	})
end

local function ScrubbingStory()
	local isScrubbing, setIsScrubbing = React.useState(false)

	return React.createElement(
		View,
		{ tag = "row wrap gap-xxlarge auto-xy" },
		Dash.map(SCRUB_ORDER, function(behavior, index)
			return React.createElement(Group, {
				caption = behavior,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 0,
					label = "Drag to change",
					hint = if behavior == ScrubBehavior.On
						then `Scrub enabled — Scrubbing: {isScrubbing}`
						else "Scrub disabled",
					scrubBehavior = behavior,
					onScrubStarted = function()
						setIsScrubbing(true)
					end,
					onScrubEnded = function()
						setIsScrubbing(false)
					end,
					hasControls = false,
					controlsVariant = NumberInputControlsVariant.None,
					minimum = 0,
					maximum = 100,
					step = 1,
					width = UDim.new(0, 200),
				}),
			})
		end)
	)
end

local function FocusBehaviorStory(): React.Node
	local options: { { caption: string, focusBehavior: InputFocusBehavior, hint: string } } = {
		{ caption = "Clear", focusBehavior = InputFocusBehavior.Clear, hint = "Cursor placed on focus" },
		{
			caption = "Highlight",
			focusBehavior = InputFocusBehavior.Highlight,
			hint = "Selects all on focus (desktop only)",
		},
	}

	return React.createElement(
		View,
		{ tag = "row wrap gap-xxlarge auto-xy" },
		Dash.map(options, function(option, index)
			return React.createElement(Group, {
				caption = option.caption,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 0,
					label = "Value",
					hint = option.hint,
					focusBehavior = option.focusBehavior,
					minimum = 0,
					maximum = 100,
					step = 1,
					width = UDim.new(0, 200),
				}),
			})
		end)
	)
end

local function evaluateExpression(text: string): number?
	local trimmed = string.match(text, "^%s*(.-)%s*$")
	if trimmed == nil or trimmed == "" then
		return nil
	end

	local left, op, right = string.match(trimmed, "^(%d+%.?%d*)%s*([+%-])%s*(%d+%.?%d*)$")
	if left and op and right then
		local a, b = tonumber(left), tonumber(right)
		if a and b then
			if op == "+" then
				return a + b
			elseif op == "-" then
				return a - b
			end
		end
	end

	return tonumber(trimmed)
end

local EXPRESSION_INPUT_HINT = 'Type an expression like "3 + 5"'
local INVALID_EXPRESSION_HINT = "Could not compute expression"

local function ExpressionInputStory(_props: any): React.ReactNode
	local value: number?, setValue: (number?) -> () = React.useState(nil :: number?)
	local expression, setExpression = React.useState("")
	local errorMessage: string?, setErrorMessage: (string?) -> () = React.useState(nil :: string?)

	local onTextChanged = React.useCallback(function(text: string)
		setExpression(text)
		setErrorMessage(nil)
	end, {})

	local onFocusLost = React.useCallback(function()
		local result = evaluateExpression(expression)
		if result ~= nil then
			setValue(result)
			setExpression(tostring(result))
			setErrorMessage(nil)
		else
			setValue(nil)
			setErrorMessage(INVALID_EXPRESSION_HINT)
		end
	end, { expression })

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-large",
	}, {
		Input = React.createElement(NumberInput, {
			value = value or 0,
			label = "Padding",
			hasError = errorMessage ~= nil,
			hint = errorMessage or EXPRESSION_INPUT_HINT,
			onTextChanged = onTextChanged,
			onChanged = function() end,
			onFocusLost = onFocusLost,
			width = UDim.new(0, 300),
			LayoutOrder = 1,
		}),
		Expression = React.createElement(Text, {
			tag = "auto-xy text-body-medium content-default",
			Text = `Expression: {if expression == "" then "—" else expression}`,
			LayoutOrder = 2,
		}),
		Value = React.createElement(Text, {
			tag = "auto-xy text-body-medium content-emphasis",
			Text = if value ~= nil then `Value: {value}` else "Value: nil",
			LayoutOrder = 3,
		}),
	})
end

local function StepIncrementsStory(): React.Node
	-- step is interactive-only: it only changes what a stepper click / arrow key / scrub
	-- adds or subtracts, so it's demonstrated here (steppers on) rather than in Content.
	-- The tight-range cell also surfaces min/max enforcement during interaction.
	local stepExamples: { { caption: string, step: number, precision: number?, minimum: number, maximum: number, defaultValue: number } } =
		{
			{ caption = "Step 1", step = 1, minimum = 0, maximum = 100, defaultValue = 10 },
			{ caption = "Step 5", step = 5, minimum = 0, maximum = 100, defaultValue = 10 },
			{ caption = "Step 0.25", step = 0.25, precision = 2, minimum = 0, maximum = 100, defaultValue = 1 },
			{ caption = "Tight range (0–5)", step = 1, minimum = 0, maximum = 5, defaultValue = 3 },
		}

	return React.createElement(
		View,
		{ tag = "row wrap gap-xxlarge auto-xy" },
		Dash.map(stepExamples, function(example, index)
			return React.createElement(Group, {
				caption = example.caption,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = example.defaultValue,
					label = "Value",
					hint = if example.maximum == 5 then "Stops at 0 and 5" else `Steps by {example.step}`,
					-- Steppers rendered in both flag states: Split passes the beta hasControls
					-- guard (not Stacked/None) and renders SplitControls pre-beta.
					hasControls = true,
					controlsVariant = NumberInputControlsVariant.Split,
					minimum = example.minimum,
					maximum = example.maximum,
					step = example.step,
					precision = example.precision,
					width = UDim.new(0, 200),
				}),
			})
		end)
	)
end

local function SteppersSection(): React.ReactNode
	return Dash.map(SIZE_ORDER, function(size, index)
		return React.createElement(Group, {
			caption = size,
			contentTag = "auto-xy",
			LayoutOrder = index,
		}, {
			Input = React.createElement(StatefulNumberInput, {
				defaultValue = 0,
				size = size,
				label = "Value",
				-- Steppers rendered in both flag states: Split passes the beta hasControls
				-- guard (not Stacked/None) and renders SplitControls pre-beta.
				hasControls = true,
				controlsVariant = NumberInputControlsVariant.Split,
				minimum = 0,
				maximum = 100,
				step = 1,
				width = UDim.new(0, 200),
			}),
		})
	end)
end

local function ContentStory()
	local prefixSuffixExamples: { { caption: string, prefix: string?, suffix: string?, leadingIcon: string? } } = {
		{ caption = "Prefix ($)", prefix = "$" },
		{ caption = "Suffix (%)", suffix = "%" },
		{ caption = "Suffix (px) + icon", suffix = "px", leadingIcon = ICON_TYPE_EXAMPLES[1].name },
	}

	-- The field constrains its displayed value to [minimum, maximum] on render, so
	-- out-of-range values clamp to the nearest bound (e.g. 1000000 shows as 9999).
	local limitExamples: { { caption: string, defaultValue: number } } = {
		{ caption = "Above maximum (1000000 → 9999)", defaultValue = 1000000 },
		{ caption = "Below minimum (-500 → 0)", defaultValue = -500 },
	}

	-- precision rounds the displayed value, so the same underlying number renders
	-- differently per precision. This is statically visible (no interaction needed).
	local precisionExamples: { { caption: string, precision: number } } = {
		{ caption = "0", precision = 0 },
		{ caption = "1", precision = 1 },
		{ caption = "2", precision = 2 },
		{ caption = "3 (default)", precision = 3 },
	}

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y",
	}, {
		NumberLimits = React.createElement(
			Section,
			{ caption = "Number limits", LayoutOrder = 1 },
			Dash.map(limitExamples, function(example, index)
				return React.createElement(Group, {
					caption = example.caption,
					contentTag = "auto-xy",
					LayoutOrder = index,
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = example.defaultValue,
						label = "Value",
						minimum = 0,
						maximum = 9999,
						step = 1,
						width = UDim.new(0, 200),
					}),
				})
			end)
		),
		Precision = React.createElement(
			Section,
			{ caption = "Precision", LayoutOrder = 2 },
			Dash.map(precisionExamples, function(example, index)
				return React.createElement(Group, {
					caption = example.caption,
					contentTag = "auto-xy",
					LayoutOrder = index,
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 3.14159,
						label = "Value",
						precision = example.precision,
						minimum = 0,
						maximum = 100,
						step = 1,
						width = UDim.new(0, 200),
					}),
				})
			end)
		),
		Steppers = React.createElement(Section, { caption = "Steppers", LayoutOrder = 3 }, SteppersSection()),
		PrefixSuffix = React.createElement(
			Section,
			{ caption = "Prefix / suffix", LayoutOrder = 4 },
			Dash.map(prefixSuffixExamples, function(example, index)
				return React.createElement(Group, {
					caption = example.caption,
					contentTag = "auto-xy",
					LayoutOrder = index,
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 0,
						label = "Value",
						prefix = example.prefix,
						suffix = example.suffix,
						leadingIcon = example.leadingIcon,
						minimum = 0,
						maximum = 9999,
						step = 1,
						width = UDim.new(0, 200),
					}),
				})
			end)
		),
		Icons = React.createElement(Section, {
			caption = "Icon types and placement",
			LayoutOrder = 5,
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = ICON_INFO_COLUMN_WIDTH,
				columnHeaders = { "Leading", "Trailing" },
				cellColumnWidth = ICON_CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = StoryIcons.buildIconTypeMatrixRows(function(iconType)
					return {
						React.createElement(IconMatrixCell, {
							LayoutOrder = 1,
							leadingIcon = iconType.name,
						}),
						React.createElement(IconMatrixCell, {
							LayoutOrder = 1,
							trailingIcon = if Flags.FoundationNumberInputBeta then iconType.name else nil,
						}),
					}
				end),
			}),
		}),
		IconPerSize = React.createElement(
			Section,
			{ caption = "Icon per size", LayoutOrder = 6, contentTag = "row gap-xxlarge auto-xy align-y-bottom wrap" },
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(Group, {
					caption = size,
					contentTag = "auto-xy",
					LayoutOrder = index,
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 0,
						size = size,
						label = "Value",
						leadingIcon = ICON_TYPE_EXAMPLES[1].name,
						minimum = 0,
						maximum = 100,
						step = 1,
						width = UDim.new(0, 200),
					}),
				})
			end)
		),
	})
end

local stories = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Variants",
		story = VariantsStory,
	},
	{
		name = "Sizing",
		story = SizingStory,
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
		name = "Scrubbing",
		story = ScrubbingStory,
	},
	{
		name = "Step increments",
		story = StepIncrementsStory,
	},
	{
		name = "Focus behavior",
		story = FocusBehaviorStory,
	},
	{
		name = "Content",
		story = ContentStory,
	},
}

if Flags.FoundationNumberInputOnTextChanged then
	table.insert(stories, {
		name = "Expression input",
		summary = "Uses `onTextChanged` to allow for custom expressions to be written instead of exclusively numbers.",
		story = ExpressionInputStory,
	})
end

return {
	summary = "Numeric text input with steppers, scrubbing, prefix/suffix, formatting, and validation.",
	stories = stories,
	controls = {
		label = "Label",
		hint = "Number from -5 to 100",
		size = SIZE_ORDER,
		isRequired = { false, true },
		variant = VARIANT_ORDER,
		controlsVariant = if Flags.FoundationNumberInputBeta then nil else CONTROLS_VARIANT_ORDER,
		format = Dash.map(FORMAT_AS_STRING_CALLBACKS, function(entry)
			return entry.name
		end),
		onTextChanged = if Flags.FoundationNumberInputOnTextChanged then false else nil,
		hasError = false,
		isDisabled = false,
		maximum = 100,
		minimum = -5,
		step = 0.2,
		precision = 2,
		prefix = "",
		suffix = "",
		width = 0,
		scrubBehavior = SCRUB_ORDER,
		leadingIcon = ICON_CONTROL_OPTIONS,
		trailingIcon = if Flags.FoundationNumberInputBeta then ICON_CONTROL_OPTIONS else nil,
		hasControls = if Flags.FoundationNumberInputBeta then true else nil,
		focusBehavior = { React.None, unpack(Dash.values(InputFocusBehavior)) },
	},
}
