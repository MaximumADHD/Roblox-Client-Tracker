--[[
	A wrapped style dialog to show a dialog with confirm and cancel

	Required Props:
		callback OnButtonPressed: function to call when click confirm button
		callback OnClose: function to call when close dialog or click cancel button
		string TitleText: A text that will be displayed in the dialog (over the BodyText)
		string BodyText: A text that will be displayed in the dialog (under the TitleText)
		table Buttons: Buttons that will be presented, "Key" key of a button will be passed within OnButtonPressed callback
		table Localization: A Localization ContextItem, which is provided via withContext.
	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		string learnMoreUrl: A URL to an info page
		string learnMoreLabel: The text to show on the learn more link text
]]

local Plugin = script.Parent.Parent.Parent.Parent

local BORDER_PADDING = 20

local CONTENT_SPACING = 10

local TEXT_WIDTH = 450

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local UI = Framework.UI
local LinkText = UI.LinkText
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local GuiService = game:GetService("GuiService")

local StudioUI = Framework.StudioUI
local UI = Framework.UI
local StyledDialog = StudioUI.StyledDialog
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local GetTextSize = Framework.Util.GetTextSize

local WarningDialog = Roact.PureComponent:extend("WarningDialog")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(WarningDialog, script)

local MessageBoxConfirm = "Confirm"

local Colors = Framework.Style.Colors

function WarningDialog:init() end

function WarningDialog:render()
	local props = self.props
	local localization = props.Localization
	local title = props.Title or localization:getText("Dialog", "DefaultTitle")
	local theme = props.Stylizer

	local mediumFontSize = 20
	local learnMoreLabelText = props.learnMoreLabel or localization:getText("FaceCapture", "DefaultLearnMoreLabel")
	local titleText = props.TitleText
	local titleTextFontSize = mediumFontSize
	local titleTextFont = Enum.Font.SourceSansBold
	local titleTextSize = GetTextSize(titleText, titleTextFontSize, titleTextFont, Vector2.new(TEXT_WIDTH, 1000))

	local bodyText = props.BodyText
	local bodyTextFontSize = mediumFontSize
	local bodyTextFont = Enum.Font.SourceSans
	local bodyTextSize = GetTextSize(bodyText, bodyTextFontSize, bodyTextFont, Vector2.new(TEXT_WIDTH, 1000))

	local contentHeight = titleTextSize.Y + CONTENT_SPACING + bodyTextSize.Y
	local defaultSize = Vector2.new(TEXT_WIDTH, contentHeight)

	return Roact.createElement(StyledDialog, {
		Title = title,
		OnClose = props.OnClose,
		BorderPadding = BORDER_PADDING,
		OnButtonPressed = props.OnButtonPressed,
		Buttons = props.Buttons,
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right,
		MinContentSize = defaultSize,
		Modal = true,
	}, {
		Content = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.XY,
			Spacing = CONTENT_SPACING,
		}, {
			Message = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = titleText,
				Font = titleTextFont,
				TextSize = titleTextFontSize,
				TextColor3 = theme.TextColor,
				BackgroundTransparency = 1.0,
				TextWrapped = true,
				LayoutOrder = 1,
			}),

			Message2 = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = bodyText,
				Font = bodyTextFont,
				TextSize = bodyTextFontSize,
				TextColor3 = theme.TextColor,
				BackgroundTransparency = 1.0,
				TextWrapped = true,
				LayoutOrder = 2,
			}),
		}),
		LinkText = props.learnMoreUrl and Roact.createElement(LinkText, {
			LayoutOrder = 3,
			Text = learnMoreLabelText,
			TextYAlignment = Enum.TextYAlignment.Bottom,
			OnClick = function()
				GuiService:OpenBrowserWindow(props.learnMoreUrl)
			end,
			Style = {
				Font = Enum.Font.SourceSans,
				TextColor = Colors.Blue,
				TextSize = 20,
				ShowUnderline = true,
			},
			Position = UDim2.new(0, 0, 0, 157),
		}),
	})
end

WarningDialog = withContext({
	Mouse = ContextServices.Mouse,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(WarningDialog)

return WarningDialog
