-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = {}
var1.NotificationScrollBarColor = Color3.fromHex("#939393")
var1.NotificationStatusDisabledIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Dark/Standard/NotificationBadgeDisabled.png"
var1.NotificationStatusUnreadIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Dark/Standard/NotificationBadgeUnread.png"
var1.NotificationEmptyTrayIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Dark/SI-Standard/Celebration.png"
var1.NotificationErrorIcon = "rbxasset://studio_svg_textures/Lua/Notifications/Dark/SI-Standard/Oof.png"
local var133 = ipairs(require(var0.Src.Resources.NotificationLuaIcons))
local var3 = `{var135}`
var3 = `rbxasset://studio_svg_textures/Lua/Notifications/Dark/Large/%*.png`
var3 = var3
var133 = require(var0.Packages.Framework).Styling.createStyleSheet
return var133("NotificationsPluginDarkTheme", {}, var1)
