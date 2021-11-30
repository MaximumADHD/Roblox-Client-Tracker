local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local StudioUI = Framework.StudioUI
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel

local ChooseRecordingNamePopUp = Roact.PureComponent:extend("ChooseRecordingNamePopUp")

function ChooseRecordingNamePopUp:init(props)
	assert(props.OnSaveButtonPressed, "OnSaveButtonPressed prop not defined")
	assert(props.OnCancelButtonPressed, "OnCancelButtonPressed prop not defined")
	assert(props.MessageLocalizationKey, "MessageLocalizationKey prop not defined")

	self:setState({
		dialogInputValue = props.DefaultInputValue or "",
	})

	self.onTextInputChanged = function(newValue: string)
		self:setState({
			dialogInputValue = newValue,
		})
	end
end

function ChooseRecordingNamePopUp:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	return Roact.createElement(StudioUI.StyledDialog, {
		Title = localization:getText("ChooseRecordingNamePopUp", "Title"),
		OnClose = props.OnCancelButtonPressed,
		OnButtonPressed = function(key)
			if key == "Save" then
				props.OnSaveButtonPressed(self.state.dialogInputValue)
			elseif key == "Cancel" then
				props.OnCancelButtonPressed()
			end
		end,
		Buttons = {
			{
				Key = "Save",
				Text = localization:getText("ChooseRecordingNamePopUp", "SaveButtonName"),
				Style = "RoundPrimary",
			},
			{
				Key = "Cancel",
				Text = localization:getText("ChooseRecordingNamePopUp", "CancelButtonName"),
				Style = "Round",
			},
		},
		MinContentSize = style.ContentSize,
	}, {
		Container = Roact.createElement(Pane, {
			Size = style.PanelSize,
			Position = style.PanelPosition,
			Spacing = style.PaddingPx,
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			Message = Roact.createElement(TextLabel, {
				Size = style.DialogMessageSize,
				Text = localization:getText("ChooseRecordingNamePopUp", props.MessageLocalizationKey,
					{numBytes = props.MessageLocalizationArgs[1]}
				),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				LayoutOrder = 1,
			}),
			Input = Roact.createElement(UI.TextInput, {
				Size = style.TextInputSize,
				Text = self.state.dialogInputValue,
				OnTextChanged = self.onTextInputChanged,
				Style = "RoundedBorder",
				PlaceholderText = "",
				LayoutOrder = 2,
			}),
		}),
	})
end

ChooseRecordingNamePopUp = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(ChooseRecordingNamePopUp)

return ChooseRecordingNamePopUp
