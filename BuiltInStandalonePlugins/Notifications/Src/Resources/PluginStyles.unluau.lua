-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.Styling.createStyleRule
local var14 = var0.Src.Resources
local var4 = {}
var14 = var2
local var19 = {}
var19.BackgroundColor3 = "$ForegroundMain"
local var24 = {}
var24.BackgroundColor3 = "$ActionHover"
local var26 = var2(":hover", var24)
local var29 = {}
local var30 = "$ActionActivated"
var29.BackgroundColor3 = var30
local var31 = var2(":pressed", var29)
local var32 = var14(".Plugin-NotificationCard-Hover", var19, {})
local var35 = {}
var35.BackgroundColor3 = "$ForegroundMain"
local var37 = var2(".Plugin-NotificationCard-HoverDisabled", var35)
local var40 = {}
var40.Image = "$NotificationStatusDisabledIcon"
local var42 = var2(".Plugin-Icon-StatusDisabled", var40)
local var45 = {}
local var9 = "$NotificationStatusUnreadIcon"
var45.Image = var9
local var10 = var2(".Plugin-Icon-StatusUnread", var45)
var37 = require(var14.NotificationLuaIcons)
local var49 = ipairs(var37)
var9 = var4
var30 = `.Plugin-Icon-%*`
local var55 = {}
var55.Image = `$%*Icon`
local var12 = var2(var30, var55)
table.insert()
var49 = var1.Styling.createStyleSheet
var42 = var4
return var49("NotificationsPlugin", var42)
