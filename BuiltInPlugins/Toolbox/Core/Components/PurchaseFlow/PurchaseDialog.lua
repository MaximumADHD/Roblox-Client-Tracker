--[[
	A generic dialog used for purchase flow.

	Props:
		table Buttons = The buttons to use in this dialog.
		string Title = The title text of the dialog.
		string Prompt = The text displayed within the dialog.
		Content Thumbnail = The thumbnail image displayed within the dialog.
		int Balance = The current user's Robux balance.

		function OnButtonClicked = A callback for when a button is clicked.
		function OnClose = A callback for when the dialog is closed.
]]
local FFlagRemoveUILibraryGetTextSize = game:GetFastFlag("RemoveUILibraryGetTextSize")

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local GetTextSize = if FFlagRemoveUILibraryGetTextSize then Framework.Util.GetTextSize else nil

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)
local Constants = require(Plugin.Core.Util.Constants)
local Dialog = Constants.Dialog

local withLocalization = ContextHelper.withLocalization

local PurchaseDialog = Roact.PureComponent:extend("PurchaseDialog")

function PurchaseDialog:render()
	return withLocalization(function(_, localizedContent)
		return self:renderContent(nil, localizedContent)
	end)
end

function PurchaseDialog:renderContent(theme, localizedContent)
	local props = self.props
	local buttons = props.Buttons
	local onButtonClicked = props.OnButtonClicked
	local onClose = props.OnClose
	local title = props.Title
	local prompt = props.Prompt
	local thumbnail = props.Thumbnail
	local balance = props.Balance

	theme = self.props.Stylizer

	local textWidth = if FFlagRemoveUILibraryGetTextSize then GetTextSize(
		localizedContent.PurchaseFlow.CurrentBalance,
		Constants.FONT_SIZE_MEDIUM,
		nil,
		Vector2.new(0, 0)
	).X
	else
		Constants.getTextSize(localizedContent.PurchaseFlow.CurrentBalance, Constants.FONT_SIZE_MEDIUM).X

	local width = Dialog.IMAGE_SIZE.X.Offset + Dialog.PROMPT_SIZE.X.Offset
	local height = Dialog.PROMPT_SIZE.Y.Offset + Dialog.BALANCE_SIZE.Y.Offset

	return Roact.createElement(StyledDialog, {
		Title = title,
		MinContentSize = Vector2.new(width, height),
		Buttons = buttons,
		OnButtonPressed = onButtonClicked,
		OnClose = onClose,
	}, {
		Thumbnail = Roact.createElement("ImageLabel", {
			Size = Dialog.IMAGE_SIZE,
			BackgroundTransparency = 1,
			Image = thumbnail,
		}),

		Prompt = Roact.createElement("TextLabel", {
			Size = Dialog.PROMPT_SIZE,
			Position = UDim2.fromScale(1, 0),
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,

			Text = prompt,
			TextSize = Constants.FONT_SIZE_LARGE,
			Font = Constants.FONT,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = theme.purchaseDialog.promptText,
			TextWrapped = true,
		}),

		Balance = Roact.createElement("Frame", {
			Size = Dialog.BALANCE_SIZE,
			Position = Dialog.BALANCE_POSITION,
			AnchorPoint = Vector2.new(1, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = Dialog.BALANCE_PADDING,
			}),

			Text = Roact.createElement("TextLabel", {
				LayoutOrder = 1,
				Size = UDim2.new(0, textWidth, 1, 0),
				BackgroundTransparency = 1,

				Text = localizedContent.PurchaseFlow.CurrentBalance,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				Font = Constants.FONT,
				TextColor3 = theme.purchaseDialog.balanceText,
			}),

			Icon = Roact.createElement("ImageLabel", {
				LayoutOrder = 2,
				Size = Dialog.ROBUX_SIZE,
				BackgroundTransparency = 1,
				Image = Images.ROBUX_SMALL,
				ImageColor3 = theme.purchaseDialog.balanceText,
			}),

			Robux = Roact.createElement("TextLabel", {
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,

				Text = balance,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				Font = Constants.FONT,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.purchaseDialog.balanceText,
			}),
		}),
	})
end

PurchaseDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(PurchaseDialog)

return PurchaseDialog
