-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = {}
var1.NotificationScrollBarColor = Color3.fromHex("#565656")
var1.NotificationStatusDisabledIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeDisabled.png"
var1.NotificationStatusUnreadIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeUnread.png"
var1.NotificationEmptyTrayIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Celebration.png"
var1.NotificationErrorIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Oof.png"
local var25 = ipairs(require(var0.Src.Resources.NotificationLuaIcons))
local var3 = `{var27}`
var3 = `rbxasset://studio_svg_textures/Lua/Notifications/Light/Large/%*.png`
var3 = var3
var25 = require(var0.Packages.Framework).Styling.createStyleSheet
return var25("NotificationsPluginLightTheme", {}, var1)
