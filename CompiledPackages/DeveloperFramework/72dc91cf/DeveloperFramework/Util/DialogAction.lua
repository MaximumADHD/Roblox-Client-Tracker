--[[
    DialogAction.Type describes a type for actions passed to useDialog.
	Properties:
		Label: string | translation string ID table
			Translation string ID table has these props:
				Project: (string, optional) project segment of translation
					string ID
				Scope: (string) scope segment of translation string ID
				Key: (string) key segment of translation string ID
		Enabled: boolean (optional, default true)
			Whether the action is enabled; disabled actions are unclickable and
			appear in half opacity
		HidesDialog: boolean (optional, default false)
			Whether the action hides the dialog upon being clicked
		OnActivated: () -> () (optional, default no-op)
			Callback fired when the action is clicked

    This module also exports common actions used across dialogs, using
	pre-defined translation strings.
	You can augment these actions by `join`ing them with more properties.
	For example, if you wanted to add a callback to Action.YES, you can do:
		join(DialogAction.YES, { OnActivated = function() ... end })

    Each of these actions hides the dialog upon activation by default.
	If you want to disable that, you can do:
		join(DialogAction.YES, { HidesDialog = false })

	Common actions supported:
		YES: "Yes"
		NO: "No"
		OK: "OK"
		CANCEL: "Cancel"
		CLOSE: "Close"
		SAVE: "Save"
]]
--!strict

local Framework = script:FindFirstAncestor("Util").Parent
local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

export type Label = string | {
	Project: string?,
	Scope: string,
	Key: string,
}

export type Type = {
	Label: Label,
	Enabled: boolean?, -- Default: true
	HidesDialog: boolean?, -- Default: false
	OnActivated: () -> ()?, -- Default: no-op
}

local function createStandardAction(key: string): Type
	return table.freeze({
		Label = {
			Project = LOCALIZATION_PROJECT_NAME,
			Scope = "DialogAction",
			Key = key,
		},
		HidesDialog = true,
	})
end

return {
	YES = createStandardAction("Yes"),
	NO = createStandardAction("No"),
	OK = createStandardAction("OK"),
	CANCEL = createStandardAction("Cancel"),
	CLOSE = createStandardAction("Close"),
	SAVE = createStandardAction("Save"),
}
