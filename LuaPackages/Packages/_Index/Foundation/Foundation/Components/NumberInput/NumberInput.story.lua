local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
local OnChangeCallbackReason = require(Foundation.Enums.OnChangeCallbackReason)
type OnChangeCallbackReason = OnChangeCallbackReason.OnChangeCallbackReason
local Button = require(Foundation.Components.Button)
local ScrubBehavior = require(Foundation.Enums.ScrubBehavior)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local Flags = require(Foundation.Utility.Flags)
local NumberInput = require(Foundation.Components.NumberInput)

local function withDefaultFirst<T>(values: { T }, defaultValue: T): { T }
	local result = { defaultValue }
	for _, value in values do
		if value ~= defaultValue then
			table.insert(result, value)
		end
	end
	return result
end

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

type GroupProps = {
	caption: string,
	contentTag: string,
	LayoutOrder: number?,
	children: React.ReactNode?,
}

local function Group(props: GroupProps)
	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Caption = React.createElement(Text, {
			Text = props.caption,
			tag = "text-body-small content-default auto-xy",
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

local function PlaygroundStory(props)
	local controls = props.controls
	local formatAsString = (Dash.find(FORMAT_AS_STRING_CALLBACKS, function(entry)
		return entry.name == controls.formatAsString
	end) :: FormatAsStringEntry).callback

	local value, setValue = React.useState(0)
	local valueBinding, setValueBinding = React.useBinding(0)

	local function handleChange(newValue: number)
		if controls.useBindingValue then
			setValueBinding(newValue)
		else
			setValue(newValue)
		end
	end

	local handleTextChanged = React.useCallback(function(text: string)
		print(text)
	end, {})

	return React.createElement(NumberInput, {
		value = if controls.useBindingValue then valueBinding else value,
		variant = controls.variant,
		controlsVariant = if Flags.FoundationNumberInputBeta then nil else controls.controlsVariant,
		hasError = controls.hasError,
		isDisabled = controls.isDisabled,
		isRequired = controls.isRequired,
		onChanged = handleChange,
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
		hint = if controls.hint == "" then nil else controls.hint,
		precision = controls.precision,
		leadingIcon = if controls.leadingIcon == React.None then nil else controls.leadingIcon,
		trailingIcon = if Flags.FoundationNumberInputBeta
			then if controls.trailingIcon == React.None then nil else controls.trailingIcon
			else nil,
		scrubBehavior = controls.scrubBehavior,
		prefix = if controls.prefix == "" then nil else controls.prefix,
		suffix = if controls.suffix == "" then nil else controls.suffix,
		hasControls = controls.hasControls,
		focusBehavior = controls.focusBehavior,
	})
end

local function SizesStory()
	return React.createElement(
		View,
		{ tag = "row gap-xxlarge auto-xy align-y-bottom" },
		Dash.map(
			{ Large = InputSize.Large, Medium = InputSize.Medium, Small = InputSize.Small, XSmall = InputSize.XSmall },
			function(size, name)
				return React.createElement(Group, {
					caption = name,
					contentTag = "auto-xy",
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 42,
						size = size,
						label = "Value",
						minimum = 0,
						maximum = 100,
						step = 1,
						width = UDim.new(0, 200),
					}),
				})
			end
		)
	)
end

