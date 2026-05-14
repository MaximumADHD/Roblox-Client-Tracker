--[[
	A confirmation dialog when the thumbnail is deleted. This dialog wraps StyledDialog.

	Required Props:
		boolean Enabled: Whether the dialog is currently visible.
		callback DeleteThumbnail: Function that is called when the user confirms that the thumbnail should be deleted.
		callback OnClose: callback fired when the X button attached to the widget is pressed.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Localization Localization: A Localization ContextItem, which is provided via withContext.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local TextService = game:GetService("TextService")

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local Components = Framework.UI.Components
local TextLabel = require(Components.TextLabel)
local StyledDialog = require(Components.StyledDialog)
local Resources = require(Framework.Resources)

local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local COMPONENT_NAME = "MultiImagePicker"

export type Props = {
	Enabled: boolean,
	DeleteThumbnail: () -> (),
	OnClose: () -> (),
	Theme: { [string]: any },
}

type _Props = Props & {
	Localization: any,
}

local DeleteThumbnailDialog = Roact.Component:extend("DeleteThumbnailDialog")

function DeleteThumbnailDialog:render()
	local props: _Props = self.props
	local theme = props.Theme
	local deleteThumbnailDialogTheme = theme.DeleteThumbnailDialog
	local localization = props.Localization

	local deleteDialogBody = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "DeleteDialogBody")
	local deleteDialogBodySize = TextService:GetTextSize(
		deleteDialogBody,
		theme.FontStyle.Normal.TextSize,
		theme.FontStyle.Normal.Font,
		Vector2.new(deleteThumbnailDialogTheme.MinContentWidth, deleteThumbnailDialogTheme.MinContentHeight)
	)

	return Roact.createElement(StyledDialog, {
		Buttons = {
			{
				Key = false,
				Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ReplyNo"),
				Style = "RoundLargeText",
			},
			{
				Key = true,
				Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ReplyYes"),
				Style = "RoundLargeTextPrimary",
			},
		},
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		Enabled = props.Enabled,
		MinContentSize = Vector2.new(deleteThumbnailDialogTheme.MinContentWidth, deleteDialogBodySize.Y),
		OnButtonPressed = function(didApply)
			props.OnClose()

			if didApply then
				props.DeleteThumbnail()
			end
		end,
		OnClose = props.OnClose,
		Style = "Alert",
		Title = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "DeleteDialogHeader"),
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
	Localization = ContextServices.Localization,
})(DeleteThumbnailDialog)

return DeleteThumbnailDialog
