local WIDGET_HEIGHT = 25

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24
local CUSTOM_ITEM_LABEL_HORIZONTAL_POSITION = TOGGLE_BUTTON_WIDTH + 19
local INPUT_BOX_HORIZONTAL_OFFSET = 8
local INPUT_BOX_WIDTH = 175
local INPUT_BOX_HEIGHT = 25

local FFlagRemoveStudioThemeFromPlugins = game:GetFastFlag("RemoveStudioThemeFromPlugins")
local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactStudioWidgets = Plugin.Packages.RoactStudioWidgets

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryRoundTextBox = Framework.SharedFlags.getFFlagRemoveUILibraryRoundTextBox()
local FFlagRemoveUILibraryTitledFrame = SharedFlags.getFFlagRemoveUILibraryTitledFrame()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local TitledFrame = if FFlagRemoveUILibraryTitledFrame then UI.TitledFrame else require(RoactStudioWidgets.TitledFrame)
local TextInput2 = UI.TextInput2

local StateInterfaceTheme = require(Page.Util.StateInterfaceTheme)

local ToggleButton = require(RoactStudioWidgets.ToggleButton)
local RoundTextBox
if not FFlagRemoveUILibraryRoundTextBox then
	RoundTextBox = require(Plugin.Packages.RoactStudioWidgets.RoundTextBox)
end

local calculateTextSize = nil
local getText = nil

local AssetInput = Roact.PureComponent:extend("AssetInput")

if FFlagRemoveUILibraryRoundTextBox then
	function AssetInput:init()
		self.onTextChanged = function(text: string)
			self.currentTextInputBoxText = text
		end
		self.onFocusLost = function()
			if self.props.SetValue then
				self.props.SetValue(self.currentTextInputBoxText)
			end
		end
		self.onValidateText = function(text: string)
			local isValid = text == "" or tonumber(text) ~= nil
			local errorText
			if not isValid then
				local localization = self.props.Localization
				errorText = localization:getText("General", "NumberError")
			end
			return isValid, errorText
		end
	end
end

function AssetInput:render()
	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse:get()
	local theme = if FFlagRemoveStudioThemeFromPlugins then self.props.Stylizer else nil

	self.currentTextInputBoxText = getText(self)

	local customItemText = localization:getText("General", "AvatarOverrideItem")
	local customItemTextSize = calculateTextSize(customItemText, 22, Enum.Font.SourceSans)

	local INPUT_BOX_HORIZONTAL_POSITION = CUSTOM_ITEM_LABEL_HORIZONTAL_POSITION + customItemTextSize.X
		+ INPUT_BOX_HORIZONTAL_OFFSET

	local children = {
		ToggleButton = Roact.createElement(ToggleButton, {
			Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
			Enabled = self.props.IsEnabled,
			IsOn = not self.props.PlayerChoice,
			Mouse = mouse,

			OnClickedOn = function()
				self.props.SetPlayerChoiceValue(false)
			end,

			OnClickedOff = function()
				self.props.SetPlayerChoiceValue(true)
			end
		}),
		CustomItemLabel = Roact.createElement("TextLabel", {
			Position = UDim2.new(0, CUSTOM_ITEM_LABEL_HORIZONTAL_POSITION, 0, 0),
			Size = UDim2.new(0, customItemTextSize.X, 0, TOGGLE_BUTTON_HEIGHT),
			BackgroundTransparency = 1,
			TextColor3 = if FFlagRemoveStudioThemeFromPlugins then (if StateInterfaceTheme.getRadioButtonTextColor(self.props) then StateInterfaceTheme.getRadioButtonTextColor(self.props) else theme.fontStyle.Header.TextColor3) else StateInterfaceTheme.getRadioButtonTextColor(self.props),
			TextTransparency = (self.props.IsEnabled and not self.props.PlayerChoice) and 0 or 0.5,
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			Text = customItemText,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		InputBox = (if FFlagRemoveUILibraryRoundTextBox then
			Roact.createElement(TextInput2, {
				Disabled = not self.props.IsEnabled,
				ErrorText = self.props.ErrorMessage,
				OnTextChanged = self.onTextChanged,
				OnFocusLost = self.onFocusLost,
				OnValidateText = self.onValidateText,
				PlaceholderText = localization:getText("General", "AvatarOverrideId"),
				Position = UDim2.new(0, INPUT_BOX_HORIZONTAL_POSITION, 0, 0),
				Width = INPUT_BOX_WIDTH,
				Text = self.currentTextInputBoxText,
			})
		else
			Roact.createElement(RoundTextBox, {
				Enabled = self.props.IsEnabled,
				PlaceholderText = localization:getText("General", "AvatarOverrideId"),
				MaxLength = 100,
				Text = self.currentTextInputBoxText,
				ErrorMessage = self.props.ErrorMessage,
				Position = UDim2.new(0, INPUT_BOX_HORIZONTAL_POSITION, 0, 0),
				Width = INPUT_BOX_WIDTH,
				Height = INPUT_BOX_HEIGHT,
				ShowToolTip = false,
				PaddingBottom = UDim.new(0, 0),
				PaddingTop = UDim.new(0, 0),
				Mouse = mouse,

				SetText = function(text)
					self.currentTextInputBoxText = text
				end,

				FocusChanged = function(hasFocus, enterPressed)
					if not hasFocus and self.props.SetValue then
						self.props.SetValue(self.currentTextInputBoxText)
					end
				end
			})
		),
	}

	return Roact.createElement(TitledFrame, if FFlagRemoveUILibraryTitledFrame then {
		LayoutOrder = self.props.LayoutOrder or 1,
		Title = self.props.Title,
	} else {
		Title = self.props.Title,
		MaxHeight = WIDGET_HEIGHT,
		LayoutOrder = self.props.LayoutOrder or 1,
	}, children)
end

AssetInput = withContext({
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
	Stylizer = if FFlagRemoveStudioThemeFromPlugins then ContextServices.Stylizer else nil,
})(AssetInput)

calculateTextSize = function(text, textSize, font)
	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end

getText = function(self)
	return (nil == self.props.InputBoxText or "0" == self.props.InputBoxText) and "" or self.props.InputBoxText
end

return AssetInput
