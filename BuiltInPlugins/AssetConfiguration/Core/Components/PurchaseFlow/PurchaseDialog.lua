--[[
	A generic dialog used for purchase flow.

	Props:
		table Buttons = The buttons to use in this dialog. See StyledDialog
			in the UILibrary for examples.
		string Title = The title text of the dialog.
		string Prompt = The text displayed within the dialog.
		Content Thumbnail = The thumbnail image displayed within the dialog.
		int Balance = The current user's Robux balance.

		function OnButtonClicked = A callback for when a button is clicked.
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
	return withLocalization(function(_, localizedContent)
		return withTheme(function(theme)
			return renderFunc(theme, localizedContent)
		end)
	end)
end

function PurchaseDialog:render()
	return composedRender(function(theme, localizedContent)
		local props = self.props
		local buttons = props.Buttons
		local onButtonClicked = props.OnButtonClicked
		local onClose = props.OnClose
		local title = props.Title
		local prompt = props.Prompt
		local thumbnail = props.Thumbnail
		local balance = props.Balance

		local textWidth = Constants.getTextSize(localizedContent.PurchaseFlow.CurrentBalance,
			Constants.FONT_SIZE_MEDIUM).X

		return Roact.createElement(StyledDialog, {
			Buttons = buttons,
			OnButtonClicked = onButtonClicked,
			OnClose = onClose,
			Size = Dialog.SIZE,
			Resizable = false,
			BorderPadding = Dialog.BORDER_PADDING,
			ButtonHeight = Dialog.BUTTON_SIZE.Y,
			ButtonWidth = Dialog.BUTTON_SIZE.X,
			ButtonPadding = Dialog.BUTTON_PADDING,
			TextSize = Constants.FONT_SIZE_LARGE,
			Title = title,
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
	end)
end

return PurchaseDialog