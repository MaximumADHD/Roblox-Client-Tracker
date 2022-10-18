--[[
	Asset config's warning dialog box, which consists of a DF StyledDialog along with a
	warning icon and Cancel and Accept buttons.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StyledDialog = Framework.StudioUI.StyledDialog

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local Pane = Framework.UI.Pane
local TextLabel = Framework.UI.Decoration.TextLabel

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local MIN_DIALOG_SIZE = Vector2.new(400, 70)
local SPACING = 5
local ICON_SIZE = 50
local ICON_SPACING = 20

local WarningDialog = Roact.PureComponent:extend("WarningDialog")

local CONFIRMATION_KEYS = {
	Accept = true,
	Cancel = false,
}

function WarningDialog:init()
	self.onButtonPressed = function(isAccepted)
		local props = self.props
		if isAccepted == CONFIRMATION_KEYS.Accept then
			local confirmationKey = props.ConfirmationKey
			props.OnAccepted(confirmationKey)
		else
			props.OnCanceled()
		end
	end
end

function WarningDialog:render()
	local props = self.props
	local theme = props.Stylizer
	local publishAssetTheme = theme.publishAsset

	local acceptText = props.AcceptText
	local cancelText = props.CancelText
	local descriptionText = props.Description
	local enabled = props.Enabled
	local headingText = props.Heading
	local onCanceled = props.OnCanceled
	local titleText = props.Title

	local orderIterator = LayoutOrderIterator.new()

	return Roact.createElement(StyledDialog, {
		Buttons = {
			{ Key = CONFIRMATION_KEYS.Cancel, Text = cancelText },
			{ Key = CONFIRMATION_KEYS.Accept, Text = acceptText },
		},
		Enabled = enabled == true,
		FitTextButtonWidth = true,
		MinContentSize = MIN_DIALOG_SIZE,
		Modal = true,
		OnButtonPressed = self.onButtonPressed,
		OnClose = onCanceled,
		Style = "AssetConfigWarningDialog",
		Title = titleText,
	}, {
		Contents = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			Spacing = ICON_SPACING,
			Size = UDim2.fromScale(1, 1),
		}, {
			Icon = Roact.createElement("ImageLabel", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Image = Images.WARNING_ICON,
				ImageColor3 = publishAssetTheme.warningIconColor,
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			}),

			RightContents = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = 2,
				Spacing = SPACING,
				Size = UDim2.new(1, -ICON_SIZE, 1, 0),
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}, {
				Heading = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = orderIterator:getNextOrder(),
					Size = UDim2.new(1, 0, 0, 0),
					Font = Constants.FONT_BOLD,
					Text = headingText,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				Description = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = orderIterator:getNextOrder(),
					Size = UDim2.new(1, 0, 0, 0),
					Text = descriptionText,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),
		}),
	})
end

WarningDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(WarningDialog)

return WarningDialog
