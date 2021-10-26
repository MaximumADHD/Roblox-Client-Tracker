--[[
	A dialog which prompts the user if they want to purchase robux.
	Diplays only when the user does not have enough robux to purchase
	an item, but they attempted to start a purchase flow for it.

	Props:
		string Name = The name of the product to be purchased.
		string Creator = The creator of the product to be purchased.
		Content Thumbnail = The thumbnail image displayed within the dialog.
		int Cost = The Robux cost of the product to be purchased.
		int Balance = The current user's Robux balance.

		function OnButtonClicked = A callback for when a button is clicked.
			Passes true if the user wants to be taken to the buy robux page.
		function OnClose = A callback for when the dialog is closed.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Libs = Plugin.Libs

local Roact = require(Libs.Roact)
local PurchaseDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseDialog)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization

local BuyRobuxDialog = Roact.PureComponent:extend("BuyRobuxDialog")

function BuyRobuxDialog:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props
		local onButtonClicked = props.OnButtonClicked
		local onClose = props.OnClose
		local thumbnail = props.Thumbnail
		local name = props.Name
		local creator = props.Creator
		local cost = props.Cost
		local balance = props.Balance

		local robuxNeeded = cost - balance
		local primaryString = "RoundPrimary"

		return Roact.createElement(PurchaseDialog, {
			Buttons = {
				{Key = false, Text = localizedContent.PurchaseFlow.Cancel},
				{Key = true, Text = localizedContent.PurchaseFlow.BuyRobux, Style = primaryString},
			},
			OnButtonClicked = onButtonClicked,
			OnClose = onClose,
			Title = localizedContent.PurchaseFlow.InsufficientFundsTitle,
			Prompt = localization:getLocalizedInsufficientFundsPrompt(robuxNeeded, name, creator),
			Thumbnail = thumbnail,
			Balance = balance,
		})
	end)
end

return BuyRobuxDialog
