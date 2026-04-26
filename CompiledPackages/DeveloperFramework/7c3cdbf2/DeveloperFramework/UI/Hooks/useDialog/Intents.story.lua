--!strict

local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)

local Components = Framework.UI.Components
local IconButton = require(Components.IconButton)

local useDialogDetailsAction = require(Framework.UI.Hooks.useDialogDetailsAction)

local DialogAction = require(Framework.Util.DialogAction)

local useDialog = require(script.Parent)

local ALL_INTENTS: { useDialog.Intent } = {
	"Confirmation",
	"Destructive",
	"Error",
	"Information",
	"Question",
	"Warning",
}

local function IntentStory(props: { Intent: useDialog.Intent })
	local detailsAction, withDetails =
		useDialogDetailsAction("Here are the details:\n- This is a detail\n- You rock!\n- Have a nice day!")

	local show = useDialog({
		Intent = props.Intent,

		Heading = "Are you sure you want to quit Roblox Studio?",
		Body = "The details will be shown here. The details will be shown here.",
		Contents = withDetails(),

		ActionPrimary = DialogAction.OK,
		ActionSecondary = DialogAction.CANCEL,
		ActionTertiary = detailsAction,

		Title = props.Intent,
	})

	return React.createElement(IconButton, {
		OnClick = show,
		Text = "Show Dialog",
	})
end

local stories = {}
-- Luau: intent has type string | string | ..., so we need to cast here
for _, intent: useDialog.Intent in ALL_INTENTS do
	table.insert(stories, {
		name = intent,
		story = React.createElement(IntentStory, {
			Intent = intent,
		}),
	})
end

return {
	stories = stories,
}
