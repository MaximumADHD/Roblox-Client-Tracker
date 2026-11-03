--[[
	A dialog that shows when the thumbnails that have been selected for upload have been rejected.
    This dialog wraps StyledDialog.

	Required Props:
		boolean Enabled: Whether the dialog is currently visible.
		callback OnClose: callback fired when the X button attached to the widget is pressed.
        list Files: List of files that were rejected.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Localization Localization: A Localization ContextItem, which is provided via withContext.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local Components = Framework.UI.Components
local TextLabel = require(Components.TextLabel)
local BulletList = require(Components.BulletList)
local StyledDialog = require(Components.StyledDialog)
local Resources = require(Framework.Resources)

local Util = require(Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local getFileMaxSizeBytesOrDefault = require(Framework.Util.getFileMaxSizeBytesOrDefault)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local DFIntFileMaxSizeBytes = getFileMaxSizeBytesOrDefault()

local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local COMPONENT_NAME = "MultiImagePicker"

export type Props = {
	Enabled: boolean,
	OnClose: () -> (),
	Files: { string },
}

type _Props = Props & {
	Localization: any,
	Theme: any,
}

local RejectedThumbnailDialog = Roact.Component:extend("RejectedThumbnailDialog")

function RejectedThumbnailDialog:render()
	local props: _Props = self.props

	local files = if props.Files ~= nil then props.Files else {}
	local localization = props.Localization
	local theme = props.Theme

	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(StyledDialog, {
		Buttons = {
			{
				Key = "OK",
				Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ReplyOK"),
			},
		},
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		Enabled = props.Enabled,
		MinContentSize = Vector2.new(460, 100 + #files * theme.FontStyle.SemiBold.TextSize),
		OnButtonPressed = props.OnClose,
		OnClose = props.OnClose,
		Style = "Alert",
		Title = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "RejectedDialogHeader"),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 16),
		}),
		Header = Roact.createElement(
			TextLabel,
			join(theme.FontStyle.SemiBold, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "RejectedDialogBody", {
					-- Convert to MB
					maxThumbnailSize = (DFIntFileMaxSizeBytes / 10 ^ 6),
				}),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
			})
		),
		List = Roact.createElement(BulletList, {
			Items = files,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			TextTruncate = Enum.TextTruncate.AtEnd,
		}),
	})
end

RejectedThumbnailDialog = ContextServices.withContext({
	Localization = ContextServices.Localization,
})(RejectedThumbnailDialog)

return RejectedThumbnailDialog
