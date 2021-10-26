--[[
	This component is used to manage slider and timeTextbox components. Both will be used to set the range we want to
	search for audio. Changes in the timeTextbox will be reflected in the slider and vis versa.

	Required Props:
		number minDuration: the lower limit of the audio search.
		number maxDuration: the upper limit of the audio search.
		callback onDurationChange: callback to notice parent component about the min and max length for audio search.
]]
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local Constants = require(Plugin.Core.Util.Constants)
local TimeTextBox = require(Plugin.Core.Components.SearchOptions.TimeTextBox)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext
local RangeSlider = require(Libs.Framework).UI.RangeSlider
local Util = require(Libs.Framework).Util
local FitFrameVertical = Util.FitFrame.FitFrameVertical

local MAX_DURATION = Constants.MAX_AUDIO_SEARCH_DURATION
local MIN_DURATION = Constants.MIN_AUDIO_SEARCH_DURATION
local TEXTBOX_SIZE = Vector2.new(80, 32)
local TEXTBOX_MARGIN = Vector2.new(6, 12)

local AudioSearch = Roact.PureComponent:extend("AudioSearch")

function AudioSearch:init(props)
	self.onMinDurationChange = function(newValue)
		if newValue ~= self.props.minDuration then
			self.props.onDurationChange(newValue, self.props.maxDuration)
		end
	end

	self.onMaxDurationChange = function(newValue)
		if newValue ~= self.props.maxDuration then
			self.props.onDurationChange(self.props.minDuration, newValue)
		end
	end

	self.onSliderChange = function(lowerValue, upperValue)
		upperValue = math.max(1, upperValue)
		self.props.onDurationChange(lowerValue, upperValue)
	end
end

function AudioSearch:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function AudioSearch:renderContent(theme)
	local props = self.props
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end

	local minDuration = props.minDuration
	local maxDuration = props.maxDuration

	local audioTheme = theme.searchOptions.audioSearch

	local localization = props.Localization
	local toText = localization:getText("General", "SearchOptionAudioTo")

	return Roact.createElement(FitFrameVertical, {
		BackgroundTransparency = 1,
		contentPadding = UDim.new(0, TEXTBOX_MARGIN.Y),
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		width = UDim.new(1, 0),
	}, {
		AudioDuration = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, TEXTBOX_SIZE.Y),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Padding = UDim.new(0, TEXTBOX_MARGIN.X),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),

			MinTextBox = Roact.createElement(TimeTextBox, {
				currentValue = minDuration,
				defaultValue = 0,
				layoutOrder = 1,
				max = maxDuration,
				min = 0,
				onDurationChange = self.onMinDurationChange,
				size = UDim2.new(0, TEXTBOX_SIZE.X, 0, TEXTBOX_SIZE.Y),
			}),

			ToLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(0, 20, 1, 0),
				Text = toText,
				TextColor3 = audioTheme.textColor,
			}),

			MaxTextBox = Roact.createElement(TimeTextBox, {
				currentValue = maxDuration,
				defaultValue = MAX_DURATION,
				layoutOrder = 3,
				max = MAX_DURATION,
				min = minDuration,
				onDurationChange = self.onMaxDurationChange,
				size = UDim2.new(0, TEXTBOX_SIZE.X, 0, TEXTBOX_SIZE.Y),
			}),
		}),

		RangeSlider = Roact.createElement(RangeSlider, {
			LayoutOrder = 2,
			LowerRangeValue = minDuration,
			UpperRangeValue = maxDuration,
			Min = MIN_DURATION,
			Max = MAX_DURATION,
			OnValuesChanged = self.onSliderChange,
			Size = UDim2.new(1, 0, 0, 20),
			SnapIncrement = 1,
		}),
	})
end

if FFlagToolboxWithContext then
	AudioSearch = withContext({
		Localization = ContextServices.Localization,
		Stylizer = FFlagToolboxRemoveWithThemes and ContextServices.Stylizer or nil,
	})(AudioSearch)
else
	ContextServices.mapToProps(AudioSearch, {
		Localization = ContextServices.Localization,
		Stylizer = FFlagToolboxRemoveWithThemes and ContextServices.Stylizer or nil,
	})
end


return AudioSearch
