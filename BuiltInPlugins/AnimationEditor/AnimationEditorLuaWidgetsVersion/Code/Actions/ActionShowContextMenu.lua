-- singleton (can't be undone/redone)

local FastFlags = require(script.Parent.Parent.FastFlags)

local ShowContextMenu = {}

if FastFlags:isNewWikiDocumentationFlagOn() then
ShowContextMenu.Type = {
	Help="AnimationEditorLuaWidgets", 
	EditHelp="AnimationEditorLuaWidgets#Edit_Menu", 
	SettingsHelp="AnimationEditorLuaWidgets#Settings_Menu"
}
else
ShowContextMenu.Type = {
	Help="Animations", 
	EditHelp="Animations#Edit_Menu", 
	SettingsHelp="Animations#Settings_Menu"
}
end

function ShowContextMenu:execute(Paths, helpType)
	Paths.Globals.Plugin:OpenWikiPage(helpType)
end

return ShowContextMenu
