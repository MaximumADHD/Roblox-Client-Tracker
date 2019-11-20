-- singleton (can't be undone/redone)

local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local FastFlags = require(script.Parent.Parent.FastFlags)

local ShowContextMenu = {}

ShowContextMenu.Type = {
	Help="articles/using-animation-editor",
}

function ShowContextMenu:execute(Paths, helpType)
    if settings():GetFFlag("UseNewDocumentationUrls") then
        GuiService:OpenBrowserWindow(HttpRbxApiService:GetDocumentationUrl(helpType))
    else
        Paths.Globals.Plugin:OpenWikiPage(helpType)
    end
end

return ShowContextMenu
