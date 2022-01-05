--[[
	Contains two textBoxes that intakes in minutes and seconds. The component automatically corrects
	textbox input above/below the min/max.

	Required props:
		number currentValue: The current time value in seconds.
		callback onDurationChange: function that intakes total seconds inputted into this component.

	Optional props:
		number defaultValue: the value to default to when there is both the minute or second textboxes are empty.
		number layoutOrder: the layoutOrder of the component.
		number max: maximum allowed time in seconds. Input over this amount will be auto-corrected to be below the max.
		number min: minimum allowed time in seconds. Input below this amount will be auto-corrected to be above the min.
		UDim2 position: the position of the component.
		UDim2 size: the size of the component.
]]
local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme
local Constants = require(Plugin.Core.Util.Constants)
local RoundFrame = require(Plugin.Core.Components.RoundFrame)

local TEXT_BOX_WIDTH = 15

local TimeTextBox = Roact.PureComponent:extend("TimeTextBox")

TimeTextBox.defaultProps = {
	defaultValue = 0,
	max = math.huge,
	min = 0,
}

local function getSeconds(totalTime)
	return (totalTime % 60) or 0
end

local function getMinutes(totalTime)
	return math.floor(totalTime / 60) or 0
end

function TimeTextBox:init()
	self.minuteRef = Roact.createRef()
	self.secondRef = Roact.createRef()

	local totalTime = self.props.currentValue
	self.sec = getSeconds(totalTime)
	self.minute = getMinutes(totalTime)
	self.totalSeconds = totalTime or 0

	self.state = {
		isTextboxFocused = false,
		showSecLabel = false,
	}

	self.getClampedMinute = function(value, props)
		local min = math.max(getMinutes(props.min), 0)
		local max = getMinutes(props.max)
		return math.clamp(value, min, max)
	end

	self.getClampedSec = function(value, props)
		local min = 0
		local max = 59

		local minMinutes = getMinutes(props.min)
		local maxMinutes = getMinutes(props.max)

		if (self.minute <= minMinutes) then
			min = math.max(getSeconds(props.min), min)
		end

		if (self.minute >= maxMinutes) then
			max = math.min(getSeconds(props.max), max)
		end

		return math.clamp(value, min, max)
	end

	self.updateTextboxes = function(isTextboxFocused)
		local renderMin
		local renderSec

		local minute = self.minute
		local sec = self.sec
		local totalSeconds = self.totalSeconds

		if (totalSeconds == self.props.defaultValue) then
			renderMin = ""
			renderSec = ""
		else
			renderMin = minute
			renderSec = (sec > 0) and sec or ""
		end

		self.minuteRef.current.Text = renderMin
		self.secondRef.current.Text = renderSec
	end

	self.onFocused = function()
		self:setState({
			showSecLabel = true,
			isTextboxFocused = true,
		})
	end

	self.onFocusLost = function()
		self.minute = self.getClampedMinute(self.minute, self.props)
		self.sec = self.getClampedSec(self.sec, self.props)
		self.totalSeconds = (60 * self.minute + self.sec)

		self.updateTextboxes(false)

		self:setState({
			hasSeconds = (self.secondRef.current.Text ~= ""),
			showSecLabel = (self.secondRef.current.Text ~= ""),
			isTextboxFocused = false,
		})

		if self.props.onDurationChange then
			self.props.onDurationChange(self.totalSeconds)
		end
	end

	self.onMinuteChanged = function(rbx, input)
		if input == "Text" then
			if (#rbx.Text > 2) or string.find(rbx.Text, "\t") then
				-- Focus on second textBox
				local secondRef = self.secondRef.current
				if secondRef then secondRef:CaptureFocus() end

				-- Prevent user from typing in over 2 characters by reverting text to prev state
				self.minuteRef.current.Text = tonumber(self.minute)
			else
				self.minute = tonumber(rbx.Text) or getMinutes(self.props.defaultValue)

				-- Update sec if text is empty, so that does not use defaultValue
				if not tonumber(self.secondRef.current.Text) then
					self.sec = 0
				end
			end
		end
	end

	self.onSecondChange = function(rbx, input)
		if input == "Text" then
			if #rbx.Text > 2 then
				-- Prevent user from typing in over 2 characters by reverting text to prev state
				self.secondRef.current.Text = tonumber(self.sec)
			else
				self.sec = tonumber(rbx.Text) or 0

				-- Update minute if text is empty, so that does not use defaultValue
				if not tonumber(self.minuteRef.current.Text) then
					self.minute = 0
				end
				spawn(function()
					if not self.secondRef.current then
						return
					end
					self:setState({
						hasSeconds = (self.secondRef.current.Text ~= ""),
					})
				end)
			end
		end
	end
end

function TimeTextBox:didMount()
	self.updateTextboxes(false)
end

function TimeTextBox:willUpdate(nextProps, nextState)
	if (nextProps.min ~= self.props.min)
	or (nextProps.max ~= self.props.max)
	or (nextProps.currentValue ~= self.props.currentValue)
	then
		local seconds = getSeconds(nextProps.currentValue)
		local minutes = getMinutes(nextProps.currentValue)
		self.minute = self.getClampedMinute(minutes, nextProps)
		self.sec = self.getClampedSec(seconds, nextProps)
		self.totalSeconds = (60 * self.minute + self.sec)

		self.updateTextboxes(self.state.isTextboxFocused)

		if self.props.onDurationChange then
			self.props.onDurationChange(self.totalSeconds)
		end
	end
end

function TimeTextBox:render()
	local props = self.props
	local state = self.state

	local theme = props.Stylizer

	local showSecLabel = state.showSecLabel
	showSecLabel = showSecLabel or (self.sec > 0)
	local isTextboxFocused = state.isTextboxFocused

	local defaultSec = getSeconds(props.defaultValue)
	local secPlaceholderText = isTextboxFocused and "0" or defaultSec

	local defaultMinutes = getMinutes(props.defaultValue)
	local minuteDynamicPlaceholderText = state.hasSeconds and "0" or defaultMinutes
	local minutePlaceholderText = isTextboxFocused and minuteDynamicPlaceholderText or defaultMinutes

	local timeTheme = theme.searchOptions.timeTextBox
	local size = props.size
	local position = props.position
	local layoutOrder = props.layoutOrder

	local secondLabel = props.Localization:getText("General", "AbbreviatedSeconds")
	local minuteLabel = props.Localization:getText("General", "AbbreviatedMinutes")

	return Roact.createElement(RoundFrame, {
		BackgroundTransparency = 0,
		BackgroundColor3 = timeTheme.backgroundColor,
		BorderColor3 = isTextboxFocused and timeTheme.selectedBorderColor or timeTheme.borderColor,
		BorderSizePixel = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 0),
			PaddingBottom = UDim.new(0, 0),
			PaddingLeft = UDim.new(0, 5),
			PaddingRight = UDim.new(0, 5),
		}),

		MinuteTextField = Roact.createElement("TextBox", {
			BackgroundTransparency = 1,
			ClearTextOnFocus = false,
			Font = Constants.FONT,
			LayoutOrder = 1,
			Size = UDim2.new(0.5, 0, 1, 0),
			PlaceholderText = minutePlaceholderText,
			PlaceholderColor3 = isTextboxFocused and timeTheme.placeholderTextColor or timeTheme.textColor,
			Text = "",
			TextColor3 = timeTheme.textColor,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 2,

			[Roact.Event.Changed] = self.onMinuteChanged,
			[Roact.Event.Focused] = self.onFocused,
			[Roact.Event.FocusLost] = self.onFocusLost,
			[Roact.Ref] = self.minuteRef,
		}),

		MinuteLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			LayoutOrder = 2,
			Position = UDim2.new(0, TEXT_BOX_WIDTH, 0, 0),
			Size = UDim2.new(0, TEXT_BOX_WIDTH, 1, 0),
			Text = minuteLabel,
			TextColor3 = timeTheme.textColor,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Center,
		}),

		SecondTextField = Roact.createElement("TextBox", {
			BackgroundTransparency = 1,
			ClearTextOnFocus = false,
			Font = Constants.FONT,
			LayoutOrder = 3,
			PlaceholderText = showSecLabel and secPlaceholderText or "",
			PlaceholderColor3 = timeTheme.placeholderTextColor,
			Position = UDim2.new(0.5, 0, 0, 0),
			Size = UDim2.new(0.5, 0, 1, 0),
			Text = "",
			TextColor3 = timeTheme.textColor,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 2,

			[Roact.Event.Changed] = self.onSecondChange,
			[Roact.Event.Focused] = self.onFocused,
			[Roact.Event.FocusLost] = self.onFocusLost,
			[Roact.Ref] = self.secondRef,
		}),

		SecondLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			LayoutOrder = 4,
			Position = UDim2.new(0.5, TEXT_BOX_WIDTH, 0, 0),
			Size = UDim2.new(0, TEXT_BOX_WIDTH, 1, 0),
			Text = secondLabel,
			TextColor3 = timeTheme.textColor,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextTransparency = showSecLabel and 0 or 1,
			TextXAlignment = Enum.TextXAlignment.Center,
		})
	})
end

TimeTextBox = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(TimeTextBox)

return TimeTextBox