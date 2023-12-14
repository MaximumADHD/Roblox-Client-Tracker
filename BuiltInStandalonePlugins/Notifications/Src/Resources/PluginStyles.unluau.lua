-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.Styling.createStyleRule
local var14 = var0.Src.Resources
local var4 = {}
var14 = var2
local var23 = {}
local var24 = "$SecondaryHoverBackground"
var23.BackgroundColor3 = var24
local var25 = var2(":hover", var23)
local var26 = var14(".Plugin-NotificationCard-Hover", {}, {})
local var29 = {}
var29.Image = "$NotificationStatusDisabledIcon"
local var31 = var2(".Plugin-Icon-StatusDisabled", var29)
local var34 = {}
var34.Image = "$NotificationStatusUnreadIcon"
local var36 = var2(".Plugin-Icon-StatusUnread", var34)
var31 = require(var14.NotificationLuaIcons)
local var38 = ipairs(var31)
local var9 = var4
var24 = var2
local var45 = {}
var45.Image = `$%*Icon`
local var10 = var24(`.Plugin-Icon-%*`, var45)
table.insert()
var38 = var1.Styling.createStyleSheet
var36 = var4
return var38("NotificationsPlugin", var36)
