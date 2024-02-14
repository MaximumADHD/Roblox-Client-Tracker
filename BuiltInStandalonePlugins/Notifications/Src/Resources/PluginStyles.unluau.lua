-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.Styling.createStyleRule
local var31 = var0.Src.Resources
local var4 = {}
var31 = var2
local var40 = {}
local var41 = "$SecondaryHoverBackground"
var40.BackgroundColor3 = var41
local var42 = var2(":hover", var40)
local var43 = var31(".Plugin-NotificationCard-Hover", {}, {})
local var46 = {}
var46.Image = "$NotificationStatusDisabledIcon"
local var48 = var2(".Plugin-Icon-StatusDisabled", var46)
local var51 = {}
var51.Image = "$NotificationStatusUnreadIcon"
local var53 = var2(".Plugin-Icon-StatusUnread", var51)
var48 = require(var31.NotificationLuaIcons)
local var55 = ipairs(var48)
local var9 = var4
var41 = var2
local var62 = {}
var62.Image = `$%*Icon`
local var10 = var41(`.Plugin-Icon-%*`, var62)
table.insert()
var55 = var1.Styling.createStyleSheet
var53 = var4
return var55("NotificationsPlugin", var53)
