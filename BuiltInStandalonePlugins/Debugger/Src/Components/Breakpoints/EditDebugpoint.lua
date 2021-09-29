--[[
	Debugpoint component for Logpoints and Breakpoints.

	Required Props:
		string ScriptName: Script of the Debugpoint
		number LineNumber: Line number of the Debugpoint
		list InputItems: List of props to pass down to  TextInputWithLabel
		callback EnableChange: A callback for when the isEnabled button is toggled.
	Optional Props:
		bool isEnabled: Defaults to True. Is breakpoint/logpoint enabled.
		string conditionDetails: If editing an existing breakpoint/logpoint, display existing condition with this prop
		string logDetails: If editing an existing logpoint, display existing message with this prop.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Pane = UI.Pane
local Button = UI.Button
local Checkbox = UI.Checkbox
local TruncatedTextLabel = UI.TruncatedTextLabel

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local TextService = game:GetService("TextService")
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local TextInputWithLabel = require(Plugin.Src.Components.Breakpoints.TextInputWithLabel)


local LINE_SPACING = 10
local TOGGLE_BUTTON_SIZE = 20
local LABEL_HORIZONTAL_OFFSET = 20
local LABEL_VERTICAL_OFFSET = 25


local MIN_BUTTON_WIDTH = 100
local MIN_BUTTON_HEIGHT = 16
local BUTTON_PADDING = 20

local EditDebugpoint = Roact.PureComponent:extend("EditDebugpoint")

local function calculateTextSize(text, textSize, font)
	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return TextService:GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end

EditDebugpoint.defaultProps = {
	Enabled = true,
}

function EditDebugpoint:render()
	local props = self.props
	local style = self.props.Stylizer
	local localization = props.Localization

	local enabled = props.Enabled
	local onEnableChange = props.OnEnableChange
	local inputItems = props.InputItems
	local scriptName = props.ScriptName
	local lineNumber = props.LineNumber
	local postfix = ": " .. localization:getText("EditDebugpoint", "TitleLine", {LineNumber = lineNumber})

	local enabledLabelText = localization:getText("EditDebugpoint", "EnabledLabel")
	local cancelText = localization:getText("EditDebugpoint", "Cancel")
	local saveText = localization:getText("EditDebugpoint", "Save")

	-- Calculate the size of the Top Row
	local enabledTextSize = calculateTextSize(enabledLabelText, style.TextSize, style.Font)
	local enableSize = TOGGLE_BUTTON_SIZE + enabledTextSize.X

	-- Calculate size of Condition/Log/Option Labels
	local maxLabelWidth = 0
	local maxLabelHeight = 0
	for i = 1, #inputItems do
		local s = calculateTextSize(inputItems[i].LabelText, style.TextSize, style.Font)
		maxLabelWidth = math.max(maxLabelWidth, s.X)
		maxLabelHeight = math.max(maxLabelHeight, s.Y)
	end
	local optionsSize = calculateTextSize(
		localization:getText("EditDebugpoint", "OptionsLabel"),
		style.TextSize, style.Font)
	maxLabelWidth = math.max(maxLabelWidth, optionsSize.X) + LABEL_HORIZONTAL_OFFSET
	maxLabelHeight = math.max(maxLabelHeight, optionsSize.Y) + LABEL_VERTICAL_OFFSET

	-- Calculate size of Cancel/Save Buttons
	local cancelSize = calculateTextSize(cancelText, style.TextSize, style.Font)
	local saveSize = calculateTextSize(saveText, style.TextSize, style.Font)
	local buttonSize = {
		X = math.max(cancelSize.X, saveSize.X, MIN_BUTTON_WIDTH) + BUTTON_PADDING,
		Y = math.max(cancelSize.Y, saveSize.Y, MIN_BUTTON_HEIGHT) + BUTTON_PADDING,
	}

	local inputs = {}
	local baseInputProps = {
		LabelWidth = maxLabelWidth,
		Size = UDim2.new(1, 0, 0, maxLabelHeight),
	}
	for i = 1, #inputItems do
		local inputProps = Cryo.Dictionary.join(baseInputProps, inputItems[i], {LayoutOrder = i})
		inputs[i] = Roact.createElement(TextInputWithLabel, inputProps)
	end

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Padding = 15,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, {
		UpperPane = Roact.createElement(Pane, {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Style = "Box",
			Layout = Enum.FillDirection.Vertical,
			Spacing = LINE_SPACING,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			TopRow = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				Style = "Box",
				LayoutOrder = 1,
				Padding = 0,
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}, {
				TruncatedTextLabel = Roact.createElement(TruncatedTextLabel, {
					Style = "Title",
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(1, -enableSize, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					Text = scriptName .. postfix,
					SuffixLength = string.len(postfix),
				}),
				CheckboxEnable = Roact.createElement(Checkbox, {
					Checked = enabled,
					LayoutOrder = 1,
					OnClick = onEnableChange,
					Text = "isEnabled",
				}),
			}),
			Inputs = Roact.createElement(Pane, {
				Size = UDim2.fromScale(1, 1),
				AutomaticSize = Enum.AutomaticSize.Y,
				Style = "Box",
				Layout = Enum.FillDirection.Vertical,
				Spacing = LINE_SPACING,
				LayoutOrder = 2,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}, inputs),
		}),
		LowerPane = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			Spacing = 10,
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.new(1, 0, 1, 0),
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			Cancel = Roact.createElement(Button, {
				Text = cancelText,
				TextSize = style.TextSize,
				Size = UDim2.new(0, buttonSize.X, 0, buttonSize.Y),
				Style = "Round",
				LayoutOrder = 1,
				OnClick = function() end,
			}),
			Save = Roact.createElement(Button, {
				Text = saveText,
				TextSize = style.TextSize,
				Size = UDim2.new(0, buttonSize.X, 0, buttonSize.Y),
				Style = "Round",
				LayoutOrder = 2,
				OnClick = function() end,
			}),
		})
	})
end

EditDebugpoint = withContext({
	Stylizer = Stylizer,
	Localization = Localization,
})(EditDebugpoint)

return EditDebugpoint
