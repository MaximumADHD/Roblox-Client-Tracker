--[[
	Creates the actions used by the plugin.
]]

local Plugin = script.Parent.Parent.Parent
local GetFFlagFaceAnimationEditorFocusFaceWithF = require(Plugin.LuaFlags.GetFFlagFaceAnimationEditorFocusFaceWithF)

local ACTION_KEYS = {
	-- Keyframe manipulation
	"CopySelected",
	"CutSelected",
	"DeleteSelected",
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
	"PasteEvents",

	-- Track manipulation
	"DeleteTrack",
	"ClearTrack",
	"AddKeyframe",
	"ConvertToEulerAngles",

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

	-- Curve Editor
	"ClearBothTangents",
	"ZeroBothTangents",
	"ClearTangent",
	"ZeroTangent",
	"ResizeCanvas",
}

if GetFFlagFaceAnimationEditorFocusFaceWithF() then
	table.insert(ACTION_KEYS, "FocusCamera")
end

local function makeAction(plugin, localization, key)
	return {
		id = key,
		text = localization:getText("ContextMenu", key),
		allowBinding = false,
	}
end

return function(plugin, localization)
	local actions = {}
	for _, key in ipairs(ACTION_KEYS) do
		actions[key] = makeAction(plugin, localization, key)
	end

	actions.CopySelected.defaultShortcut = "Ctrl+C"
	actions.CutSelected.defaultShortcut = "Ctrl+X"
	actions.DeleteSelected.defaultShortcut = "Delete"
	actions.PasteKeyframes.defaultShortcut = "Ctrl+V"
	actions.AddKeyframeAtScrubber.defaultShortcut = "K"

	actions.CopyEvents.defaultShortcut = "Ctrl+C"
	actions.CutEvents.defaultShortcut = "Ctrl+X"
	actions.DeleteEvents.defaultShortcut = "Delete"
	actions.PasteEvents.defaultShortcut = "Ctrl+V"

	actions.Undo.defaultShortcut = "Ctrl+Z"
	actions.Redo.defaultShortcut = "Ctrl+Y"
	actions.SelectAll.defaultShortcut = "Ctrl+Shift+A"
	actions.DeselectAll.defaultShortcut = "Ctrl+Shift+A"
	actions.TogglePlay.defaultShortcut = " "
	actions.ToggleTool.defaultShortcut = "R"

	actions.ToggleBoneVis.defaultShortcut = "V"

	if GetFFlagFaceAnimationEditorFocusFaceWithF() then
		actions.FocusCamera.defaultShortcut = "F"
	end

	actions.ResizeCanvas.defaultShortcut = "H"

	return actions
end
