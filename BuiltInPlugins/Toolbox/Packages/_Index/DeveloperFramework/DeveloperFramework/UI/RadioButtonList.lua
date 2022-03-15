--[[
	A list of radio buttons that can be selected and shows text after a Background.
	This component only allows one radio button to be selected at a time.

	Required Props:
		table Buttons: A list of buttons to display. Example: { Key = "", Text = "", Description = "", Disabled = false }.

	Optional Props:
		string CurrentSelectedKey: The current selected key if any. Otherwise we'll use the component's state value. Keep this nil if you only care for the component's state value.
		string SelectedKey: The initially selected key.
		number LayoutOrder: The layout order of the frame.
		Enum.FillDirection FillDirection: The direction in which buttons are filled.
		callback OnClick: paramters(string key). Fires when the button is activated and returns back the Key.
		table TextSize: A list of text sizes to display. Example: { MainText = 22, Description = 16, }.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]
local FFlagToolboxPrivatePublicAudioAssetConfig3 = game:GetFastFlag("ToolboxPrivatePublicAudioAssetConfig3")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local prioritize = Util.prioritize
local Typecheck = Util.Typecheck
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local RadioButton = require(Framework.UI.RadioButton)

local FitFrame = require(Framework.Util.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

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

		local prioritySelectedKey
		if FFlagToolboxPrivatePublicAudioAssetConfig3 then
			prioritySelectedKey = prioritize(currentSelectedKey, state.selectedKey)
		else
			prioritySelectedKey = state.selectedKey
		end
		if (prioritySelectedKey ~= key) then
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

	local buttons = props.Buttons
	local currentSelectedKey = props.CurrentSelectedKey
	local fillDirection = props.FillDirection
	local layoutOrder = props.LayoutOrder
	local theme = props.Theme
	local textSize = props.TextSize

	local style
	if THEME_REFACTOR then
		style = self.props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	local radioButtonStyle = style.RadioButtonStyle

	local children = {}

	for index, button in ipairs(buttons) do
		local isSelected
		if FFlagToolboxPrivatePublicAudioAssetConfig3 then
			local prioritySelectedKey = prioritize(currentSelectedKey, state.selectedKey)
			isSelected = (prioritySelectedKey == button.Key)
		else
			isSelected = (state.selectedKey == button.Key)
		end

		children[button.Key] = Roact.createElement(RadioButton, {
			Description = button.Description,
			Disabled = button.Disabled,
			Key = button.Key,
			LayoutOrder = index,
			OnClick = function() self.onClick(button.Key, button.Disabled) end,
			Style = if FFlagToolboxPrivatePublicAudioAssetConfig3 then radioButtonStyle else nil,
			Selected = isSelected,
			Text = button.Text,
			TextSize = textSize,
		})
	end

	return Roact.createElement(FitFrameVertical, {
		BackgroundTransparency = 1,
		contentPadding = UDim.new(0, style.Padding),
		FillDirection = fillDirection,
		LayoutOrder = layoutOrder,
		width = UDim.new(1, 0),
	}, children)
end


RadioButtonList = withContext({
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})(RadioButtonList)



return RadioButtonList
