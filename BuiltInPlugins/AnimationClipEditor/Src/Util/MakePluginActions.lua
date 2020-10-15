--[[
	Creates the actions used by the plugin.
]]

local ACTION_KEYS = {
	-- Keyframe manipulation
	"CopySelected",
	"CutSelected",
	"DeleteSelected",
	"DeleteSelectedBackspace",
	"ResetSelected",
	"AddKeyframeHere",
	"AddResetKeyframe",
	"AddKeyframeAtScrubber",
	"PasteKeyframes",
	"SelectAll",
	"DeselectAll",
	"RenameKeyframe",
	"ChangeDuration",

	-- Event Manipulation
	"CopyEvents",
	"CutEvents",
	"EditEvents",
	"AddEvent",
	"DeleteEvents",
	"DeleteEventsBackspace",
	"PasteEvents",

	-- Track manipulation
	"DeleteTrack",
	"AddKeyframe",

	-- History
	"Undo",
	"Redo",

	-- IK
	"DisableIK",

	-- Other Events
	"TogglePlay",
	"ToggleTool",

	-- Bones
	"ToggleBoneVis",
}

local function makeAction(plugin, localization, key)
	local action = plugin:CreatePluginAction("AnimationClipEditor_" .. key,
		localization:getText("ContextMenu", key), "", "", false)
	action.Enabled = false
	return action
end

return function(plugin, localization)
	local actions = {}
	for _, key in ipairs(ACTION_KEYS) do
		actions[key] = makeAction(plugin, localization, key)
	end

	actions.CopySelected.DefaultShortcut = "Ctrl+C"
	actions.CutSelected.DefaultShortcut = "Ctrl+X"
	actions.DeleteSelected.DefaultShortcut = "Delete"
	actions.DeleteSelectedBackspace.DefaultShortcut = "Backspace"
	actions.PasteKeyframes.DefaultShortcut = "Ctrl+V"
	actions.AddKeyframeAtScrubber.DefaultShortcut = "K"

	actions.CopyEvents.DefaultShortcut = "Ctrl+C"
	actions.CutEvents.DefaultShortcut = "Ctrl+X"
	actions.DeleteEvents.DefaultShortcut = "Delete"
	actions.DeleteEventsBackspace.DefaultShortcut = "Backspace"
	actions.PasteEvents.DefaultShortcut = "Ctrl+V"

	actions.Undo.DefaultShortcut = "Ctrl+Z"
	actions.Redo.DefaultShortcut = "Ctrl+Y"
	actions.SelectAll.DefaultShortcut = "Ctrl+Shift+A"
	actions.DeselectAll.DefaultShortcut = "Ctrl+Shift+A"
	actions.TogglePlay.DefaultShortcut = " "
	actions.ToggleTool.DefaultShortcut = "R"

	actions.ToggleBoneVis.DefaultShortcut = "V"

	return actions
end