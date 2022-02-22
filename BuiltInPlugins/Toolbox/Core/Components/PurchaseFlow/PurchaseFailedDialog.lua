--[[
	A dialog to display that a purchase has failed.

	Props:
		string Name = The name of the product to purchase.

		function OnButtonClicked = A callback for when a button is clicked.
			Passes true if the user wants to retry the purchase.
		function OnClose = A callback for when the dialog is closed.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local StudioUI = require(Packages.Framework).StudioUI
local StyledDialog = StudioUI.StyledDialog

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Constants = require(Plugin.Core.Util.Constants)
local Dialog = Constants.Dialog

local withLocalization = ContextHelper.withLocalization

local PurchaseDialog = Roact.PureComponent:extend("PurchaseDialog")

function PurchaseDialog:render()
	return withLocalization(function(localization, localizedContent)
		return self:renderContent(nil, localization, localizedContent)
	end)
end

function PurchaseDialog:renderContent(theme, localization, localizedContent)
	local props = self.props
	local onButtonClicked = props.OnButtonClicked
	local onClose = props.OnClose
	local name = props.Name

	theme = self.props.Stylizer

	return Roact.createElement(StyledDialog, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Title = localizedContent.PurchaseFlow.BuyTitle,
		MinContentSize = Vector2.new(Dialog.PROMPT_SIZE.X.Offset, Dialog.DETAILS_SIZE.Y.Offset),
		Buttons = {
			{ Key = false, Text = localizedContent.PurchaseFlow.Cancel },
			{ Key = true, Text = localizedContent.PurchaseFlow.Retry, Style = "RoundPrimary" },
		},
		OnButtonPressed = onButtonClicked,
		OnClose = onClose,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Header = Roact.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = Dialog.HEADER_SIZE,
			BackgroundTransparency = 1,
			LayoutOrder = 1,

			Text = localizedContent.PurchaseFlow.FailedHeader,
			TextSize = Constants.FONT_SIZE_TITLE,
			Font = Constants.FONT_BOLD,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = theme.purchaseDialog.promptText,
		}),

		Details = Roact.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = Dialog.DETAILS_SIZE,
			Position = Dialog.DETAILS_POSITION,
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			LayoutOrder = 2,

			Text = localization:getPurchaseFailedDetails(name),
			TextSize = Constants.FONT_SIZE_LARGE,
			Font = Constants.FONT,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.purchaseDialog.promptText,
			TextWrapped = true,
		}),
	})
end

PurchaseDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(PurchaseDialog)

return PurchaseDialog
