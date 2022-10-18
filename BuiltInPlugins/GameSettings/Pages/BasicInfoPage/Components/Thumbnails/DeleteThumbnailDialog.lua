local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local MIN_CONTENT_WIDTH = 300

local DeleteThumbnailDialog = Roact.Component:extend("DeleteThumbnailDialog")

function DeleteThumbnailDialog:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

	local deleteDialogBody = localization:getText("General", "DeleteDialogBody")
	local deleteDialogBodySize = TextService:GetTextSize(
		deleteDialogBody,
		theme.fontStyle.Normal.TextSize,
		theme.fontStyle.Normal.Font,
		Vector2.new(MIN_CONTENT_WIDTH, 1000)
	)

	return Roact.createElement(StyledDialog, {
		Style = "Alert",
		Enabled = props.Enabled,
		Title = localization:getText("General", "DeleteDialogHeader"),
		MinContentSize = Vector2.new(MIN_CONTENT_WIDTH, deleteDialogBodySize.Y),
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		Buttons = {
			{ Key = false, Text = localization:getText("General", "ReplyNo"), Style = "RoundLargeText" },
			{ Key = true, Text = localization:getText("General", "ReplyYes"), Style = "RoundLargeTextPrimary" },
		},
		OnButtonPressed = function(didApply)
			props.OnClose()

			if didApply then
				props.DeleteThumbnail()
			end
		end,
		OnClose = function()
			props.OnClose()
		end,
	}, {
		TextLabel = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			TextWrapped = true,
			Style = "Normal",
			Size = UDim2.fromScale(1, 1),
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = deleteDialogBody,
		}),
	})
end

DeleteThumbnailDialog = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(DeleteThumbnailDialog)

return DeleteThumbnailDialog
