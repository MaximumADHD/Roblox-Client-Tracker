--[[
	A list of radio buttons that can be selected and shows text after a Background.
	This component only allows one radio button to be selected at a time.

	Required Props:
		table Buttons: A list of buttons to display. Example: { Key = "", Text = "", Description = "", Disabled = false, Tooltip = "" }.

	Optional Props:
		Enum.AutomaticSize AutomaticSize: Automatic sizing.
		string CurrentSelectedKey: The current selected key if any. Otherwise we'll use the component's state value. Keep this nil if you only care for the component's state value.
		string SelectedKey: The initially selected key.
		number LayoutOrder: The layout order of the frame.
		Enum.FillDirection FillDirection: The direction in which buttons are filled.
		callback OnClick: paramters(string key). Fires when the button is activated and returns back the Key.
		table TextSize: A list of text sizes to display. Example: { MainText = 22, Description = 16, }.
		boolean TextWrapped: Whether or not the description is text wrapped.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		UDim2 Size: The size of the component.
		Enum.TextXAlignment TextXAlignment: The X alignment of the text.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local prioritize = Util.prioritize
local Typecheck = require(Framework.Util.Typecheck)

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local RadioButton = require(UI.Components.RadioButton)

local RadioButtonList = Roact.PureComponent:extend("RadioButtonList")
Typecheck.wrap(RadioButtonList, script)

RadioButtonList.defaultProps = {
	OnClick = function() end,
}

function RadioButtonList:init()
	self.state = {
		selectedKey = self.props.SelectedKey,
	}

	self.onClick = function(key, isDisabled)
		local props = self.props
		local state = self.state

		local currentSelectedKey = props.CurrentSelectedKey
		local onClick = props.OnClick

		if isDisabled then
			return
		end

		local prioritySelectedKey = prioritize(currentSelectedKey, state.selectedKey)
		if prioritySelectedKey ~= key then
			onClick(key)
			self:setState({
				selectedKey = key,
			})
		end
	end
end

function RadioButtonList:render()
	local props = self.props
	local state = self.state

	local automaticSize = self.props.AutomaticSize
	local buttons = props.Buttons
	local currentSelectedKey = props.CurrentSelectedKey
	local fillDirection = props.FillDirection
	local layoutOrder = props.LayoutOrder
	local textSize = props.TextSize

	local style = props.Stylizer

	local radioButtonStyle = style.RadioButtonStyle

	local children = {}

	local textWrapped = prioritize(self.props.TextWrapped, style.TextWrapped)
	local textXAlignment = prioritize(self.props.TextXAlignment, style.TextXAlignment)
	local verticalAlignment = prioritize(self.props.VerticalAlignment, style.VerticalAlignment)

	for index, button in ipairs(buttons) do
		local prioritySelectedKey = prioritize(currentSelectedKey, state.selectedKey)
		local isSelected = prioritySelectedKey == button.Key

		local size
		if automaticSize == Enum.AutomaticSize.Y then
			size = UDim2.new(1, 0, 0, 0)
		end

		children[button.Key] = Roact.createElement(RadioButton, {
			AutomaticSize = automaticSize,
			Description = button.Description,
			LinkProps = button.LinkProps,
			Disabled = button.Disabled,
			Key = button.Key,
			LayoutOrder = index,
			OnClick = function()
				self.onClick(button.Key, button.Disabled)
			end,
			Size = size,
			Style = radioButtonStyle,
			Selected = isSelected,
			Text = button.Text,
			TextSize = textSize,
			TextWrapped = textWrapped,
			TextXAlignment = textXAlignment,
			Tooltip = button.Tooltip,
			VerticalAlignment = verticalAlignment,
		})
	end
	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Spacing = UDim.new(0, style.Padding),
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = prioritize(fillDirection, style.FillDirection, Enum.FillDirection.Vertical),
		LayoutOrder = layoutOrder,
	}, children)
end

RadioButtonList = withContext({
	Stylizer = ContextServices.Stylizer,
})(RadioButtonList)

return RadioButtonList
