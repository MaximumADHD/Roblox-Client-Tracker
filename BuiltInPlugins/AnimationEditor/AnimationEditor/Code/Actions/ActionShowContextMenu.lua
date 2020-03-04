-- singleton (can't be undone/redone)

local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local FastFlags = require(script.Parent.Parent.FastFlags)

local ShowContextMenu = {}

ShowContextMenu.Type = {
	Help="articles/using-animation-editor",
}

function ShowContextMenu:execute(Paths, helpType)
    GuiService:OpenBrowserWindow(HttpRbxApiService:GetDocumentationUrl(helpType))
end

return ShowContextMenu
