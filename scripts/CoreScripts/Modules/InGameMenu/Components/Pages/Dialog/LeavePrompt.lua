local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Components = script.Parent.Parent.Parent

local GameIcon = require(Components.GameIcon)

local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local SecondaryButton = UIBlox.App.Button.SecondaryButton

-- TODO need to be replaced by uiBlox
-- https://jira.rbx.com/browse/UIBLOX-147
local ThemedTextLabel = require(Components.ThemedTextLabel)
local withStyle = UIBlox.Core.Style.withStyle

local ITEM_PADDING = 24

local BUTTON_PADDING = 12
local BUTTON_WIDTH = 353
local BUTTON_HEIGHT = 36

local LeavePrompt = Roact.PureComponent:extend("LeavePrompt")

LeavePrompt.validateProps = t.strictInterface({
	titleText = t.string,
	bodyText = t.string,
	confirmText = t.string,
	cancelText = t.string,
	onConfirm = t.callback,
	onCancel = t.callback,
})

function LeavePrompt:render()
	return withStyle(function(style)
		local font = style.Font
		return Roact.createElement("ImageButton", {
			Size = UDim2.fromScale(1, 1),
			AutoButtonColor = false,
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, ITEM_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			GameThumbnail = Roact.createElement(GameIcon, {
				gameId = game.gameId,
				iconSize = 100,
				layoutOrder = 1,
			}),
			TitleText = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header1",
				themeKey = "TextEmphasis",
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, font.Header1.RelativeSize * font.BaseSize + 4),
				Text = self.props.titleText,
			}),
			BodyText = Roact.createElement(ThemedTextLabel, {
				fontKey = "Body",
				themeKey = "TextDefault",
				LayoutOrder = 3,
				Size = UDim2.fromOffset(BUTTON_WIDTH, 2 * (font.Body.RelativeSize * font.BaseSize + 4)),
				Text = self.props.bodyText,
				TextWrapped = true,
			}),
			ButtonGroup = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(BUTTON_WIDTH, 2 * BUTTON_HEIGHT + BUTTON_PADDING),
				LayoutOrder = 4,
			}, {
				ConfirmButton = Roact.createElement(PrimarySystemButton, {
					layoutOrder = 4,
					position = UDim2.fromOffset(0, 0),
					size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT),
					onActivated = self.props.onConfirm,
					text = self.props.confirmText,
				}),
				CancelButton = Roact.createElement(SecondaryButton, {
					layoutOrder = 5,
					position = UDim2.fromOffset(0, BUTTON_HEIGHT + BUTTON_PADDING),
					size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT),
					onActivated = self.props.onCancel,
					text = self.props.cancelText,
				}),
			}),
		})
	end)
end

return LeavePrompt
