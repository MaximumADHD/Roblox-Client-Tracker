-- singleton (can't be undone/redone)

local FastFlags = require(script.Parent.Parent.FastFlags)

local ShowContextMenu = {}

ShowContextMenu.Type = {
	Help="articles/using-animation-editor",
}

function ShowContextMenu:execute(Paths, helpType)
	Paths.Globals.Plugin:OpenWikiPage(helpType)
end

return ShowContextMenu
