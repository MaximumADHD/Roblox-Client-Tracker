--[[
	A dialog to display that a purchase has succeeded.

	Props:
		string Name = The name of the product to purchase.
		int Balance = The current user's Robux balance.
		bool IsFree = Whether the plugin is a free plugin.

		function OnClose = A callback for when the dialog is closed.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Libs = Plugin.Libs

local Roact = require(Libs.Roact)
local UILibrary = require(Libs.UILibrary)
local StyledDialog = UILibrary.Component.StyledDialog

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)
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
		local onClose = props.OnClose
		local name = props.Name
		local balance = props.Balance or "---"
		local isFree = props.IsFree

		local textWidth = Constants.getTextSize(localizedContent.PurchaseFlow.CurrentBalance,
			Constants.FONT_SIZE_MEDIUM).X

		local title = isFree and localizedContent.PurchaseFlow.FreeTitle
			or localizedContent.PurchaseFlow.BuyTitle
		local header = isFree and localizedContent.PurchaseFlow.FreeSuccessHeader
			or localizedContent.PurchaseFlow.SuccessHeader

		return Roact.createElement(StyledDialog, {
			Buttons = {
				{Key = true, Text = localizedContent.PurchaseFlow.OK, Style = "Primary"},
			},
			OnButtonClicked = onClose,
			OnClose = onClose,
			Size = Dialog.SIZE,
			Resizable = false,
			BorderPadding = Dialog.BORDER_PADDING,
			ButtonHeight = Dialog.BUTTON_SIZE.Y,
			ButtonWidth = Dialog.BUTTON_SIZE.X,
			ButtonPadding = Dialog.BUTTON_PADDING,
			TextSize = Constants.FONT_SIZE_LARGE,
			Title = title,
			Modal = true,
		}, {
			Header = Roact.createElement("TextLabel", {
				Size = Dialog.HEADER_SIZE,
				BackgroundTransparency = 1,

				Text = header,
				TextSize = Constants.FONT_SIZE_TITLE,
				Font = Constants.FONT_BOLD,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.purchaseDialog.promptText,
			}),

			Details = Roact.createElement("TextLabel", {
				Size = Dialog.DETAILS_SIZE,
				Position = Dialog.DETAILS_POSITION,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,

				Text = localization:getPurchaseSuccessDetails(name),
				TextSize = Constants.FONT_SIZE_LARGE,
				Font = Constants.FONT,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextColor3 = theme.purchaseDialog.promptText,
				TextWrapped = true,
			}),

			Balance = Roact.createElement("Frame", {
				Size = Dialog.BALANCE_SIZE,
				Position = UDim2.new(0, 0, 1, 10),
				AnchorPoint = Vector2.new(0, 1),
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
	end)
end

return PurchaseDialog
