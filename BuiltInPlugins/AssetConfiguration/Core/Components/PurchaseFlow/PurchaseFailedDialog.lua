--[[
	A dialog to display that a purchase has failed.

	Props:
		string Name = The name of the product to purchase.

		function OnButtonClicked = A callback for when a button is clicked.
			Passes true if the user wants to retry the purchase.
		function OnClose = A callback for when the dialog is closed.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Libs = Plugin.Libs

local Roact = require(Libs.Roact)
local UILibrary = require(Libs.UILibrary)
local StyledDialog = UILibrary.Component.StyledDialog

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Constants = require(Plugin.Core.Util.Constants)
local Dialog = Constants.Dialog

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local PurchaseDialog = Roact.PureComponent:extend("PurchaseDialog")

local function composedRender(renderFunc)
	return withLocalization(function(localization, localizedContent)
		return withTheme(function(theme)
			return renderFunc(theme, localization, localizedContent)
		end)
	end)
end

function PurchaseDialog:render()
	return composedRender(function(theme, localization, localizedContent)
		local props = self.props
		local onButtonClicked = props.OnButtonClicked
		local onClose = props.OnClose
		local name = props.Name

		return Roact.createElement(StyledDialog, {
			Buttons = {
				{Key = false, Text = localizedContent.PurchaseFlow.Cancel},
				{Key = true, Text = localizedContent.PurchaseFlow.Retry, Style = "Primary"},
			},
			OnButtonClicked = onButtonClicked,
			OnClose = onClose,
			Size = Dialog.SIZE,
			Resizable = false,
			BorderPadding = Dialog.BORDER_PADDING,
			ButtonHeight = Dialog.BUTTON_SIZE.Y,
			ButtonWidth = Dialog.BUTTON_SIZE.X,
			ButtonPadding = Dialog.BUTTON_PADDING,
			TextSize = Constants.FONT_SIZE_LARGE,
			Title = localizedContent.PurchaseFlow.BuyTitle,
			Modal = false,
		}, {
			Header = Roact.createElement("TextLabel", {
				Size = Dialog.HEADER_SIZE,
				BackgroundTransparency = 1,

				Text = localizedContent.PurchaseFlow.FailedHeader,
				TextSize = Constants.FONT_SIZE_TITLE,
				Font = Constants.FONT_BOLD,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextColor3 = theme.purchaseDialog.promptText,
			}),

			Details = Roact.createElement("TextLabel", {
				Size = Dialog.DETAILS_SIZE,
				Position = Dialog.DETAILS_POSITION,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,

				Text = localization:getPurchaseFailedDetails(name),
				TextSize = Constants.FONT_SIZE_LARGE,
				Font = Constants.FONT,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.purchaseDialog.promptText,
				TextWrapped = true,
			}),
		})
	end)
end

return PurchaseDialog
