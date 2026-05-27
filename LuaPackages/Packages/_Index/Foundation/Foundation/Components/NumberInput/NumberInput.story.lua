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
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local Flags = require(Foundation.Utility.Flags)
local NumberInput = require(Foundation.Components.NumberInput)

type FormatAsStringEntry = {
	name: string,
	callback: ((value: number) -> string)?,
}
local FORMAT_AS_STRING_CALLBACKS: { FormatAsStringEntry } = {
	{
		name = "pixels",
		callback = function(numValue)
			return `{numValue}px`
		end,
	},
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
		name = "currency",
		callback = function(numValue)
			return `${numValue}`
		end,
	},
}

local function DefaultStory(props)
	local controls = props.controls
	local formatAsString = (Dash.find(FORMAT_AS_STRING_CALLBACKS, function(entry)
		return entry.name == controls.formatAsString
	end) :: FormatAsStringEntry).callback

	local value, setValue = React.useState(0)
	local valueBinding, setValueBinding = React.useBinding(0)

	local function handleChange(newValue: number)
		print("Value changed:", newValue)
		if controls.useBindingValue then
			setValueBinding(newValue)
		else
			setValue(newValue)
		end
	end
	return React.createElement(
		View,
		{
			tag = "row align-y-center gap-medium size-full-0 auto-y",
		},
		Dash.map(
			{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
			function(size: InputSize)
				return React.createElement(NumberInput, {
					value = if controls.useBindingValue then valueBinding else value,
					variant = controls.variant,
					controlsVariant = props.controlsVariant,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
					isRequired = controls.isRequired,
					onChanged = handleChange,
					formatAsString = formatAsString,
					label = controls.label,
					size = size,
					width = if controls.width == 0 then nil else UDim.new(0, controls.width),
					maximum = controls.maximum,
					minimum = controls.minimum,
					step = controls.step,
					hint = controls.hint,
					precision = controls.precision,
					leadingIcon = if controls.leadingIcon == React.None then nil else controls.leadingIcon,
					isScrubbable = controls.isScrubbable,
					focusBehavior = controls.focusBehavior,
				})
			end
		)
	)
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

		-- Keyboard: live typing updates - don't create history entries
		-- The value will be committed on focus lost with Commit reason
		if reason == OnChangeCallbackReason.Keyboard then
			return
		end

		-- Drag: consolidate consecutive drag entries into one
		if reason == OnChangeCallbackReason.Drag and lastReasonRef.current == OnChangeCallbackReason.Drag then
			setHistory(function(prev)
				local newHistory = table.clone(prev)
				newHistory[historyIndex] = { value = newValue, reason = reason }
				return newHistory
			end)
		else
			-- Activate, Commit, or first Drag: create a new entry, truncating redo history
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

local defaultStories = Dash.map(Dash.values(NumberInputControlsVariant), function(controlsVariant)
	return {
		name = controlsVariant,
		story = function(props)
			return React.createElement(DefaultStory, Dash.join(props, { controlsVariant = controlsVariant }))
		end,
	}
end)

table.insert(defaultStories, {
	name = "UndoRedoStack",
	story = UndoRedoStackStory,
})

return {
	summary = "NumberInput",
	stories = defaultStories,
	controls = {
		label = "Label",
		hint = "Number from -5 to 100",
		isRequired = { React.None, false, true },
		variant = Dash.values(InputVariant),
		formatAsString = Dash.values(Dash.map(FORMAT_AS_STRING_CALLBACKS, function(entry)
			return entry.name
		end)),
		hasError = false,
		isDisabled = false,
		useBindingValue = false,
		maximum = 100,
		minimum = -5,
		step = 0.2,
		precision = 2,
		width = 0,
		isScrubbable = false,
		leadingIcon = {
			"icons/placeholder/placeholderOn_small",
			"icons/status/private_small",
			"icons/common/search_small",
			React.None,
		},
		focusBehavior = if Flags.FoundationTextInputHighlightFix
			then { React.None, unpack(Dash.values(InputFocusBehavior)) }
			else nil,
	},
}
