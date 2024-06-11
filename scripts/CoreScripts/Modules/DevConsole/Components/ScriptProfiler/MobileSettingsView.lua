--!strict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ScriptContext = game:GetService("ScriptContext")

local ProfilerUtil = require(script.Parent.ProfilerUtil)

local Components = script.Parent.Parent.Parent.Components
local DropDown = require(Components.DropDown)

local Actions = script.Parent.Parent.Parent.Actions
local SetScriptProfilerState = require(Actions.SetScriptProfilerState)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding * 2
local SMALL_FRAME_HEIGHT = Constants.UtilityBarFormatting.SmallFrameHeight

local HEADER_FONT = Constants.Font.MainWindowHeader
local FONT = Constants.Font.MainWindow
local TEXT_SIZE = Constants.MicroProfilerFormatting.ButtonTextSize
local TEXT_COLOR = Constants.Color.Text

local BACKGROUND_COLOR = Constants.Color.UnselectedGray
local BUTTON_UNSELECTED = Constants.Color.UnselectedGray
local BUTTON_SELECTED = Constants.Color.SelectedBlue

local BUTTON_COLOR = Constants.Color.UnselectedGray

local ROW_HEIGHT = SMALL_FRAME_HEIGHT
local OFFSET = 0.10
local ROW_VALUE_WIDTH = 0.8

local BUTTON_WIDTH = Constants.MicroProfilerFormatting.ButtonWidth

local ARROW_SIZE = Constants.GeneralFormatting.DropDownArrowHeight
local ARROW_OFFSET = ARROW_SIZE / 2
local OPEN_ARROW = Constants.Image.DownArrow

local FFlagScriptProfilerShowPlugins = game:DefineFastFlag("ScriptProfilerShowPlugins2", false)

local function makeFormattedStringTable(src: {}, formatFn: (any) -> string)
	local r = table.create(#src)

	for _, v in src do
		table.insert(r, formatFn(v))
	end

	return r
end

local function formatTimeSelection(v)
	if v == 0 then
		return "Off"
	else
		return ProfilerUtil.formatTimer(v)
	end
end

local DATA_VIEW_DROPDOWN_NAMES = { "Callgraph", "Functions" }

local AVERAGE_SETTINGS_VALUES = { 0, 1, 60, 60 * 5, 60 * 10 }
local AVERAGE_SETTINGS_STRINGS = makeFormattedStringTable(AVERAGE_SETTINGS_VALUES, formatTimeSelection)

local FREQUENCY_SETTINGS_VALUES = { 1000, 10000 }
local FREQUENCY_SETTINGS_STRINGS = makeFormattedStringTable(FREQUENCY_SETTINGS_VALUES, ProfilerUtil.formatFrequency)

local TIMER_SETTINGS_VALUES = { 0, 60, 60 * 5, 60 * 10 }
local TIMER_SETTINGS_STRINGS = makeFormattedStringTable(TIMER_SETTINGS_VALUES, formatTimeSelection)

local MobileSettingsView = Roact.PureComponent:extend("MobileSettingsView")

function MobileSettingsView:init() end

function MobileSettingsView:didMount() end

function MobileSettingsView:didUpdate() end

function MobileSettingsView:GetState(path)
	local state = if self.props.isClientView then self.props.client else self.props.server

	return state[path]
end

function MobileSettingsView:UpdateState(path, value)
	local state = if self.props.isClientView then self.props.client else self.props.server

	local newState = table.clone(state)
	newState[path] = value

	self.props.dispatchSetScriptProfilerState(self.props.isClientView, newState)
end

function MobileSettingsView:renderToggle(name, value, updateFn)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		Label = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, BUTTON_WIDTH, 0, ROW_HEIGHT),
			Position = UDim2.new(OFFSET, 0, 0, 0),
			Text = name,
			Font = HEADER_FONT,
			TextSize = TEXT_SIZE,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			BackgroundColor3 = BUTTON_COLOR,
			BackgroundTransparency = 1,
		}),

		ToggleButton = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, BUTTON_WIDTH * 2, 0, ROW_HEIGHT),
			Position = UDim2.new(1 - OFFSET, -BUTTON_WIDTH * 2, 0, 0),
			BackgroundTransparency = 1,
		}, {
			OffButton = Roact.createElement("TextButton", {
				Size = UDim2.new(0.5, 0, 1, 0),
				Text = "Off",
				Font = HEADER_FONT,
				TextSize = TEXT_SIZE,
				TextColor3 = Constants.Color.Text,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundColor3 = value and BUTTON_UNSELECTED or BUTTON_SELECTED,

				[Roact.Event.Activated] = function()
					updateFn(false)
				end,
			}),

			OnButton = Roact.createElement("TextButton", {
				Size = UDim2.new(0.5, 0, 1, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				Text = "On",
				Font = HEADER_FONT,
				TextSize = TEXT_SIZE,
				TextColor3 = Constants.Color.Text,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundColor3 = value and BUTTON_SELECTED or BUTTON_UNSELECTED,

				[Roact.Event.Activated] = function()
					updateFn(true)
				end,
			}),
		}),
	})
