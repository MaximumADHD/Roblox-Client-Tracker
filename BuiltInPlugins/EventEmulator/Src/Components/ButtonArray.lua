local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local Constants = require(Plugin.Src.Util.Constants)
local INPUT_PANE_LAYOUT = Constants.INPUT_PANE_LAYOUT
local UNIMPLEMENTED_WARNING = Constants.UNIMPLEMENTED_WARNING

local UI = Framework.UI
local Button = UI.Button

local ButtonArray = Roact.PureComponent:extend("ButtonArray")

local defaultBehaviour = function ()
	warn(UNIMPLEMENTED_WARNING)
end

function ButtonArray:render()
	local props = self.props
	local onClearClicked = props.OnClearClicked or defaultBehaviour
	local onSaveClicked = props.OnSaveClicked or defaultBehaviour
	local onSendClicked = props.OnSendClicked or defaultBehaviour

	local theme, layout, sizes
	if THEME_REFACTOR then
		theme = props.Stylizer
		layout = theme.Layout.Horizontal
		sizes = theme.Sizes
	else
		theme = props.Theme
		layout = theme:get("Layout").Horizontal
		sizes = theme:get("Sizes")
	end


	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, sizes.ShortHeight),
		BackgroundTransparency = 1,
		LayoutOrder = INPUT_PANE_LAYOUT.ConfirmationButtons, --Always draws on the bottom
	}, {
		Layout = Roact.createElement("UIListLayout", layout),
		Clear = Roact.createElement(Button,{
			Size = UDim2.new(0, sizes.ConfirmationButtonWidth, 1, 0),
			Text = "Clear",
			LayoutOrder = 1,
			OnClick = onClearClicked,
		}),
		Save = Roact.createElement(Button, {
			Size = UDim2.new(0, sizes.ConfirmationButtonWidth, 1, 0),
			Text = "Save",
			LayoutOrder = 2,
			OnClick = onSaveClicked,
		}),
		Send = Roact.createElement(Button, {
			Size = UDim2.new(0, sizes.ConfirmationButtonWidth, 1, 0),
			Text = "Send",
			LayoutOrder = 3,
			OnClick = function ()
				onSendClicked()
			end,
		}),
	})
end

ContextServices.mapToProps(ButtonArray, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return ButtonArray