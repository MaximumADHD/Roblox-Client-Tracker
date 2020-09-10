--[[
	NumberTextInput
	Props:
		number LayoutOrder = 0
		string Key : Internal string passed back to the parent
		string Label : Localized text to display next to the text box
		number Value
		number Min optional
		number Max optional
		number Precision optional : How many decimal places to round the number too
		callback OnFocusLost(string key, bool enterPressed, string text, bool isValid)
		callback OnValueChanged(string key, string text, bool isValid)

		See LabeledTextInput for more
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local getUILibraryLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.getLocalization or nil

local ToolParts = script.Parent
local LabeledTextInput = require(ToolParts.LabeledTextInput)

local MAX_GRAPHEMES = 12

local function roundNumber(number, places)
	places = places or 3
	local shift = 10^places
	return math.floor((number * shift) + 0.5) / shift
end

local NumberTextInput = Roact.PureComponent:extend("NumberTextInput")

NumberTextInput.defaultProps = {
	Width = UDim.new(0, 136),
	MaxGraphemes = MAX_GRAPHEMES,
}

function NumberTextInput:init(props)
	self.isValid = true

	self.handlePrecision = function(text)
		if self.props.Precision and tonumber(text) then
			return roundNumber(tonumber(text), self.props.Precision)
		end
		return text
	end

	self.onFocusLost = function(enterPressed, text)
		local newText = self.handlePrecision(text)
		if self.props.OnFocusLost then
			self.props.OnFocusLost(self.props.Key, enterPressed, newText, self.isValid)
		end
		return newText
	end

	self.getLocalization = function()
		if FFlagTerrainToolsUseDevFramework then
			return self.props.Localization:get()
		else
			return getUILibraryLocalization(self)
		end
	end

	self.isTextValid = function(text)
		local number = tonumber(text)

		local isValid
		local warningMessage

		if number then
			if self.props.Min and number < self.props.Min then
				isValid = false
				warningMessage = self.getLocalization():getText("Warning", "MinimumSize", self.props.Min)
			elseif self.props.Max and number > self.props.Max then
				isValid = false
				warningMessage = self.getLocalization():getText("Warning", "MaximumSize", self.props.Max)
			else
				isValid = true
			end
		else
			isValid = false
			warningMessage = self.getLocalization():getText("Warning", "InvalidNumber")
		end

		if isValid then
			return true, nil
		else
			return false, warningMessage
		end
	end

	self.validateText = function(text)
		local isValid, warningMessage = self.isTextValid(text)
		self.isValid = isValid

		if self.props.OnValueChanged then
			self.props.OnValueChanged(self.props.Key, text, self.isValid)
		end

		if self.isValid then
			return text, nil
		else
			return text, warningMessage
		end
	end

	self.isValid = self.isTextValid(self.props.Value)
end

function NumberTextInput:render()
	local newProps = Cryo.Dictionary.join(self.props, {
		-- NumberTextInput wants "Value" but LabeledTextInput wants "Text"
		Value = Cryo.None,
		Text = self.handlePrecision(self.props.Value),

		OnFocusLost = self.onFocusLost,
		ValidateText = self.validateText,

		Key = Cryo.None,
		Min = Cryo.None,
		Max = Cryo.None,
		Precision = Cryo.None,
		OnValueChanged = Cryo.None,
	})

	return Roact.createElement(LabeledTextInput, newProps)
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(NumberTextInput, {
		Localization = ContextItems.UILibraryLocalization,
	})
end

return NumberTextInput
