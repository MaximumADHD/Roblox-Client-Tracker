local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local Checkbox = UI.Checkbox
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local GroupRenameDialog = Roact.Component:extend("GroupRenameDialog")

local USER_REQUESTED_DIALOG_NEVER_SHOW = "userRequestedRenameDialogNeverShow"

function GroupRenameDialog:init()
	self:setState({
		neverShowCheckboxToggled = false,
		userRequestedDialogNeverShow = false,
	})

	function self.toggleDialogNeverShow()
		self:setState(function(oldState)
			local shouldNeverShow = not oldState.userRequestedDialogNeverShow
			return {
				neverShowCheckboxToggled = shouldNeverShow,
			}
		end)
	end
end

function GroupRenameDialog:render()
	local props = self.props
	local style = props.Stylizer.GroupRenameDialog
	local localization = props.Localization
	local plugin = props.Plugin:get()

	return Roact.createElement(StyledDialog, {
		Style = "Alert",
		Enabled = not self.state.userRequestedDialogNeverShow and props.Enabled,
		Title = localization:getText("RenameWarningDialog", "DialogWindowTitle"),
		MinContentSize = style.DialogMinimumSize,
		Buttons = {
			{ Key = "ok", Text = localization:getText("RenameWarningDialog", "Ok"), },
		},
		OnButtonPressed = function(key)
			props.OnClose()
			plugin:SetSetting(USER_REQUESTED_DIALOG_NEVER_SHOW, self.state.neverShowCheckboxToggled)
			self:setState(function(oldState)
				return {
					userRequestedDialogNeverShow = oldState.neverShowCheckboxToggled
				}
				end
			)
		end,
		OnClose = function()
			props.OnClose()
		end,
	}, {
		Contents = Roact.createElement(Pane, {
			Style = "Box",
			Layout = Enum.FillDirection.Vertical,
			Padding = style.Padding,
			Spacing = style.Spacing,
		}, {
			TextLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				TextWrapped = true,
				Size = style.WarningTextSize,
				Text = localization:getText("RenameWarningDialog", "WarningMessage"),
			}),
			Checkbox = Roact.createElement(Checkbox, {
				LayoutOrder = 2,
				Text = localization:getText("RenameWarningDialog", "DontShowThisWarningAgain"),
				Checked = self.state.neverShowCheckboxToggled,
				OnClick = self.toggleDialogNeverShow,
			}),
		})
	})
end

function GroupRenameDialog:didMount()
	local plugin = self.props.Plugin:get()
	local userRequestedDialogNeverShow = plugin:GetSetting(USER_REQUESTED_DIALOG_NEVER_SHOW)
	self:setState({userRequestedDialogNeverShow = userRequestedDialogNeverShow})
end

GroupRenameDialog = ContextServices.withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(GroupRenameDialog)

return GroupRenameDialog