end

function MobileSettingsView:renderStateToggle(name, path, updateFn)
	local value = self:GetState(path)

	return self:renderToggle(name, value, function(newValue)
		self:UpdateState(path, newValue)
	end)
end

function MobileSettingsView:renderDropDown(name, path, formattedValues, values, selected, locked)
	local button: any

	if locked then
		button = Roact.createElement("TextButton", {
			Position = UDim2.new(1 - OFFSET, -BUTTON_WIDTH, 0, 0),
			Size = UDim2.new(0, BUTTON_WIDTH, 0, ROW_HEIGHT),
			Text = formattedValues[selected],
			TextSize = TEXT_SIZE,
			TextColor3 = TEXT_COLOR,
			Font = FONT,

			AutoButtonColor = true,
			BackgroundColor3 = Constants.Color.InactiveBox,
			BackgroundTransparency = 0,
		}, {
			arrow = Roact.createElement("ImageLabel", {
				Image = OPEN_ARROW,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
				Position = UDim2.new(1, -ARROW_SIZE - ARROW_OFFSET, 0.5, -ARROW_OFFSET),
			}),
		})
	else
		button = Roact.createElement("Frame", {
			Position = UDim2.new(1 - OFFSET, -BUTTON_WIDTH, 0, 0),
			Size = UDim2.new(0, BUTTON_WIDTH, 0, ROW_HEIGHT),
		}, {
			Selection = Roact.createElement(DropDown, {
				buttonSize = UDim2.new(1, 0, 0, ROW_HEIGHT),
				dropDownList = formattedValues,
				selectedIndex = selected,
				onSelection = function(index)
					local value = self:GetState(path)

					if typeof(value) == "boolean" then
						value = (index == 2)
					elseif typeof(value) == "number" then
						value = values[index]
					end

					self:UpdateState(path, value)
				end,
			}),
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		BackgroundTransparency = 1,
	}, {
		Label = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, BUTTON_WIDTH, 0, ROW_HEIGHT),
			Position = UDim2.new(OFFSET, 0, 0, 0),
			Text = name,
			Font = HEADER_FONT,
			TextSize = TEXT_SIZE,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			BackgroundColor3 = BUTTON_COLOR,
			BackgroundTransparency = 1,
		}),

		DropDown = button,
	})
end

function MobileSettingsView:render()
	local isProfiling = self:GetState("isProfiling")

	return Roact.createElement("ScrollingFrame", {
		Size = self.props.size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 2,

		AutomaticCanvasSize = Enum.AutomaticSize.Y,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Percentages = self:renderToggle("Percentages", self.props.usePercentages, function(newValue)
			self.props.dispatchSetScriptProfilerUsePercentages(newValue)
		end),

		LiveToggle = self:renderStateToggle("Live Update", "liveUpdate"),

		PluginsToggle = if not FFlagScriptProfilerShowPlugins
			then nil
			else self:renderStateToggle("Show Plugins", "showPlugins"),

		GCToggle = self:renderStateToggle("GC Overhead", "showGc"),

		AverageDropDown = self:renderDropDown(
			"Average",
			"average",
			AVERAGE_SETTINGS_STRINGS,
			AVERAGE_SETTINGS_VALUES,
			table.find(AVERAGE_SETTINGS_VALUES, self:GetState("average")) or 1
		),

		FrequencyDropDown = self:renderDropDown(
			"Frequency",
			"frequency",
			FREQUENCY_SETTINGS_STRINGS,
			FREQUENCY_SETTINGS_VALUES,
			table.find(FREQUENCY_SETTINGS_VALUES, self:GetState("frequency")) or 1,
			isProfiling
		),

		TimerDropDown = self:renderDropDown(
			"Timer"
				.. if isProfiling
					then ": " .. ProfilerUtil.formatTimer(self:GetState("timedProfilingCountdown"))
					else "",
			"timedProfilingDuration",
			TIMER_SETTINGS_STRINGS,
			TIMER_SETTINGS_VALUES,
			table.find(TIMER_SETTINGS_VALUES, self:GetState("timedProfilingDuration")) or 1,
			isProfiling
		),

		ViewDropDown = self:renderDropDown(
			"View",
			"isFunctionsView",
			DATA_VIEW_DROPDOWN_NAMES,
			nil,
			self:GetState("isFunctionsView") and 2 or 1
		),
	})
end

local function mapStateToProps(state, props)
	return {
		usePercentages = state.ScriptProfiler.usePercentages,
		isClientView = state.ScriptProfiler.isClientView,
		client = state.ScriptProfiler.client,
		server = state.ScriptProfiler.server,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetScriptProfilerState = function(isClientView, newState)
			if isClientView then
				dispatch(SetScriptProfilerState(isClientView, nil, newState, nil))
			else
				dispatch(SetScriptProfilerState(isClientView, nil, nil, newState))
			end
		end,

		dispatchSetScriptProfilerUsePercentages = function(usePercentages)
			dispatch(SetScriptProfilerState(nil, usePercentages))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MobileSettingsView)