local function VariantsStory()
	return React.createElement(
		View,
		{ tag = "row gap-xxlarge auto-xy" },
		Dash.map(InputVariant, function(variant, name)
			return React.createElement(Group, {
				caption = name,
				contentTag = "auto-xy",
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 25,
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

local function StatesStory()
	local states = {
		{ caption = "Enabled", isDisabled = false, hasError = false },
		{ caption = "Disabled", isDisabled = true, hasError = false },
		{ caption = "Error", isDisabled = false, hasError = true },
	}

	return React.createElement(
		View,
		{ tag = "row gap-xxlarge auto-xy" },
		Dash.map(states, function(state, index)
			return React.createElement(Group, {
				caption = state.caption,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 50,
					label = "Value",
					hint = if state.hasError then "Value is invalid" else "Hint text",
					isDisabled = state.isDisabled,
					hasError = state.hasError,
					minimum = 0,
					maximum = 100,
					step = 1,
					width = UDim.new(0, 200),
				}),
			})
		end)
	)
end

local function ControlsVariantStory()
	if Flags.FoundationNumberInputBeta then
		return React.createElement(
			View,
			{ tag = "row gap-xxlarge auto-xy" },
			Dash.map({
				{ caption = "With Controls", hasControls = true },
				{ caption = "Without Controls", hasControls = false },
			}, function(option, index)
				return React.createElement(Group, {
					caption = option.caption,
					contentTag = "auto-xy",
					LayoutOrder = index,
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 10,
						label = "Value",
						hasControls = option.hasControls,
						minimum = 0,
						maximum = 100,
						step = 1,
						width = UDim.new(0, 200),
					}),
				})
			end)
		)
	else
		return React.createElement(
			View,
			{ tag = "row gap-xxlarge auto-xy" },
			Dash.map(NumberInputControlsVariant, function(variant, name)
				return React.createElement(Group, {
					caption = name,
					contentTag = "auto-xy",
				}, {
					Input = React.createElement(StatefulNumberInput, {
						defaultValue = 10,
						controlsVariant = variant,
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
end

local function PrefixSuffixStory()
	local examples: { { caption: string, prefix: string?, suffix: string? } } = {
		{ caption = "Prefix ($)", prefix = "$", suffix = nil },
		{ caption = "Suffix (%)", prefix = nil, suffix = "%" },
		{ caption = "Suffix (px) + Icon", prefix = nil, suffix = "px", leadingIcon = "icons/common/search_small" },
	}

	return React.createElement(
		View,
		{ tag = "row gap-xxlarge auto-xy" },
		Dash.map(examples, function(example, index)
			return React.createElement(Group, {
				caption = example.caption,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 100,
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
	)
end

local function IconsStory()
	local examples: { { caption: string, leadingIcon: string?, trailingIcon: string? } } = {
		{ caption = "Leading", leadingIcon = "icons/common/search_small", trailingIcon = nil },
		{ caption = "Trailing", leadingIcon = nil, trailingIcon = "icons/status/private_small" },
		{ caption = "Both", leadingIcon = "icons/common/search_small", trailingIcon = "icons/status/private_small" },
	}

	return React.createElement(
		View,
		{ tag = "row gap-xxlarge auto-xy" },
		Dash.map(examples, function(example, index)
			return React.createElement(Group, {
				caption = example.caption,
				contentTag = "auto-xy",
				LayoutOrder = index,
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 42,
					label = "Value",
					leadingIcon = example.leadingIcon,
					trailingIcon = if Flags.FoundationNumberInputBeta then example.trailingIcon else nil,
					minimum = 0,
					maximum = 100,
					step = 1,
					width = UDim.new(0, 200),
				}),
			})
		end)
	)
end

local function ScrubBehaviorStory()
	return React.createElement(
		View,
		{ tag = "row gap-xxlarge auto-xy" },
		Dash.map(ScrubBehavior, function(behavior, name)
			return React.createElement(Group, {
				caption = name,
				contentTag = "auto-xy",
			}, {
				Input = React.createElement(StatefulNumberInput, {
					defaultValue = 50,
					label = "Drag to change",
					hint = if behavior == ScrubBehavior.On then "Scrub enabled" else "Scrub disabled",
					scrubBehavior = behavior,
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

local function ExpressionInputStory(_props: any)
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
	end, { expression } :: { unknown })

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-large",
	}, {
		Input = React.createElement(NumberInput, {
			value = value or 0,
			label = "Padding",
			-- Pair hasError with a hint message to tell the user their formula is invalid.
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

type HistoryEntry = {
	value: number,
	reason: OnChangeCallbackReason,
}

local function UndoRedoStackStory()
	local value, setValue = React.useState(50)
	local history, setHistory =
		React.useState({ { value = 50, reason = OnChangeCallbackReason.FocusLost } } :: { HistoryEntry })
	local historyIndex, setHistoryIndex = React.useState(1)
	local lastReasonRef = React.useRef(nil :: OnChangeCallbackReason?)

	local canUndo = historyIndex > 1
	local canRedo = historyIndex < #history

	local function handleChange(newValue: number, reason: OnChangeCallbackReason)
		setValue(newValue)

		if reason == OnChangeCallbackReason.Keyboard then
			return
		end

		if reason == OnChangeCallbackReason.Drag and lastReasonRef.current == OnChangeCallbackReason.Drag then
			setHistory(function(prev)
				local newHistory = table.clone(prev)
				newHistory[historyIndex] = { value = newValue, reason = reason }
				return newHistory
			end)
		else
			setHistory(function(prev)
				local newHistory = {}
				for i = 1, historyIndex do
					table.insert(newHistory, prev[i])
				end
				table.insert(newHistory, { value = newValue, reason = reason })
				return newHistory
			end)
			setHistoryIndex(function(prev)
				return prev + 1
			end)
		end

		lastReasonRef.current = reason
	end

	local function undo()
		if canUndo then
			local newIndex = historyIndex - 1
			setHistoryIndex(newIndex)
			setValue(history[newIndex].value)
			lastReasonRef.current = nil
		end
	end

	local function redo()
		if canRedo then
			local newIndex = historyIndex + 1
			setHistoryIndex(newIndex)
			setValue(history[newIndex].value)
			lastReasonRef.current = nil
		end
	end

	local historyItems = {}
	for i, entry in history do
		local isCurrent = i == historyIndex
		table.insert(
			historyItems,
			React.createElement(Text, {
				key = tostring(i),
				tag = {
					["auto-xy text-body-medium content-emphasis"] = isCurrent,
					["auto-xy text-body-medium content-default"] = not isCurrent,
				},
				Text = `{i}. {entry.value} ({entry.reason}){if isCurrent then " ←" else ""}`,
			})
		)
	end

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y padding-large",
	}, {
		Input = React.createElement(NumberInput, {
			value = value,
			onChanged = handleChange,
			label = "Value with Undo/Redo",
			hint = "Drag consolidates, buttons/keyboard create entries",
			minimum = 0,
			maximum = 100,
			step = 1,
			isScrubbable = true,
			width = UDim.new(0, 300),
			LayoutOrder = 1,
		}),
		Controls = React.createElement(View, {
			tag = "row gap-small auto-xy",
			LayoutOrder = 2,
		}, {
			UndoButton = React.createElement(Button, {
				text = "Undo",
				onActivated = undo,
				isDisabled = not canUndo,
				LayoutOrder = 1,
			}),
			RedoButton = React.createElement(Button, {
				text = "Redo",
				onActivated = redo,
				isDisabled = not canRedo,
				LayoutOrder = 2,
			}),
		}),
		HistoryLabel = React.createElement(Text, {
			tag = "auto-xy text-title-medium content-emphasis",
			Text = "History Stack:",
			LayoutOrder = 3,
		}),
		History = React.createElement(View, {
			tag = "col gap-xsmall auto-y",
			LayoutOrder = 4,
		}, historyItems),
	})
end

local stories: { { name: string, story: (props: any) -> React.Node, summary: string? } } = {
	{
		name = "Playground",
		story = function(props)
			return React.createElement(PlaygroundStory, { controls = props.controls })
		end,
	},
	{
		name = "Sizes",
		story = SizesStory,
	},
	{
		name = "Variants",
		story = VariantsStory,
	},
	{
		name = "States",
		story = StatesStory,
	},
	{
		name = "ControlsVariant",
		story = ControlsVariantStory,
	},
	{
		name = "PrefixSuffix",
		story = PrefixSuffixStory,
	},
	{
		name = "Icons",
		story = IconsStory,
	},
	{
		name = "ScrubBehavior",
		story = ScrubBehaviorStory,
	},
	{
		name = "UndoRedoStack",
		story = UndoRedoStackStory,
	},
}

if Flags.FoundationNumberInputOnTextChanged then
	table.insert(
		stories,
		{
			name = "Expression input",
			summary = "Uses `onTextChanged` to allow for custom expressions to be written instead of exclusively numbers.",
			story = ExpressionInputStory,
		} :: { name: string, story: (props: any) -> React.Node, summary: string? }
	)
end

return {
	summary = "NumberInput",
	stories = stories,
	controls = {
		label = "",
		hint = "",
		size = withDefaultFirst(Dash.values(InputSize), InputSize.Large),
		isRequired = { React.None, false, true },
		variant = withDefaultFirst(Dash.values(InputVariant), InputVariant.Standard),
		controlsVariant = if Flags.FoundationNumberInputBeta
			then nil
			else withDefaultFirst(Dash.values(NumberInputControlsVariant), NumberInputControlsVariant.Stacked),
		formatAsString = Dash.values(Dash.map(FORMAT_AS_STRING_CALLBACKS, function(entry)
			return entry.name
		end)),
		onTextChanged = if Flags.FoundationNumberInputOnTextChanged then false else nil,
		hasError = false,
		isDisabled = false,
		useBindingValue = false,
		maximum = math.huge,
		minimum = -math.huge,
		step = 1,
		precision = 3,
		prefix = "",
		suffix = "",
		width = 0,
		scrubBehavior = withDefaultFirst(Dash.values(ScrubBehavior), ScrubBehavior.Off),
		leadingIcon = {
			React.None,
			"icons/placeholder/placeholderOn_small",
			"icons/status/private_small",
			"icons/common/search_small",
		},
		trailingIcon = if Flags.FoundationNumberInputBeta
			then {
				React.None,
				"icons/placeholder/placeholderOn_small",
				"icons/status/private_small",
				"icons/common/search_small",
			}
			else nil,
		hasControls = if Flags.FoundationNumberInputBeta then false else nil,
		focusBehavior = if Flags.FoundationTextInputHighlightFix
			then { React.None, unpack(Dash.values(InputFocusBehavior)) }
			else nil,
	},
}
