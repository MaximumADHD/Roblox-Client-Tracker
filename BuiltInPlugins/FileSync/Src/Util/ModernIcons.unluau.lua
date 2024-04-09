-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var39 = {}
var39.Export = "Export"
var39.Import = "Import"
var39.Info = "Info"
var39.Open = "Open"
var39.Recent = "Recent"
var39.ServerScriptService = "ServerScriptService"
var39.UptoDate = "Success"
var39.Warning = "Warning"
var39.Notification = "NotificationBadgeUnread"
var0.IconEnums = var39
var0.IconEnums.Export = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/" ... var0.IconEnums.Export ... ".png"
var0.IconEnums.Info = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/" ... var0.IconEnums.Info ... ".png"
var0.IconEnums.Import = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/" ... var0.IconEnums.Import ... ".png"
var0.IconEnums.Recent = "rbxasset://studio_svg_textures/Shared/Utility/%s/Standard/" ... var0.IconEnums.Recent ... ".png"
var0.IconEnums.Open = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/" ... var0.IconEnums.Open ... ".png"
var0.IconEnums.Info = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/" ... var0.IconEnums.Info ... ".png"
var0.IconEnums.ServerScriptService = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/" ... var0.IconEnums.ServerScriptService ... ".png"
var0.IconEnums.UptoDate = "rbxasset://studio_svg_textures/Shared/Alerts/%s/Standard/" ... var0.IconEnums.UptoDate ... ".png"
var0.IconEnums.Warning = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Large/" ... var0.IconEnums.Warning ... ".png"
var0.IconEnums.Notification = "rbxasset://studio_svg_textures/Lua/FileSync/%s/Standard/" ... var0.IconEnums.Notification ... ".png"
var0.FileSyncIcons = {}
function var0.getIconForCurrentTheme(arg1)
   return string.format(var0.FileSyncIcons[arg1], settings().Studio.Theme.Name)
end

return var0
