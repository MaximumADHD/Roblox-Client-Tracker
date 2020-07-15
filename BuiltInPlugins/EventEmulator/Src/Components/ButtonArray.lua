local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local Constants = require(Plugin.Src.Util.Constants)
local INPUT_PANE_LAYOUT = Constants.INPUT_PANE_LAYOUT
local UNIMPLEMENTED_WARNING = Constants.UNIMPLEMENTED_WARNING

local UI = require(Plugin.Packages.Framework.UI)
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

	local theme = props.Theme
	local layout = theme:get("Layout")
	local sizes = theme:get("Sizes")

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, sizes.ShortHeight),
		BackgroundTransparency = 1,
		LayoutOrder = INPUT_PANE_LAYOUT.ConfirmationButtons, --Always draws on the bottom
	}, {
		Layout = Roact.createElement("UIListLayout", layout.Horizontal),
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
	Theme = ContextServices.Theme,
})

return ButtonArray