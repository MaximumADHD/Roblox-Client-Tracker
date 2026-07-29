--!strict

local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Util.React)
local Dash = require(Framework.Parent.Dash)

local IconButton = require(Framework.UI.Components.IconButton)

local useDialogDetailsAction = require(Framework.UI.Hooks.useDialogDetailsAction)

local DialogAction = require(Framework.Util.DialogAction)

local useDialog = require(script.Parent)

local DETAILS = [[
You'll permanently lose:
- ServerScriptService.ImportantScript
- ServerScriptService.MoreImportantScript
- Workspace.EvenMoreImportantModel]]

local function SaveSequenceStory()
	local detailsAction, withDetails = useDialogDetailsAction(DETAILS)

	local showAreYouSure = useDialog({
		Intent = "Destructive",

		Heading = "Are you sure?",
		Body = "You cannot undo this action.",
		Contents = withDetails(),

		ActionPrimary = DialogAction.YES,
		ActionSecondary = DialogAction.NO,
		ActionTertiary = detailsAction,

		Modal = true,
	})

	local showSave = useDialog({
		Intent = "Confirmation",

		Heading = "Success!",
		Body = 'Experience "Dialog Simulator" was saved. You may now exit Roblox Studio.',

		ActionPrimary = DialogAction.OK,
		ActionSecondary = DialogAction.CANCEL,

		Modal = true,
	})

	local showBeforeExit = useDialog({
		Intent = "Warning",

		Heading = "You have unsaved changes.",
		Body = "Would you like to save before exiting Roblox Studio?",

		ActionPrimary = Dash.join(DialogAction.SAVE, { OnActivated = showSave }),
		ActionSecondary = Dash.join(DialogAction.NO, { OnActivated = showAreYouSure }),
		ActionTertiary = DialogAction.CANCEL,

		Modal = true,
	})

	return React.createElement(IconButton, {
		OnClick = showBeforeExit,
		Text = "QUIT STUDIO WITHOUT SAVING 😱",
	})
end

return {
	story = React.createElement(SaveSequenceStory),
}
