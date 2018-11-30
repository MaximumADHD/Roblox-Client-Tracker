-- singleton (can't be undone/redone)

local FastFlags = require(script.Parent.Parent.FastFlags)

local ShowContextMenu = {}
if FastFlags:isUseDevHubHelpLinksOn() then
ShowContextMenu.Type = {
	Help="articles/using-animationeditorluawidgets-in-roblox-studio", 
	EditHelp="articles/using-animationeditorluawidgets-in-roblox-studio#Edit_Menu", 
	SettingsHelp="articles/using-animationeditorluawidgets-in-roblox-studio#Settings_Menu"
}
else
ShowContextMenu.Type = {
	Help="AnimationEditorLuaWidgets", 
	EditHelp="AnimationEditorLuaWidgets#Edit_Menu", 
	SettingsHelp="AnimationEditorLuaWidgets#Settings_Menu"
}
end

function ShowContextMenu:execute(Paths, helpType)
	Paths.Globals.Plugin:OpenWikiPage(helpType)
end

return ShowContextMenu
