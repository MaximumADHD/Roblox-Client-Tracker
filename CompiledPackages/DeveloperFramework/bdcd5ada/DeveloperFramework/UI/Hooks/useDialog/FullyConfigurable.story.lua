--!strict

local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Util.React)
local Dash = require(Framework.Parent.Dash)

local Components = Framework.UI.Components
local IconButton = require(Components.IconButton)
local SelectInput = require(Components.SelectInput)

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

local ALL_ACTIONS = {
	{
		name = "None",
	},
	{
		name = "Yes",
		action = DialogAction.YES,
	},
	{
		name = "No",
		action = DialogAction.NO,
	},
	{
		name = "OK",
		action = DialogAction.OK,
	},
	{
		name = "Cancel",
		action = DialogAction.CANCEL,
	},
	{
		name = "Close",
		action = DialogAction.CLOSE,
	},
	{
		name = "Save",
		action = DialogAction.SAVE,
	},
	{
		name = "ShowDetails",
	},
} :: { { name: string, action: DialogAction.Type? } }
local ALL_ACTION_NAMES = {}
for _, action in ALL_ACTIONS do
	table.insert(ALL_ACTION_NAMES, action.name)
end

local function Toggle(value: boolean, setter: (boolean) -> (), onText: string, offText: string)
	return React.createElement(IconButton, {
		OnClick = function()
			setter(not value)
		end,
		Text = if value then onText else offText,
	})
end

local function Dropdown(items: { any }, index: number, indexSetter: (number) -> ())
	return React.createElement(SelectInput, {
		Items = items,
		OnItemActivated = function(_, idx)
			indexSetter(idx)
		end,
		SelectedIndex = index,
	})
end

local function SettingsRow(label: string, children: { any })
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		[React.Tag] = "X-RowM X-FitY X-Middle",
	}, {
		Label = React.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.SourceSans,
			LayoutOrder = 1,
			Text = label,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 16,
			[React.Tag] = "X-Fit",
		}),
		Content = React.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			[React.Tag] = "X-RowM X-Fit X-Middle",
		}, children),
	})
end

local function getAction(index: number, enabled: boolean, detailsAction: DialogAction.Type): DialogAction.Type?
	local actionInfo = ALL_ACTIONS[index]
	if actionInfo.action then
		return Dash.join(actionInfo.action, { Enabled = enabled })
	end
	if actionInfo.name == "ShowDetails" then
		return Dash.join(detailsAction, { Enabled = enabled })
	end
	return nil
end

local function FullyConfigurableStory()
	local intentIdx, setIntentIdx = React.useState(1)
	local modal, setModal = React.useState(false)

	local primaryIdx, setPrimaryIdx = React.useState(2)
	local primaryEnabled, setPrimaryEnabled = React.useState(true)
	local secondaryIdx, setSecondaryIdx = React.useState(1)
	local secondaryEnabled, setSecondaryEnabled = React.useState(true)
	local tertiaryIdx, setTertiaryIdx = React.useState(1)
	local tertiaryEnabled, setTertiaryEnabled = React.useState(true)

	local detailsAction, withDetails =
		useDialogDetailsAction("Here are the details:\n- This is a detail\n- You rock!\n- Have a nice day!")

	local show, hide, visible = useDialog({
		Intent = ALL_INTENTS[intentIdx],

		Heading = "Are you sure you want to quit Roblox Studio?",
		Body = "The details will be shown here. The details will be shown here.",
		Contents = withDetails(),

		ActionPrimary = getAction(primaryIdx, primaryEnabled, detailsAction),
		ActionSecondary = getAction(secondaryIdx, secondaryEnabled, detailsAction),
		ActionTertiary = getAction(tertiaryIdx, tertiaryEnabled, detailsAction),

		Modal = modal,
		Title = "Dialog Story",
	})

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		[React.Tag] = "X-ColumnM X-Fit",
	}, {
		React.createElement(IconButton, {
			OnClick = function()
				if visible then
					hide()
				else
					show()
				end
			end,
			Text = `{if visible then "Hide" else "Show"} Dialog`,
		}),
		SettingsRow("Intent", {
			Dropdown(ALL_INTENTS, intentIdx, setIntentIdx),
		}),
		SettingsRow("Primary Action", {
			Dropdown(ALL_ACTION_NAMES, primaryIdx, setPrimaryIdx),
			Toggle(primaryEnabled, setPrimaryEnabled, "Enabled", "Disabled"),
		}),
		SettingsRow("Secondary Action", {
			Dropdown(ALL_ACTION_NAMES, secondaryIdx, setSecondaryIdx),
			Toggle(secondaryEnabled, setSecondaryEnabled, "Enabled", "Disabled"),
		}),
		SettingsRow("Tertiary Action", {
			Dropdown(ALL_ACTION_NAMES, tertiaryIdx, setTertiaryIdx),
			Toggle(tertiaryEnabled, setTertiaryEnabled, "Enabled", "Disabled"),
		}),
		Toggle(modal, setModal, "Modal: ON", "Modal: OFF"),
	})
end

return {
	story = React.createElement(FullyConfigurableStory),
}
